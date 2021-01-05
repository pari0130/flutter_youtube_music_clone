import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ymusic/models/models.dart';

class ContentList extends StatelessWidget {
  final String title;
  final List<Content> contentList;
  final bool isVideo;

  const ContentList(
      {Key key,
      @required this.title,
      @required this.contentList,
      this.isVideo = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 250.0,
            child: ListView.builder(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
              scrollDirection: Axis.horizontal, // 스크롤 방향 처리 - 가로
              itemCount: contentList.length,
              itemBuilder: (BuildContext context, int index) {
                final Content content = contentList[index];
                return GestureDetector(
                  onTap: () => print(content.title),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
                        height: 150.0,
                        width: isVideo ? 200.0 : 170.0,
                        child: CachedNetworkImage(
                          imageUrl: content.imageUrl,
                          width: 110.0,
                          fit: BoxFit.cover,
                        ),
                      ), // 콘텐츠 이미지 영억
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 2.0, 0, 2.0),
                        child: Container(
                          width: isVideo ? 200.0 : 170.0,
                          child: Text(
                              content.title,
                              maxLines: 2,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis
                          ),
                        ),
                      ),// 콘텐츠 title
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 2.0, 0, 2.0),
                        child: Container(
                          width: isVideo ? 200.0 : 170.0,
                          child: Text(
                              content.description,
                              maxLines: 2,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11.0
                              ),
                              overflow: TextOverflow.ellipsis
                          ),
                        ),
                      ),
//                        Container(
//                          margin: const EdgeInsets.symmetric(horizontal: 8.0),
//                          height: 150.0,
//                          width: isVideo ? 200.0 : 150.0,
//                          child: CachedNetworkImage(
//                            imageUrl: content.imageUrl,
//                            width: 110.0,
//                            fit: BoxFit.cover,
//                          ),
//                        ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
