import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'custom_snack_bar.dart';

Future<void> launchCustomUrl(BuildContext context, String? url) async {
  print('Trying to launch URL: $url');
  if (url == null || url.trim().isEmpty) {
    customSnackBar(context, 'No valid URL provided ❌');
    return;
  }

  try {
    final Uri uri = Uri.parse(url.trim());

    if (!uri.hasScheme) {
      customSnackBar(context, 'Invalid URL format ❗');
      return;
    }

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      customSnackBar(context, 'Cannot launch: $url ❌');
    }
  } catch (e) {
    customSnackBar(context, 'Error: ${e.toString()}');
  }
}
