// import 'dart:convert';

// import 'package:http/http.dart' as http;

// class SendTextTwillio{

// var headers = {
//   'Authorization': 'Basic e3tUV0lMSU9fQUNDT1VOVF9TSUR9fTp7e1RXSUxJT19BVVRIX1RPS0VOfX0=',
//   'Content-Type': 'application/x-www-form-urlencoded'
// };
// var request = http.Request('POST', Uri.parse('https://api.twilio.com/2010-04-01/Accounts/AC4a115a011f9bcddaf72d24abed8759a8/Messages.json'));
// request.bodyFields = {
//   'To': '+639270758335',
//   'Body': 'You\'re doing great Chad! Keep it up!',
//   'MediaUrl': 'https://media3.giphy.com/media/Nysdvh6lajIc0/giphy.gif?cid=ecf05e47i4bywi3dx21umtgmnve17uhr1q6i11urpkn6ml96&rid=giphy.gif&ct=g',
//   'From': '+18782176550'
// };

// var uri = Uri.https('https://api.twilio.com', '/feeds/list',
//         {"limit": "24", "start": "0", "tag": "list.recipe.popular"});

//     final response = await http.get(uri, headers: {
//       "X-RapidAPI-Key": "6f09c0c5f9mshb7f1a3741863dfap13e355jsnb4176fcfbcc0",
//       "X-RapidAPI-Host": "yummly2.p.rapidapi.com",
//       "useQueryString": "true"
//     });

// request.headers.addAll(headers);

// http.StreamedResponse response = await request.send();

// if (response.statusCode == 200) {
//   print(await response.stream.bytesToString());
// }
// else {
//   print(response.reasonPhrase);
// }
// }
