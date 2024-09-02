import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_design/moon_design.dart';

@RoutePage()
class AddMemberScreen extends StatefulWidget implements AutoRouteWrapper {
  const AddMemberScreen({super.key});

  @override
  State<AddMemberScreen> createState() => _AddMemberScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider.value(
      value: context.read<ClubMembersCubit>()..searchUsers(''),
      child: this,
    );
  }
}

class _AddMemberScreenState extends BaseState<AddMemberScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Parent(
        appBar: _buildAppBar(context, searchController),
        body: Padding(
          padding: EdgeInsets.all(8.w),
          child: _buildListUser(),
        ),
      ),
    );
  }

  Widget _buildListUser() {
    return BlocBuilder<ClubMembersCubit, ClubMembersState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: MoonCircularLoader());
        }

        if (state.searchResult.isEmpty) {
          return SizedBox(
            height: 50.h,
            child: ErrorAlert(
              context.str?.userWithNameNotFound(searchController.text),
            ),
          );
        }

        final eligibleUsers = state.searchResult
            .where(
              (e) => !state.members.any((m) => m.id == e.id),
            )
            .toList();

        return ListViewBuilder(
          items: eligibleUsers,
          itemBuilder: (context, index, item) {
            return ListViewBuilderTile(
              imageUrl: item.image,
              titleText: item.name,
              subtitleText: item.username,
              onTap: () {
                UserRole role = UserRole.athlete;
                final controller = TextEditingController(
                  text: role.name,
                );
                final focusNode = FocusNode();
                final formkey = GlobalKey<FormState>();
                showDialog(
                  context: context,
                  builder: (ctx) {
                    return AlertDialog(
                      title: TitleMedium(context.str?.addMember),
                      content: Form(
                        key: formkey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TitleSmall(
                              context.str
                                  ?.wouldYouLikeToAddUsernameMemberToClubName(
                                item.name,
                                context.clubWatch!.name,
                              ),
                            ),
                            SizedBox(height: 12.h),
                            FormLabel(context.str?.role),
                            SizedBox(height: 12.h),
                            FormCombobox<UserRole>(
                              controller: controller,
                              currentFocus: focusNode,
                              items: UserRole.values
                                  .map(
                                    (e) =>
                                        ComboboxItem(value: e, label: e.name),
                                  )
                                  .toList(),
                              onChanged: (value) {
                                if (value == null) return;
                                role = value;
                              },
                              validator: (value) {
                                if (value == null) {
                                  return context.str?.roleIsRequired;
                                }
                                return null;
                              },
                              hintText: context.str?.selectRole,
                            )
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            if (formkey.currentState?.validate() ?? false) {
                              context.read<ClubMembersCubit>().addMember(
                                    clubId: context.clubRead!.id,
                                    userId: item.id,
                                    role: role,
                                  );
                              Navigator.pop(ctx);
                            }
                          },
                          child: Text(context.str?.yes ?? 'Yes'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(ctx);
                          },
                          child: Text(context.str?.no ?? 'No'),
                        ),
                      ],
                    );
                  },
                );
              },
            );
          },
        );
      },
    );
  }

  PreferredSize _buildAppBar(BuildContext context, SearchController search) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(50),
      child: AppBar(
        title: MySearchBar(
          onChanged: (String? value) {
            if (value == null) return;
            EasyDebounce.debounce(
              'search',
              const Duration(milliseconds: 1000),
              () {
                context.read<ClubMembersCubit>().searchUsers(value);
              },
            );
          },
          controller: searchController,
          trailing: MoonButton.icon(
            buttonSize: MoonButtonSize.xs,
            icon: const Icon(MoonIcons.controls_close_24_light),
            onTap: () {
              clearSearch();
              context.read<ClubMembersCubit>().searchUsers('');
            },
          ),
        ),
      ),
    );
  }
}
