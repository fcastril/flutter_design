import 'package:designsapp/src/themes/appTheme.dart';
import 'package:flutter/material.dart';

class HeaderScuad extends StatelessWidget {
  const HeaderScuad({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: AppTheme.primary,
    );
  }
}

class HeaderBorderRadius extends StatelessWidget {
  const HeaderBorderRadius({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(50)),
          color: AppTheme.primary),
    );
  }
}

class HeaderDiagonal extends StatelessWidget {
  const HeaderDiagonal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: AppTheme.primary,
      child: CustomPaint(
        painter: _HeaderDiagonalPainter(),
      ),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = AppTheme.primary;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 1;

    final path = Path();

    path.lineTo(0, size.height * 0.30);
    path.lineTo(size.width * 0.4, size.height * 0.40);
    path.lineTo(size.width, size.height * 0.10);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderCurve extends StatelessWidget {
  const HeaderCurve({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: AppTheme.primary,
      child: CustomPaint(
        painter: _HeaderCurvePainter(),
      ),
    );
  }
}

class _HeaderCurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = AppTheme.primary;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 10;

    final path = Path();

    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.30,
        size.width * 0.5, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.20, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderGradiend extends StatelessWidget {
  const HeaderGradiend({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderGradientPainter(),
      ),
    );
  }
}

class _HeaderGradientPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect =
        Rect.fromCircle(center: const Offset(150.0, 150.0), radius: 180);

    final Gradient grandient = new LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: const <Color>[Colors.red, Colors.green, Colors.blue]);

    final paint = new Paint()..shader = grandient.createShader(rect);
    paint.color = AppTheme.secondary;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 10;

    final path = Path();

    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.30,
        size.width * 0.5, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.20, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
