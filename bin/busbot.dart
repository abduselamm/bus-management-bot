import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';

import 'dart:async' show runZoned;

Future<void> main() async {
  var BOT_TOKEN = '5936659881:AAF8_dSVzdzCosozApvzzVSEfuWQWjQgXWM';
  final username = (await Telegram(BOT_TOKEN).getMe()).username;
  var teledart = TeleDart(BOT_TOKEN, Event(username!));

  teledart.start();

  //                               (   Commands   )

  //                                    General

  teledart
      .onCommand('start')
      .listen((message) => message.reply(' Hi! How can I help you?\n\n'
          "Click on your bus station ⬇️:\n\n"
          "📍Khobar:\n\n"
          "🚎(/olaya)    \n"
          "—————————————————\n\n"
          "📍Dammam:\n\n"
          "📍Qatif:\n\n"
          "🚎(/alawjam)   \n"
          "—————————————————\n\n"
          "📍Dhahran:\n\n"
          "🚎(/almunirah)  🚎(/almunirahgate)"));

  teledart
      .onMessage(keyword: 'BusBot')
      .listen((message) => message.reply(' Hi! How can I help you?\n\n'
          "Click on your bus station ⬇️:\n\n"
          "📍Khobar:\n\n"
          "🚎(/olaya)       \n"
          "—————————————————\n\n"
          "📍Dammam:\n\n"
          "🚎(/wahamall)       🚎(/faisaliyah)\n"
          "—————————————————\n\n"
          "📍Qatif:\n\n"
          "🚎(/alawjam)    \n"
          "—————————————————\n\n"
          "📍Dhahran:\n\n"
          "🚎(/almunirah)  🚎(/almunirahgate)"));

  teledart
      .onMessage(keyword: 'Thank you')
      .listen((message) => message.reply('You are welcome'));

  //                      Olya okay Khobar

  teledart.onCommand('olaya').listen((message) => message.reply(
      '🔅Olya District🔅\n\n'
      "⏰Time: \n\n 6:40AM \n\n"
      "☎️Contact Information:\n\n Bus station# :0138722410  \n AAU Office#: 0550503074\n\n"
      '📍Location:\nhttps://goo.gl/maps/QCQjBBmSnB5a3niSA\n\n '));

/*
  teledart.onCommand('olya').listen((message) => message.replyPhoto(
      'https://raw.githubusercontent.com/DinoLeung/TeleDart/master/example/dash_paper_plane.png'));
*/

  //                      alawjam Okay Qatif

  teledart.onCommand('alawjam').listen((message) => message.reply(
      '🔅Alawjam District🔅\n\n'
      "⏰Time: \n\n 6:40AM \n\n"
      "☎️Contact Information:\n\n Bus station# :0138722410  \n AAU Office#: 0550503074\n\n"
      '📍Location:\nhttps://maps.app.goo.gl/tiLDvEMoxtrv4qm56?g_st=ic\n\n '));

  //                      almunirah Okay DH

  teledart.onCommand('almunirah').listen((message) => message.reply(
      '🔅Almunirah Camp🔅\n\n'
      "⏰Time: \n\n 7:00AM \n\n"
      "☎️Contact Information:\n\n Bus station# :0138722410  \n AAU Office#: 0550503074\n\n"
      '📍Location:\nhttps://maps.app.goo.gl/Euw1jxLu7E7xpYLZA?g_st=ic\n\n '));

  //                      AlmunirahGate Okay Dh

  teledart.onCommand('almunirahgate').listen((message) => message.reply(
      '🔅Almunirah Gate🔅\n\n'
      "⏰Time: \n\n 7:00AM \n\n"
      "☎️Contact Information:\n\n Bus station# :0138722410  \n AAU Office#: 0550503074\n\n"
      '📍Location:\nhttps://goo.gl/maps/jTGohYT1tRxFj4Ev9\n\n '));

  //                      WahaMall

  teledart.onCommand('wahamall').listen((message) => message.reply(
      '🔅Al-Waha Mall🔅\n\n'
      "⏰Time: \n\n 6:50AM \n\n"
      "☎️Contact Information:\n\n Bus station# :0138722410  \n AAU Office#: 0550503074\n\n"
      '📍Location:\nhttps://goo.gl/maps/UCTQbUTBL7LP4ELd9\n\n '));

  //                     Al Faisaliyah Okay Dammam

  teledart.onCommand('faisaliyah').listen((message) => message.reply(
      '🔅Al-Faisaliyah District🔅\n\n'
      "⏰Time: \n\n 7:00AM \n\n"
      "☎️Contact Information:\n\n Bus station# :0138722410  \n AAU Office#: 0550503074\n\n"
      '📍Location:\nhttps://goo.gl/maps/nWrzEAqqH7899p5u9\n\n '));
}
