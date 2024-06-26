import 'package:flutter/material.dart';
import 'package:tiptap_flutter/core/node.dart';
import 'package:tiptap_flutter/extensions/extensions.dart';

var HorizontalRuleExtension = Node(
    name: "horizontalRule",
    group: "block",
    renderer: (node, {next, attributes}) =>
        WidgetSpan(child: HorizontalRuleWidget(node)));

class HorizontalRuleWidget extends TiptapBlockRenderer {
  const HorizontalRuleWidget(super.node, {super.key, super.next});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 0.0,
      ),
      child: Container(
        color: Colors.black,
        height: 1.0,
      ),
    );
  }
}
