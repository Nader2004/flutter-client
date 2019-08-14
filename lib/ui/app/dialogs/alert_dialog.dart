import 'package:flutter/material.dart';
import 'package:invoiceninja_flutter/ui/app/buttons/elevated_button.dart';
import 'package:invoiceninja_flutter/utils/localization.dart';

class MessageDialog extends StatelessWidget {
  const MessageDialog(this.message);
  final String message;

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalization.of(context);

    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Material(
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  /*
                  Text(localization.anErrorOccurred,
                      style: Theme.of(context).textTheme.title),
                      */
                  SizedBox(height: 20.0),
                  Text(message),
                  SizedBox(height: 40.0),
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    label: localization.dismiss,
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: Container()),
        ],
      ),
    );
  }
}
