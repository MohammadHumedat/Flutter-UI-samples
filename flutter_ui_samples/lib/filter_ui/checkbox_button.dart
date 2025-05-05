import 'package:flutter/material.dart';

class CheckboxButton extends StatefulWidget {
  const CheckboxButton({super.key});

  @override
  State<CheckboxButton> createState() => _CheckboxButtonState();
}

class _CheckboxButtonState extends State<CheckboxButton> {
  bool isSharedChecked = false;
  bool isAppliedChecked = false;
  bool isSavedChecked = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Checkbox(
                value: isSharedChecked,
                onChanged: (bool? newValue) {
                  setState(() {
                    isSharedChecked = newValue!;
                  });
                },
              ),
              const Text('Jobs shared with me'),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Checkbox(
                value: isAppliedChecked,
                onChanged: (bool? newValue) {
                  setState(() {
                    isAppliedChecked = newValue!;
                  });
                },
              ),
              const Text('Jobs I applied to'),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Checkbox(
                value: isSavedChecked,
                onChanged: (bool? newValue) {
                  setState(() {
                    isSavedChecked = newValue!;
                  });
                },
              ),
              const Text('Jobs I saved'),
            ],
          ),
        ],
      ),
    );
  }
}
