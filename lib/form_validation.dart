import 'package:dailymood/entries.dart';
import 'package:dailymood/picture_frame.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FormValidation extends StatefulWidget {
  const FormValidation({super.key});

  @override
  State<FormValidation> createState() => _FormValidationState();
}

class _FormValidationState extends State<FormValidation> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            "Last step — Confirmation",
            style: TextStyle(
                color: Theme.of(context).colorScheme.onBackground,
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 10),
          Consumer<NewEntry>(
              builder: (BuildContext context, NewEntry entry, Widget? child) {
            if (entry.image != null) {
              return PictureFrame(pictureModel: FinalEntry.fromNewEntry(entry));
            }
            return const Placeholder(); // This is not supposed to be displayed under normal usage.
          }),
          const SizedBox(height: 10),
          ElevatedButton(
              onPressed: () {
                NewEntry entry = Provider.of<NewEntry>(context, listen: false);
                entry.updateDate(DateTime.now());
                entry.saveEntry();
                Navigator.pop(context);
              },
              child: const Text("Confirm?"))
        ],
      ),
    );
  }
}
