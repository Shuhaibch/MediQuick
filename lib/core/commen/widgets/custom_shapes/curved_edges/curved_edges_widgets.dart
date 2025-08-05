import 'package:flutter/material.dart';
import 'package:medi_cart/core/commen/widgets/custom_shapes/curved_edges/curved_edges.dart';

class CCurvedWidgets extends StatelessWidget {
  const CCurvedWidgets({super.key, this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: CCustumCurvedEdges(), child: child);
  }
}
