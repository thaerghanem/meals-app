import 'package:flutter/material.dart';

class FiltersListTile extends StatefulWidget {
  const FiltersListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onChanged,
    required this.value,
  });

  final String title;
  final String subtitle;
  final Function(bool) onChanged;
  final bool value;

  @override
  State<FiltersListTile> createState() => _FiltersListTileState();
}

class _FiltersListTileState extends State<FiltersListTile> {
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: widget.value,
      onChanged: widget.onChanged,
      title: Text(
        widget.title,
        style: Theme.of(context).textTheme.titleLarge!
            .copyWith(color: Theme.of(context).colorScheme.onSurface),
      ),
      subtitle: Text(
        widget.subtitle,
        style: Theme.of(context).textTheme.labelMedium!
            .copyWith(color: Theme.of(context).colorScheme.onSurface),
      ),
      activeThumbColor: Theme.of(context).colorScheme.tertiary,
      contentPadding: EdgeInsets.only(left: 34, right: 22),
    );
  }
}
