import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_track/feature/news/presentation/state/news_cubit.dart';

class NewsView extends StatefulWidget {
  NewsView({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _NewsViewState createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  @override
  void initState() {
    context.read<NewsCubit>().getNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Articles"),
      ),
      body: Container(
        child: BlocBuilder<NewsCubit, NewsState>(
            builder: (context, state) => state.maybeWhen(
                error: (payload, error) => SizedBox(),
                loadingNews: (payload, error) => Center(
                      child: Container(
                        width: 15,
                        height: 15,
                        child: CircularProgressIndicator(),
                      ),
                    ),
                loadedNews: (payload, error) => payload.isNotEmpty ||
                        payload.length > 0
                    ? Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                                child: ListView(
                              children: payload
                                  .map((news) => Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 15.0),
                                        child: ListTile(
                                          leading: ClipRRect(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            child: Container(
                                              height: 40,
                                              width: 40,
                                              child: Image.network(
                                                news.imageUrl ?? "",
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          title: Text(
                                            news.newsTitle ?? "",
                                            style: TextStyle(height: 1.5),
                                          ),
                                          subtitle: Text(
                                              news.newsDescription ?? "",
                                              style: TextStyle(height: 1.5)),
                                        ),
                                      ))
                                  .toList(),
                            ))
                          ],
                        ),
                      )
                    : SizedBox(),
                orElse: () => SizedBox())),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
