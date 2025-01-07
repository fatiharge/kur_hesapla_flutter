import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kur_hesapla/generated/locale_keys.g.dart';
import 'package:uikit/utility/constant/padding/extension/padding_extension.dart';
import 'package:uikit/utility/extension/context_extension.dart';
import 'package:uikit/utility/extension/spacer_extension.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class DisclaimerPage extends StatelessWidget {
  const DisclaimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.disclaimer_title.tr()),
      ),
      body: SingleChildScrollView(
        padding: context.pagePadding.medium.paddingAll,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              LocaleKeys.disclaimer_content_intro.tr(),
              style: context.textTheme.titleLarge,
            ),
            context.itemPadding.medium.spacer,
            const Divider(),
            context.itemPadding.medium.spacer,
            Text(
              LocaleKeys.disclaimer_content_point1.tr(),
              style: context.textTheme.bodyMedium,
            ),
            context.itemPadding.medium.spacer,
            Text(
              LocaleKeys.disclaimer_content_point2.tr(),
              style: context.textTheme.bodyMedium,
            ),
            context.itemPadding.medium.spacer,
            Text(
              LocaleKeys.disclaimer_content_point3.tr(),
              style: context.textTheme.bodyMedium,
            ),
            context.itemPadding.medium.spacer,
            Text(
              LocaleKeys.disclaimer_content_point4.tr(),
              style: context.textTheme.bodyMedium,
            ),
            context.itemPadding.large.spacer,
            const Divider(),
            context.itemPadding.medium.spacer,
            Text(
              LocaleKeys.disclaimer_content_footer.tr(),
              style: context.textTheme.bodyLarge,
            ),
            context.itemPadding.medium.spacer,
            const Divider(),
            context.itemPadding.medium.spacer,
            TextButton.icon(
              onPressed: _launchEmail,
              icon: const Icon(Icons.email),
              label: Text(
                LocaleKeys.disclaimer_contact_us.tr(),
              ),
            ),
            context.itemPadding.medium.spacer,
            Text(
              ' · $_mail',
              style: context.textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }

  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map(
          (MapEntry<String, String> e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}',
        )
        .join('&');
  }

  Future<void> _launchEmail() async {
    final emailLaunchUri = Uri(
      scheme: 'mailto',
      path: _mail,
      query: encodeQueryParameters(<String, String>{
        'subject': LocaleKeys.disclaimer_mail_subject.tr(),
      }),
    );

    await launchUrl(emailLaunchUri);
  }

  String get _mail => 'fatih@fatiharge.com';
}
