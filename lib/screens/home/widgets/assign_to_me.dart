import 'package:blester/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AssignToMe extends StatefulWidget {
  const AssignToMe({
    super.key,
    required this.projectName,
    required this.describeTask,
  });

  final String projectName;
  final String describeTask;

  @override
  _AssignToMeState createState() => _AssignToMeState();
}

class _AssignToMeState extends State<AssignToMe> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: MySizes.sm),
      margin: EdgeInsets.only(bottom: MySizes.sm/2),
      decoration: BoxDecoration(
        border: Border.symmetric(
            horizontal: BorderSide(),
          ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Transform.scale(
                    scale: 0.8, // Mengecilkan ukuran Checkbox
                    child: Checkbox(
                      visualDensity:
                          VisualDensity.compact, // Mengurangi padding internal
                      materialTapTargetSize: MaterialTapTargetSize
                          .shrinkWrap, // Hilangkan area klik tambahan
                      value: isChecked,
                      onChanged: (bool? newValue) {
                        setState(() {
                          isChecked = newValue!;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: MySizes.sm / 2),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: 'Task on ',
                            style: Theme.of(context).textTheme.bodyMedium),
                        TextSpan(
                          text: widget.projectName,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                '2 min ago',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: Colors.grey),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: MySizes.md + 2),
            margin: EdgeInsets.only(left: 14),
            decoration: BoxDecoration(
              border: Border(
                  left: BorderSide(
                      color: Colors.grey.shade300,
                      width: 2)), // Warna border lebih soft
            ),
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              child: Text(
                widget.describeTask,
                key: ValueKey(isChecked), // Membantu animasi perubahan teks
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      decoration: isChecked
                          ? TextDecoration.lineThrough
                          : TextDecoration.none, // Coret jika selesai
                      color: isChecked
                          ? Colors.grey
                          : Colors.black, // Ubah warna teks jika selesai
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
