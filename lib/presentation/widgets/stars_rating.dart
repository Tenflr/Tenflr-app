import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Stars extends HookWidget {
  final int number;

  const Stars({this.number});

  @override
  Widget build(BuildContext context) {
    final number = useState(0);
    return AnimatedSwitcher(
      duration: const Duration(seconds: 3),
      child: AnimatedSwitcher(
          duration: const Duration(seconds: 5), child: _numberOfStar(number)),
    );
  }

  Widget _numberOfStar(ValueNotifier<int> number) {
    if (number.value == 1) {
      return Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
              onTap: () => number.value = 1,
              child: const Icon(
                Icons.star,
              )),
          InkWell(
              child: const Icon(Icons.star_border_outlined),
              onTap: () => number.value = 2),
          InkWell(
              child: const Icon(Icons.star_border_outlined),
              onTap: () => number.value = 3),
          InkWell(
              child: const Icon(Icons.star_border_outlined),
              onTap: () => number.value = 4),
          InkWell(
              child: const Icon(Icons.star_border_outlined),
              onTap: () => number.value = 5),
        ],
      );
    } else if (number.value == 2) {
      return Row(
        children: [
          InkWell(child: const Icon(Icons.star), onTap: () => number.value = 1),
          InkWell(child: const Icon(Icons.star), onTap: () => number.value = 2),
          InkWell(
              child: const Icon(Icons.star_border_outlined),
              onTap: () => number.value = 3),
          InkWell(
              child: const Icon(
                Icons.star_border_outlined,
              ),
              onTap: () => number.value = 4),
          InkWell(
              child: const Icon(
                Icons.star_border_outlined,
              ),
              onTap: () => number.value = 5),
        ],
      );
    } else if (number.value == 3) {
      return Row(
        children: [
          InkWell(
              child: const Icon(
                Icons.star,
              ),
              onTap: () => number.value = 1),
          InkWell(
              child: const Icon(
                Icons.star,
              ),
              onTap: () => number.value = 2),
          InkWell(
              child: const Icon(
                Icons.star,
              ),
              onTap: () => number.value = 3),
          InkWell(
              child: const Icon(
                Icons.star_border_outlined,
              ),
              onTap: () => number.value = 4),
          InkWell(
              child: const Icon(
                Icons.star_border_outlined,
              ),
              onTap: () => number.value = 5),
        ],
      );
    } else if (number.value == 4) {
      return Row(
        children: [
          InkWell(
              child: const Icon(
                Icons.star,
              ),
              onTap: () => number.value = 1),
          InkWell(
              child: const Icon(
                Icons.star,
              ),
              onTap: () => number.value = 2),
          InkWell(
              child: const Icon(
                Icons.star,
              ),
              onTap: () => number.value = 3),
          InkWell(
              child: const Icon(
                Icons.star,
              ),
              onTap: () => number.value = 4),
          InkWell(
              child: const Icon(
                Icons.star_border_outlined,
              ),
              onTap: () => number.value = 5),
        ],
      );
    } else if (number.value == 5) {
      return Row(
        children: [
          InkWell(
              child: const Icon(
                Icons.star,
              ),
              onTap: () => number.value = 1),
          InkWell(
              child: const Icon(
                Icons.star,
              ),
              onTap: () => number.value = 2),
          InkWell(
              child: const Icon(
                Icons.star,
              ),
              onTap: () => number.value = 3),
          InkWell(
              child: const Icon(
                Icons.star,
              ),
              onTap: () => number.value = 4),
          InkWell(
              child: const Icon(
                Icons.star,
              ),
              onTap: () => number.value = 5),
        ],
      );
    } else {
      return Row(
        children: [
          InkWell(child: const Icon(Icons.star), onTap: () => number.value = 1),
          InkWell(child: const Icon(Icons.star), onTap: () => number.value = 2),
          InkWell(child: const Icon(Icons.star), onTap: () => number.value = 3),
          InkWell(child: const Icon(Icons.star), onTap: () => number.value = 4),
          InkWell(child: const Icon(Icons.star), onTap: () => number.value = 5),
        ],
      );
    }
  }
}