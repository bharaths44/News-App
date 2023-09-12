import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/get_news_response.dart';

class DeskLive extends StatefulWidget {
  const DeskLive({super.key});

  @override
  State<DeskLive> createState() => _DeskLiveState();
}

class _DeskLiveState extends State<DeskLive> {
  final dio = Dio();
  Response? response;
  bool isLoading = false;
  GetNewsResponse model = GetNewsResponse();
  List<Article> newsList = [];

  void request() async {
    response = await dio.get(
        'https://gnews.io/api/v4/search?q=example&apikey=92d4d8111149d7725abdc4e602384ce8');
    model = GetNewsResponse.fromJson(response?.data);
    newsList.addAll(model.articles!);
    //print(response?.data.toString());
    //print(model.articles?.first.title);
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    setState(() {
      isLoading = true;
    });

    // TODO: implement initState
    request();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: isLoading
            ? const Center(child: CircularProgressIndicator())
            : Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(itemCount: newsList.length,
              itemBuilder: (context, index) {
                return Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height/3,
                          width:  MediaQuery.of(context).size.width,
                          color: Colors.amberAccent,
                          child: Image(
                            image: NetworkImage(
                              model.articles![index].image!),
                            fit: BoxFit.cover,
                            ),


                        ),
                        Text(
                          model.articles![index].title!,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          model.articles![index].content!,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w200,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ));
              },
            )));
  }
}
