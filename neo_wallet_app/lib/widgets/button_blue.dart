part of 'widgets.dart';

class ButtonBlue extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;

  @override
  const ButtonBlue({
    required this.title,
    required this.onPressed,
    /* required this.onPressed, */
  });
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 2,
        primary: Colors.blue,
        shape: StadiumBorder(),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        width: double.infinity,
        child: Center(
          child: Text(title,
              style: TextStyle(
                color: Colors.white,
              )),
        ),
      ),
      onPressed: onPressed,
    );
  }
}
