import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
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

class _AddMemberScreenState extends State<AddMemberScreen> {
  ClubModel? club;

  @override
  void initState() {
    super.initState();
    club = context.read<ClubBlocRead>().state.whenOrNull(
          success: (_, __, selectedItem) => selectedItem,
        );
  }

  @override
  Widget build(BuildContext context) {
    return ParentWithSearchAndScrollController(
      builder: (child, search, scroll, showScrollToTopButton) {
        return SafeArea(
          child: Parent(
            appBar: _buildAppBar(context, search),
            body: Padding(
              padding: EdgeInsets.all(8.w),
              child: _buildListUser(search),
            ),
          ),
        );
      },
    );
  }

  Widget _buildListUser(SearchController search) {
    return BlocBuilder<ClubMembersCubit, ClubMembersState>(
      builder: (context, state) {
        if (state.isLoading) {
          return Center(child: MoonCircularLoader());
        }

        if (state.searchResult.isEmpty) {
          return SizedBox(
            height: 50.h,
            child: ErrorAlert('No user with ${search.text} found'),
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
                      title: Text('Add member'),
                      content: Form(
                        key: formkey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                'Do you want to add ${item.name} to the club?'),
                            SizedBox(height: 12.h),
                            FormLabel('Select role'),
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
                                  return 'Please select a role';
                                }
                              },
                              hintText: 'Select a role',
                            )
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            if (formkey.currentState?.validate() ?? false) {
                              context.read<ClubMembersCubit>().addMember(
                                    clubId: club!.id,
                                    userId: item.id,
                                    role: role,
                                  );
                              Navigator.pop(ctx);
                            }
                          },
                          child: Text('Yes'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(ctx);
                          },
                          child: Text('No'),
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
      preferredSize: Size.fromHeight(50),
      child: AppBar(
        title: MySearchBar(
          onChanged: (String? value) {
            if (value == null) return;
            EasyDebounce.debounce(
              'search',
              Duration(milliseconds: 1000),
              () {
                context.read<ClubMembersCubit>().searchUsers(value);
              },
            );
          },
          controller: search,
          trailing: MoonButton.icon(
            buttonSize: MoonButtonSize.xs,
            icon: const Icon(MoonIcons.controls_close_24_light),
            onTap: () {
              search.clear();
              context.read<ClubMembersCubit>().searchUsers('');
            },
          ),
        ),
      ),
    );
  }
}
