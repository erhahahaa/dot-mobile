import 'package:dot_coaching/core/widgets/widgets.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:moon_design/moon_design.dart';

class FormCombobox<T> extends StatefulWidget {
  final List<ComboboxItem<T>> items;
  final TextEditingController controller;
  final FocusNode currentFocus;
  final FocusNode? nextFocus;
  final void Function(T? value)? onChanged;
  final String? hintText;
  final String? Function(String? value)? validator;
  final Widget? leading;
  final Color? backgroundColor;
  final TextInputAction? textInputAction;

  const FormCombobox({
    super.key,
    required this.items,
    this.onChanged,
    required this.controller,
    required this.currentFocus,
    this.nextFocus,
    this.hintText,
    this.validator,
    this.leading,
    this.backgroundColor,
    this.textInputAction,
  });

  @override
  State<FormCombobox<T>> createState() => _FormComboboxState();
}

class _FormComboboxState<T> extends State<FormCombobox<T>> {
  List<ComboboxItem<T>> _filteredItems = [];
  ComboboxItem<T>? _selectedOption;
  bool _showCombobox = false;

  bool get _optionIsSelected => _selectedOption != null;

  String get _inputText => widget.controller.text;

  @override
  void initState() {
    super.initState();
    _filteredItems = widget.items;
  }

  @override
  Widget build(BuildContext context) {
    return MoonDropdown(
      show: _showCombobox,
      constrainWidthToChild: true,
      onTapOutside: () => setState(() {
        _showCombobox = false;
        if (!_optionIsSelected) widget.controller.clear();
        widget.currentFocus.unfocus();
      }),
      dropdownMargin: EdgeInsets.zero,
      maxHeight: 100,
      backgroundColor:
          widget.backgroundColor ?? context.theme.colorScheme.surface,
      content: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 100),
        child: _filteredItems.isEmpty
            ? const MoonMenuItem(label: Text('No result found'))
            : ListView.builder(
                shrinkWrap: true,
                itemCount: _filteredItems.length,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  final item = _filteredItems[index];
                  return MoonMenuItem(
                    label: Text(item.label),
                    onTap: () {
                      widget.controller.text = item.label;
                      if (widget.onChanged != null) widget.onChanged!(item.value);
                      setState(() {
                        _selectedOption = item;
                        _showCombobox = false;
                      });
                    },
                  );
                },
              ),
      ),
      child: FormInput(
        currentFocus: widget.currentFocus,
        nextFocus: widget.nextFocus,
        controller: widget.controller,
        leading: widget.leading,
        textInputAction: widget.textInputAction ?? TextInputAction.next,
        onTap: () {
          setState(() {
            _showCombobox = true;
          });
        },
        onTapOutside: (event) {
          if (widget.currentFocus.hasFocus && !_showCombobox) {
            if (!_optionIsSelected) widget.controller.clear();
            widget.currentFocus.unfocus();
          }
        },
        onChanged: (value) {
          setState(() {
            _filteredItems = widget.items.where((element) {
              final item = element.label.toString().toLowerCase();
              final input = _inputText.toLowerCase();
              return item.contains(input);
            }).toList();
          });
        },
        validator: widget.validator,
        hintText: widget.hintText ?? 'Select an option',
        trailing: Row(
          children: [
            if (_optionIsSelected) ...[
              MoonButton.icon(
                buttonSize: MoonButtonSize.xs,
                hoverEffectColor: Colors.transparent,
                onTap: () {
                  widget.controller.clear();
                  if (widget.onChanged != null) widget.onChanged!(null);
                  setState(() {
                    _selectedOption = null;
                  });
                },
                icon: const Icon(MoonIcons.controls_close_16_regular),
              ),
              Gap(4.w),
            ],
            MoonButton.icon(
              buttonSize: MoonButtonSize.xs,
              hoverEffectColor: Colors.transparent,
              onTap: () {
                setState(() {
                  _showCombobox = !_showCombobox;
                  _filteredItems = widget.items;
                });
              },
              icon: AnimatedRotation(
                duration: const Duration(milliseconds: 200),
                turns: _showCombobox ? 0.5 : 0,
                child: const Icon(MoonIcons.controls_chevron_down_16_regular),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ComboboxItem<T> {
  final T value;
  final String label;

  const ComboboxItem({
    required this.value,
    required this.label,
  });
}
