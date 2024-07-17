import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CreateClubScreen extends StatefulWidget {
  const CreateClubScreen({super.key});

  @override
  State<CreateClubScreen> createState() => _CreateClubScreenState();
}

class _CreateClubScreenState extends State<CreateClubScreen> {
  late TextEditingController _nameController;
  late TextEditingController _descriptionController;

  late FocusNode _nameFocusNode;
  late FocusNode _descriptionFocusNode;
  late GlobalKey<FormState> _formKey;

  @override
  void initState() {
    _nameController = TextEditingController();
    _descriptionController = TextEditingController();

    _nameFocusNode = FocusNode();
    _descriptionFocusNode = FocusNode();

    _formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();

    _nameFocusNode.dispose();
    _descriptionFocusNode.dispose();

    _formKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final msg = Strings.of(context);
    return Parent(
      appBar: AppBar(
        title: const Text('Create Club'),
      ),
      body: BlocListener<ClubCubit, ClubState>(
        listener: (context, state) {
          if (state.state == BaseState.failure) {
            (msg?.failedCreateClub ?? 'Failed create club')
                .toToastError(context);
          }
          if (state.state == BaseState.success) {
            (msg?.successCreateClub ?? 'Success create club')
                .toToastSuccess(context);
            context.pop();
          }
        },
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                EightContainer(
                  child: Column(
                    children: [
                      TextF(
                        key: const Key('createClubForm_name'),
                        currFocusNode: _nameFocusNode,
                        nextFocusNode: _descriptionFocusNode,
                        controller: _nameController,
                        textInputAction: TextInputAction.next,
                        prefixIcon: Icon(
                          Icons.sports_soccer,
                          color: theme.textTheme.bodyLarge?.color,
                        ),
                        hintText: msg?.enterClubName,
                        hint: msg?.clubName,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return msg?.clubNameRequired;
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 8.h),
                      TextF(
                        key: const Key('createClubForm_description'),
                        currFocusNode: _descriptionFocusNode,
                        controller: _descriptionController,
                        textInputAction: TextInputAction.done,
                        prefixIcon: Icon(
                          Icons.description_outlined,
                          color: theme.textTheme.bodyLarge?.color,
                        ),
                        hintText: msg?.enterClubDescription,
                        hint: msg?.clubDescription,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return msg?.clubDescriptionRequired;
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Button(
                    text: msg?.createClub ?? 'Create Club',
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        context.read<ClubCubit>().create(
                              CreateClubParams(
                                name: _nameController.text,
                                description: _descriptionController.text,
                              ),
                            );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
