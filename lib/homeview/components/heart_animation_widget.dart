import 'package:flutter/material.dart';

class HeartAnimationWidget extends StatefulWidget {
  final bool isAnimating;
  final Widget child;
  final Duration duration;
  final VoidCallback? onEnd;
  const HeartAnimationWidget(
      {super.key,
      required this.isAnimating,
      required this.child,
      this.onEnd,
      this.duration = const Duration(milliseconds: 300)});

  @override
  State<HeartAnimationWidget> createState() => _HeartAnimationWidgetState();
}

class _HeartAnimationWidgetState extends State<HeartAnimationWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scale;

  @override
  void initState() {
    final halfDuration = widget.duration.inMilliseconds;
    controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: halfDuration));

    scale = Tween<double>(begin: 1, end: 1.2).animate(controller);
    super.initState();
  }

  @override
  void didUpdateWidget(covariant HeartAnimationWidget oldWidget) {
    if (widget.isAnimating != oldWidget.isAnimating) {
      doAnimation();
    }
    super.didUpdateWidget(oldWidget);
  }

  Future doAnimation() async {
    if (widget.isAnimating) {
      await controller.forward();
      await controller.reverse();
      await Future.delayed(const Duration(milliseconds: 400));
      if (widget.onEnd != null) {
        widget.onEnd!();
      }
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(scale: scale, child: widget.child);
  }
}
