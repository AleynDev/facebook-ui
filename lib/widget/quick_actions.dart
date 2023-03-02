import 'circle_button.dart';
import 'package:flutter/material.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // El widget FittedBox escala el contenido dependiendo de la pantalla
      // donde se renderice, con la propiedad fit, podemos elegir la forma de
      // renderizado. En este caso scaleDown solo actúa cuando tenemos error
      // de overflow, sino, mantiene la relación de aspecto original.
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Row(
            children: const [
              _QuickButton(
                iconData: Icons.photo_library_rounded,
                label: 'Gallery',
                color: Color(0xff92be87),
              ),
              SizedBox(width: 15),
              _QuickButton(
                iconData: Icons.supervised_user_circle_sharp,
                label: 'Tag Friends',
                color: Color(0xff7bbaff),
              ),
              SizedBox(width: 15),
              _QuickButton(
                iconData: Icons.video_call_outlined,
                label: 'Live',
                color: Color(0xfffe7574),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _QuickButton extends StatelessWidget {
  final IconData iconData;
  final String label;
  final Color color;

  const _QuickButton({
    Key? key,
    required this.iconData,
    required this.color,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: color.withOpacity(0.15),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleButton(
            color: color,
            iconData: iconData,
          ),
          const SizedBox(width: 10),
          Text(
            label,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
