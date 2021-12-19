import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:souls_anime/domain/controller/login_controller.dart';
import 'package:link_text/link_text.dart';

class NoticiaAnime extends StatefulWidget {
  NoticiaAnime({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<NoticiaAnime> {
  @override
  Widget build(BuildContext context) {
    final LoginController authenticationController = Get.find();
    return Scaffold(
      body: ListView(
        children: [
          noticias(),
          noticias1(),
          noticias2(),
          noticias3(),
        ],
      ),
    );
  }
}

noticias() {
  final String _text =
      'Sailor Moon Crystal https://www.crunchyroll.com/es/sailor-moon-crystal';
  return Column(
    children: [
      ListTile(
        title: LinkText(
          _text,
          textAlign: TextAlign.left,
          // You can optionally handle link tap event by yourself
          // onLinkTap: (url) => ...
        ),
        subtitle: Text(
            "La serie de anime Sailor Moon Crystal capitulos completos y en alta resolución​"),
        trailing: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 44,
            minHeight: 44,
            maxWidth: 64,
            maxHeight: 64,
          ),
          child: Image.asset('asset/images/Sailor.jpg', fit: BoxFit.cover),
        ),
      ),
      Divider()
    ],
  );
}

noticias1() {
  final String _text =
      'Death Note Real Live https://www.enter.co/cultura-digital/entretenimiento/se-acerca-el-live-action-de-death-note-y-este-es-su-elenco/';
  return Column(
    children: [
      ListTile(
        title: LinkText(
          _text,
          textAlign: TextAlign.left,
          // You can optionally handle link tap event by yourself
          // onLinkTap: (url) => ...
        ),
        subtitle: Text(
            "Un spin-off centrando en el personaje de L llamada: Death Note: L Change the World"),
        trailing: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 44,
            minHeight: 44,
            maxWidth: 64,
            maxHeight: 64,
          ),
          child: Image.asset('asset/images/Note.jpg', fit: BoxFit.cover),
        ),
      ),
      Divider()
    ],
  );
}

noticias2() {
  final String _text =
      '¿Cuándo Termina One Piece? https://as.com/meristation/2021/09/03/noticias/1630658915_631742.html';
  return Column(
    children: [
      ListTile(
        title: LinkText(
          _text,
          textAlign: TextAlign.left,
          // You can optionally handle link tap event by yourself
          // onLinkTap: (url) => ...
        ),
        subtitle: Text(
            "Hace un tiempo el creador de One Piece reveló, para sorpresa de todos los fans del popular anime, que su obra maestra llegaría a una conclusión en unos 5 años"),
        trailing: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 44,
            minHeight: 44,
            maxWidth: 64,
            maxHeight: 64,
          ),
          child: Image.asset('asset/images/One.png', fit: BoxFit.cover),
        ),
      ),
      Divider()
    ],
  );
}

noticias3() {
  final String _text =
      'Dragon Ball Oficial https://es.dragon-ball-official.com/';
  return Column(
    children: [
      ListTile(
        title: LinkText(
          _text,
          textAlign: TextAlign.left,
          // You can optionally handle link tap event by yourself
          // onLinkTap: (url) => ...
        ),
        subtitle: Text(
            "es un manga escrito e ilustrado por Akira Toriyama. Fue publicado originalmente en la revista Shōnen Jump, de la editorial japonesa Shūeisha, entre 1984 y 1995.1​2​ Su trama describe las aventuras de Gokū, un guerrero saiyajin, cuyo fin es proteger a la Tierra de otros seres que quieren conquistarla y exterminar a la humanidad. Conforme transcurre la trama, conoce a otros personajes que le ayudan en este propósito. El nombre de la serie proviene de unas esferas mágicas que al ser reunidas invocan a un dragón que concede deseos. En varias ocasiones resultan útiles tanto para Gokū y sus amigos como para la humanidad, aunque también son procuradas de forma constante por algunos seres malignos."),
        trailing: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 44,
            minHeight: 44,
            maxWidth: 64,
            maxHeight: 64,
          ),
          child: Image.asset('asset/images/dragon.jpg', fit: BoxFit.cover),
        ),
      ),
      Divider()
    ],
  );
}
