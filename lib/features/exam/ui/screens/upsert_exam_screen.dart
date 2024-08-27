import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/app/di.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/extensions/datetime.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

@RoutePage()
class UpsertExamScreen extends StatefulWidget implements AutoRouteWrapper {
  const UpsertExamScreen({super.key});

  @override
  State<UpsertExamScreen> createState() => _UpsertExamScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider.value(
      value: sl<ExamBlocWrite>(),
      child: this,
    );
  }
}

class _UpsertExamScreenState extends State<UpsertExamScreen> {
  late TextEditingController _titleController;
  late TextEditingController _descriptionController;
  late TextEditingController _dueAtController;

  late FocusNode _titleFocusNode;
  late FocusNode _descriptionFocusNode;
  late FocusNode _dueAtFocusNode;

  late GlobalKey<FormState> _formKey;

  DateTime? _dueAt;

  @override
  void initState() {
    _titleController = TextEditingController();
    _descriptionController = TextEditingController();
    _dueAtController = TextEditingController();

    _titleFocusNode = FocusNode();
    _descriptionFocusNode = FocusNode();
    _dueAtFocusNode = FocusNode();

    _formKey = GlobalKey<FormState>();

    super.initState();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _dueAtController.dispose();

    _titleFocusNode.dispose();
    _descriptionFocusNode.dispose();
    _dueAtFocusNode.dispose();

    _formKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      appBar: AppBar(
        title: const TitleMedium('Exam Form'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.w),
        child: _buildExam(context),
      ),
    );
  }

  Widget _buildExam(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FormLabel(context.str?.examTitle),
            FormInput(
              controller: _titleController,
              currentFocus: _titleFocusNode,
              nextFocus: _descriptionFocusNode,
              textInputAction: TextInputAction.next,
              hintText: context.str?.enterExamTitle,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return context.str?.examTitleRequired;
                }
                return null;
              },
            ),
            Gap(12.h),
            FormLabel(context.str?.description),
            FormInput(
              controller: _descriptionController,
              currentFocus: _descriptionFocusNode,
              nextFocus: _dueAtFocusNode,
              textInputAction: TextInputAction.next,
              hintText: context.str?.enterDescription,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return context.str?.descriptionRequired;
                }
                return null;
              },
            ),
            Gap(12.h),
            FormLabel(context.str?.dueAt),
            FormInput(
              controller: _dueAtController,
              currentFocus: _dueAtFocusNode,
              textInputAction: TextInputAction.done,
              hintText: context.str?.enterDueAt,
              readOnly: true,
              validator: (String? value) {
                if (value == null || value.isEmpty || _dueAt == null) {
                  return context.str?.dueAtRequired ?? 'Start date is required';
                }
                return null;
              },
              onTap: () async {
                final res = await showDatePicker(
                  context: context,
                  firstDate: DateTime(1970),
                  lastDate: DateTime(2030),
                  initialDate: _dueAt,
                );
                if (res != null) {
                  setState(() {
                    _dueAt = res;
                    _dueAtController.text = res.toDayMonthYear();
                  });
                }
              },
            ),
            Gap(12.h),
            BlocConsumer<ExamBlocWrite, BlocStateWrite<ExamModel>>(
              listener: (context, state) {
                state.mapOrNull(
                  success: (club) {
                    context.successToast(
                      title: 'Success',
                      description: 'Exam created successfully',
                    );
                    context.router.back();
                  },
                  failure: (failure) {
                    context.errorToast(
                      title: 'Error',
                      description: failure.message,
                    );
                  },
                );
              },
              builder: (context, state) {
                return FormButton(
                  isLoading: state is BlocStateWriteLoading,
                  text: 'Create Exam',
                  onTap: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      final clubBloc = context.read<ClubBlocRead>();
                      final club = clubBloc.state.whenOrNull(
                        success: (_, __, selectedItem) => selectedItem,
                      );

                      if (club == null) {
                        return context.errorToast(
                          title: 'App state obfuscated',
                          description: 'Please restart the app',
                        );
                      }

                      context.read<ExamBlocWrite>().add(
                            BlocEventWrite.create(
                              CreateExamParams(
                                clubId: club.id,
                                title: _titleController.text,
                                description: _descriptionController.text,
                                dueAt: _dueAt!,
                              ),
                            ),
                          );
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
