import 'base/constraints.dart';
import 'base/palette.dart';
import 'base/text.dart';
import 'credible/constraints.dart';
import 'credible/palette.dart';
import 'credible/text.dart';
import 'degen/constraints.dart';
import 'degen/palette.dart';
import 'degen/text.dart';

const UiKit = Ui._credible();

class Ui {
  final UiPalette palette;
  final UiConstraints constraints;
  final UiText text;

  // ignore: unused_element
  const Ui._credible({
    // ignore: unused_element
    this.palette = const CrediblePalette(),
    // ignore: unused_element
    this.constraints = const CredibleConstraints(),
    // ignore: unused_element
    this.text = const CredibleText(),
  });

  // ignore: unused_element
  const Ui._degen({
    // ignore: unused_element
    this.palette = const DegenPalette(),
    // ignore: unused_element
    this.constraints = const DegenConstraints(),
    // ignore: unused_element
    this.text = const DegenText(),
  });
}
