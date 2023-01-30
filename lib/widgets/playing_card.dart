import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:peak_card_game/models/card_model.dart';
import 'package:peak_card_game/utils/color.dart';
import 'package:peak_card_game/utils/style.dart';

class PlayingCard extends StatelessWidget {
  final CardModel? card;
  final double size;
  final bool visible;
  final Widget? child;

  const PlayingCard({
    Key? key,
    this.card,
    this.visible = false,
    this.size = 1,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = CardStyle.height * size;
    final width = CardStyle.width * size;

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
      ),
      clipBehavior: Clip.antiAlias,
      child: visible
          ? CachedNetworkImage(
              imageUrl: card!.image,
              width: width,
              height: height,
            )
          : Container(
              width: width,
              height: height,
              color: Palette.blackCard,
              child:
                  child ?? Image.asset('assets/images/playing_card_back.jpg'),
            ),
    );
  }
//   final Widget? suit;
//   final int? number;
//   final bool show;

//   const PlayingCard({super.key, this.suit, this.number, this.show = false});

//   @override
//   Widget build(BuildContext context) {
//     return show
//         ? Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(10),
//               child: Container(
//                 color: Palette.playingCard,
//                 // color: backgroundColor,
//                 height: 150,
//                 width: 100,
//                 child: Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Row(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Text(
//                               number.toString(),
//                               style: CardStyle.blackCard,
//                               // style: if (suit == spade()) {
//                               //   return CardStyle.blackCard} else { return CardStyle.blackCard},
//                             ),
//                           ),
//                         ],
//                       ),
//                       suit!,
//                       Transform.rotate(
//                         angle: pi,
//                         child: Row(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Text(
//                                 number.toString(),
//                                 style: CardStyle.blackCard,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           )
//         : Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(10),
//               child: Container(
//                 color: Palette.playingCard,
//                 height: 150,
//                 // width: 100,
//                 child: Image.asset('assets/images/playing_card_back.jpg'),
//               ),
//             ),
//           );
//   }
}
