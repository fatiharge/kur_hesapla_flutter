import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kur_hesapla/ui/page/home/news/bloc/news_bloc.dart';
import 'package:uikit/utility/constant/padding/extension/padding_extension.dart';
import 'package:uikit/utility/extension/context_extension.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Haberler'),
      ),
      body: BlocBuilder<NewsBloc, NewsState>(
        builder: (context, state) {
          if (state is Loaded) {
            return ListView.builder(
              padding: context.pagePadding.small.paddingSymmetricHorizontal,
              itemCount: state.getNewsList.length,
              itemBuilder: (context, index) {
                final item = state.getNewsList[index];
                if (item.author == null || item.url == null) {
                  return SizedBox.shrink();
                }
                if (index + 1 == state.nextPageTrigger) {
                  context.read<NewsBloc>().add(NewsEvent.nextPage());
                }

                return Padding(
                  padding: context.itemPadding.medium.paddingOnlyBottom,
                  child: InkWell(
                    onTap: () => launchUrl(Uri.parse(item.url!)),
                    child: Card(
                        child: Padding(
                      padding: context.itemPadding.medium.paddingAll,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Card(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: context.itemPadding.small,
                                horizontal: context.itemPadding.medium,
                              ),
                              child: Text(
                                item.name ?? 'unknown',
                                style: context.textTheme.titleSmall?.copyWith(
                                  color:
                                      context.colorScheme.onTertiaryContainer,
                                ),
                              ),
                            ),
                            color: context.colorScheme.tertiaryContainer,
                          ),
                          if (item.urlToImage != null)
                            Padding(
                              padding: context
                                  .itemPadding.medium.paddingSymmetricVertical,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    context.baseRadius.medium),
                                child: Image.network(
                                  item.urlToImage!,
                                  height: context.baseSize.medium,
                                  width: double.infinity,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  item.title ?? 'unknown',
                                  style: context.textTheme.bodyMedium,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Icon(Icons.arrow_forward_rounded)
                            ],
                          ),
                        ],
                      ),
                    )),
                  ),
                );
              },
            );
          }
          return Center(
            child: Text('data'),
          );
        },
      ),
    );
  }
}
