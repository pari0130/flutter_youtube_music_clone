import 'package:flutter/material.dart';
import 'package:ymusic/assets.dart';
import 'package:ymusic/models/content_model.dart';
import 'package:ymusic/models/models.dart';

final User currentUser = User(
  name: 'cho dong hwi',
  imageUrl:
  'https://yt3.ggpht.com/a-/AOh14GjXEUAVXNnUUU3OdId8oCdWgPB-O2xB2aSuYcFvuYs=s108-c-k-c0x00ffffff-no-rj',
);

final List<Content> favList = const [
  Content(title: 'Get Up & Dance!', description: 'Create custom designed Cards with images, texts and buttons in your Flutter app',imageUrl: 'https://lh3.googleusercontent.com/ypQ7bplKrjFR3GGGwKfqK9t7ux2Nrx_IGdKNe3txQe8VavccFV-kTRRcsG3EW_9waOnl0O0y=w226-h226-l90-rj'),
  Content(title: '노래', description: 'Create custom designed Cards with images, texts and buttons in your Flutter app',imageUrl: 'https://i.ytimg.com/vi/GRlGFbww4ks/sddefault.jpg?sqp=-oaymwEWCJADEOEBIAQqCghqEJQEGHgg6AJIWg&rs=AMzJL3nwdwBpHA2Azn8pxjlLBRGCMj1mew'),
  Content(title: '나만의 믹스', description: 'Create custom designed Cards with images, texts and buttons in your Flutter app',imageUrl: 'https://lh3.googleusercontent.com/Wb_YxjPGyV6JcKNn4-t8NwV1wxTBB56wuRFpGNAzQkiSxMgVr8z79llKo0IwKRhH3qVpjlU0Yw=w226-h226-l90-rj'),
  Content(title: 'R&B 2021 - Best R&B Songs Playlist (New RNB Music 2021)', description: 'Create custom designed Cards with images, texts and buttons in your Flutter app',imageUrl: 'https://i.ytimg.com/vi/dvndP8di-Uw/sddefault.jpg?sqp=-oaymwEWCJADEOEBIAQqCghqEJQEGHgg6AJIWg&rs=AMzJL3m185XZnBQ7RapaVJ6U9vrM27I2EA')
];

final List<Content> reMusicList = const [
  Content(title: '내적댄스 유발 팝 댄스', description: 'Create custom designed Cards with images, texts and buttons in your Flutter app',imageUrl: 'https://lh3.googleusercontent.com/2p2GbronTXveSr612wCFmLCEd-LEWgJmZFgfIrzTDmtFSSqfdGBYZvzMgKs5aChgK99kI5xGbg=w226-h226-l90-rj'),
  Content(title: '[잔잔한 피아노10시간]가요 피아노 10시간[중간광고없음]집중,힐링,휴식,공부,카페음악', description: 'Create custom designed Cards with images, texts and buttons in your Flutter app',imageUrl: 'https://i.ytimg.com/vi/yvbG0ABVcog/sddefault.jpg?sqp=-oaymwEWCJADEOEBIAQqCghqEJQEGHgg6AJIWg&rs=AMzJL3n9btasveNQkoYUVmRyHsUC82Bq3Q'),
  Content(title: 'R&B 2021 - Best R&B Songs Playlist (New RNB Music 2021)', description: 'Create custom designed Cards with images, texts and buttons in your Flutter app',imageUrl: 'https://i.ytimg.com/vi/dvndP8di-Uw/sddefault.jpg?sqp=-oaymwEWCJADEOEBIAQqCghqEJQEGHgg6AJIWg&rs=AMzJL3m185XZnBQ7RapaVJ6U9vrM27I2EA'),
  Content(title: 'EDM Song Playlist 2021 - New EDM Hits (EDM 2021 Popular Songs)', description: 'Create custom designed Cards with images, texts and buttons in your Flutter app',imageUrl: 'https://i.ytimg.com/vi/rohLQbUhl_4/sddefault.jpg?sqp=-oaymwEWCJADEOEBIAQqCghqEJQEGHgg6AJIWg&rs=AMzJL3nVcZj9e652FE3lXlPX1U0cCD9M1A'),
  Content(title: 'Windows-Down EDM', description: 'Create custom designed Cards with images, texts and buttons in your Flutter app',imageUrl: 'https://lh3.googleusercontent.com/JnrVS6glUEqC5jB5Gy75a9Aexy9FfTRd6O8L04WALPYduF5j5Xmbdr_2-6mYmY9-MB7wlu6hVg=w226-h226-l90-rj'),
  Content(title: 'Get Up & Dance!', description: 'Create custom designed Cards with images, texts and buttons in your Flutter app',imageUrl: 'https://lh3.googleusercontent.com/ypQ7bplKrjFR3GGGwKfqK9t7ux2Nrx_IGdKNe3txQe8VavccFV-kTRRcsG3EW_9waOnl0O0y=w226-h226-l90-rj'),
  Content(title: '노래', description: 'Create custom designed Cards with images, texts and buttons in your Flutter app',imageUrl: 'https://i.ytimg.com/vi/GRlGFbww4ks/sddefault.jpg?sqp=-oaymwEWCJADEOEBIAQqCghqEJQEGHgg6AJIWg&rs=AMzJL3nwdwBpHA2Azn8pxjlLBRGCMj1mew'),
];