import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ClubFormScreen extends StatefulWidget {
  final ClubModel? club;
  const ClubFormScreen({
    super.key,
    this.club,
  });

  @override
  State<ClubFormScreen> createState() => _ClubFormScreenState();
}

class _ClubFormScreenState extends State<ClubFormScreen> {
  late TextEditingController _nameController;
  late TextEditingController _descriptionController;

  late FocusNode _nameFocusNode;
  late FocusNode _descriptionFocusNode;
  late GlobalKey<FormState> _formKey;

  SportType selectedSportType = SportType.basketBall;
  late List<DropdownMenuItem<SportType>> sportType;

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
  void didChangeDependencies() {
    sportType = SportType.values
        .map(
          (item) => DropdownMenuItem<SportType>(
            value: item,
            child: Text(
              item.name,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        )
        .toList();
    super.didChangeDependencies();
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
                Container(
                  padding: EdgeInsets.all(8.w),
                  margin: EdgeInsets.all(8.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: Theme.of(context)
                        .colorScheme
                        .primaryContainer
                        .withOpacity(0.1),
                  ),
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
                      SizedBox(height: 8.h),
                      DropDown<SportType>(
                        hint: msg?.sportType,
                        value: SportType.basketBall,
                        items: sportType.toList(),
                        prefixIcon: Icon(
                          Icons.sports_basketball,
                          color: theme.textTheme.bodyLarge?.color,
                        ),
                        onChanged: (value) => setState(() {
                          if (value == null) {
                            return;
                          }
                          selectedSportType = value;
                        }),
                      )
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
                                type: selectedSportType,
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
