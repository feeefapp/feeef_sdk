// alerts
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class AlertCard extends StatelessWidget {
  final Widget icon;
  final Color? color;
  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;
  final ShapeBorder? shape;

  const AlertCard({
    super.key,
    this.color,
    required this.title,
    this.icon = const Icon(PhosphorIconsThin.warningCircle),
    this.subtitle,
    this.trailing,
    this.shape,
  });

  const AlertCard.error({
    super.key,
    this.color = Colors.red,
    required this.title,
    this.icon = const Icon(PhosphorIconsThin.xCircle),
    this.subtitle,
    this.trailing,
    this.shape,
  });

  const AlertCard.success({
    super.key,
    this.color = Colors.green,
    this.title,
    this.icon = const Icon(PhosphorIconsThin.checkCircle),
    this.subtitle,
    this.trailing,
    this.shape,
  });

  const AlertCard.warning({
    super.key,
    this.color = Colors.orange,
    this.title,
    this.icon = const Icon(Icons.warning_rounded),
    this.subtitle,
    this.trailing,
    this.shape,
  });

  // info
  const AlertCard.info({
    super.key,
    this.color = Colors.blue,
    this.title,
    this.icon = const Icon(Icons.info_rounded),
    this.subtitle,
    this.trailing,
    this.shape,
  });

  @override
  Widget build(BuildContext context) {
    var color = this.color ?? Theme.of(context).colorScheme.primary;
    return Card.outlined(
      color: color.withOpacity(0.1),
      shape: shape ?? RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: color.withOpacity(0.5)),
      ),
      child: ListTile(
        leading: IconTheme(
          data: Theme.of(context).iconTheme.copyWith(color: color),
          child: icon,
        ),
        title: title == null
            ? null
            : DefaultTextStyle(
                style: Theme.of(
                  context,
                ).textTheme.labelLarge!.copyWith(color: color),
                child: title!,
              ),
        subtitle: subtitle,
        trailing: trailing,
      ),
    );
  }
}
