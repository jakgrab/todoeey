import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../common/constants/app_colors.dart';
import '../../../../common/extensions/date_time/date_time_extension.dart';
import '../../../../common/text_styles/todoeey_text_styles.dart';
import '../../../../models/note/note.dart';
import '../cubit/dashboard_cubit.dart';

class NoteItem extends HookWidget {
  const NoteItem({
    super.key,
    required this.note,
  });

  final Note note;

  @override
  Widget build(BuildContext context) {
    final isComplete = useState(note.isComplete);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.secondaryGrey,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                splashColor: Colors.transparent,
                onTap: () {
                  isComplete.value = !isComplete.value;

                  context
                      .read<DashboardCubit>()
                      .updateNote(note.copyWith(isComplete: isComplete.value));
                },
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor:
                      isComplete.value ? AppColors.primaryBlue : AppColors.tertriaryCream,
                  child: Icon(
                    Icons.check,
                    color: isComplete.value ? AppColors.tertriaryCream : AppColors.secondaryGrey,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      note.date?.getTime ?? '',
                      style: TodoeeyTextStyle.description(color: AppColors.textGrey),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      note.title,
                      style: TodoeeyTextStyle.h3(),
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      note.description,
                      style: TodoeeyTextStyle.description(color: AppColors.textGrey),
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
