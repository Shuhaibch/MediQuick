import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAssetImageWidget extends StatelessWidget {
  final String image;
  final double? height;
  final double? width;
  final BoxFit fit;
  final BlendMode? colorBlendMode;
  final Color? color;

  const CustomAssetImageWidget(
    this.image, {
    super.key,
    this.height,
    this.width,
    this.fit = BoxFit.cover,
    this.color,
    this.colorBlendMode,
  });

  bool get isSvg => image.trim().toLowerCase().endsWith('.svg');
  bool get isSvgString => image.trimLeft().startsWith('<svg');
  bool get isNetwork =>
      image.startsWith('http://') || image.startsWith('https://');

  @override
  Widget build(BuildContext context) {
    if (isSvgString) {
      return SvgPicture.string(
        image,
        width: width,
        height: height,
        fit: fit,
        colorFilter: color != null
            ? ColorFilter.mode(color!, BlendMode.srcIn)
            : null,
      );
    }

    if (isSvg) {
      return isNetwork
          ? SvgPicture.network(
              image,
              width: width,
              height: height,
              fit: fit,
              colorFilter: color != null
                  ? ColorFilter.mode(color!, BlendMode.srcIn)
                  : null,
              placeholderBuilder: (context) =>
                  const Center(child: CircularProgressIndicator()),
            )
          : SvgPicture.asset(
              image,
              width: width,
              height: height,
              fit: fit,
              colorFilter: color != null
                  ? ColorFilter.mode(color!, BlendMode.srcIn)
                  : null,
            );
    }

    return isNetwork
        ? Image.network(
            image,
            width: width,
            height: height,
            fit: fit,
            color: color,
            colorBlendMode: colorBlendMode,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return const Center(child: CircularProgressIndicator());
            },
            errorBuilder: (context, error, stackTrace) =>
                const Icon(Icons.broken_image),
          )
        : Image.asset(
            image,
            width: width,
            height: height,
            fit: fit,
            color: color,
            colorBlendMode: colorBlendMode,
          );
  }
}
