import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/app/router.gr.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:moon_design/moon_design.dart';
import 'package:skeletonizer/skeletonizer.dart';

@RoutePage()
class ListExamScreen extends StatefulWidget {
  const ListExamScreen({super.key});

  @override
  State<ListExamScreen> createState() => _ListExamScreenState();
}

class _ListExamScreenState extends BaseState<ListExamScreen> {
  @override
  Widget build(BuildContext context) {
    return Parent(
      appBar: _buildAppBar(),
      floatingActionButton:
          _buildFloatingActionButton(showScrollToTopButton, context),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: RefreshIndicator(
          onRefresh: () async {
            context.read<ExamBlocRead>().add(
                  BlocReadEvent.get(id: context.clubRead?.id),
                );
          },
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                Gap(8.h),
                _buildHeader(context),
                Gap(16.h),
                _buildListExam(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: TitleMedium(context.clubWatch?.name),
    );
  }

  Column _buildFloatingActionButton(
      bool showScrollToTopButton, BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        BackTopButton(
          show: showScrollToTopButton,
          onPressed: scrollToTop,
        ),
        Gap(8.h),
        FloatingActionButton.extended(
          heroTag: 'new_exam_button_$hashCode',
          onPressed: () {
            final examBloc = context.read<ExamBlocRead>();
            examBloc.add(
              BlocReadEvent.select(null),
            );
            final exam = examBloc.state.whenOrNull(
              success: (_, __, selected) => selected,
            );

            if (exam != null) {
              Future.delayed(Durations.medium2, () {
                if (context.mounted) {
                  context.router.push(const UpsertExamRoute());
                }
              });
            } else {
              context.router.push(const UpsertExamRoute());
            }
          },
          icon: const Icon(Icons.add),
          label: Text(context.str?.newExam ?? 'New Exam'),
        ),
      ],
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MySearchBar(
          width: 325.w,
          height: 32.h,
          controller: searchController,
          hintText:
              '${context.str?.search} ${context.str?.exam.toLowerCase()} ...',
          onChanged: (value) {
            if (value == null) return;
            context.read<ExamBlocRead>().add(
                  BlocReadEvent.filter(value),
                );
          },
          trailing: MoonButton.icon(
            buttonSize: MoonButtonSize.xs,
            icon: const Icon(MoonIcons.controls_close_24_light),
            onTap: () {
              clearSearch();
              context.read<ExamBlocRead>().add(
                    const BlocReadEvent.filter(''),
                  );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildListExam(BuildContext context) {
    return BlocBuilder<ExamBlocRead, BlocReadState<ExamModel>>(
      builder: (context, state) {
        return state.maybeWhen(
          success: (_, filteredExams, __) {
            if (filteredExams.isEmpty) {
              return SizedBox(
                height: 400.h,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          context.str?.clubDoesntHaveAnyExam(
                                  context.clubWatch?.name) ??
                              'Exam not found',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Flexible(
                        child: TextButton(
                          style: ButtonStyle(
                            textStyle: WidgetStateProperty.all<TextStyle>(
                              const TextStyle(color: Colors.blue),
                            ),
                          ),
                          onPressed: context.clubRead != null
                              ? () {
                                  context.read<ExamBlocRead>().add(
                                        BlocReadEvent.get(
                                            id: context.clubRead?.id),
                                      );
                                }
                              : null,
                          child: Text(context.str?.reload ?? 'Reload'),
                        ),
                      ),
                      Gap(16.h),
                    ],
                  ),
                ),
              );
            }
            return ListViewBuilder(
              items: filteredExams,
              scrollController: scrollController,
              height: 0.71.sh,
              itemBuilder: (context, index, exam) =>
                  _buildExamItem(context, exam),
            );
          },
          failure: (message) => ErrorAlert(message),
          orElse: () {
            final fakeExams = List.generate(10, (index) => ExamModel.fake());
            return ListViewBuilder(
              scrollController: scrollController,
              height: 0.71.sh,
              items: fakeExams,
              itemBuilder: (context, index, exam) => Skeletonizer(
                child: _buildExamItem(context, exam),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildExamItem(
    BuildContext context,
    ExamModel exam,
  ) {
    void onTap() {
      context.read<ExamBlocRead>().add(
            BlocReadEvent.select(exam),
          );
      context.router.push(DetailExamRoute(id: exam.id));
    }

    return ListViewBuilderTile(
      titleText: exam.title,
      subtitleText: exam.description,
      imageUrl: exam.media?.url,
      onTap: onTap,
      trailing: MoonButton.icon(
        buttonSize: MoonButtonSize.xs,
        icon: const Icon(MoonIcons.controls_chevron_right_24_light),
        onTap: onTap,
      ),
    );
  }
}
