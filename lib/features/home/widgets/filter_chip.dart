import 'package:app/constants/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SingleChoiceChipWidget extends StatefulWidget {
  final List<String> options;
  final String initialValue;
  final Function(String) onSelectionChanged;

  const SingleChoiceChipWidget({
    super.key,
    required this.options,
    required this.initialValue,
    required this.onSelectionChanged,
  });

  @override
  _SingleChoiceChipWidgetState createState() => _SingleChoiceChipWidgetState();
}

class _SingleChoiceChipWidgetState extends State<SingleChoiceChipWidget> {
  String _selectedValue = '';

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.sp,
      padding: EdgeInsets.only(left: 24.sp),
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: widget.options.length,
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final option = widget.options[index];
          final bool isSelected = _selectedValue == option;

          return ChoiceChip(
            label: Text(option),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.sp),
            ),
            selected: isSelected,
            selectedColor: kBlue,
            padding: EdgeInsets.symmetric(vertical: 10.sp, horizontal: 10.sp),
            labelStyle: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Colors.white),
            onSelected: (bool selected) {
              setState(() {
                _selectedValue = selected ? option : '';
                widget.onSelectionChanged(_selectedValue);
              });
            },
          );
        },
      ),
    );
  }
}
