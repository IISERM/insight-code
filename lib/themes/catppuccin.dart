/*
Credits:
www.github.com/catppuccin/flutter
*/

import'package:flutter/material.dart';

const Flavor latte = (
rosewater: Color(0xFFDC8A78),
base: Color(0xFFEFF1F5),
blue: Color(0xFF1E66F5),
crust: Color(0xFFDCE0E8),
flamingo: Color(0xFFDD7878),
green: Color(0xFF40A02B),
lavender: Color(0xFF7287FD),
mantle: Color(0xFFE6E9EF),
maroon: Color(0xFFE64553),
mauve: Color(0xFF8839EF),
overlay0: Color(0xFF9CA0B0),
overlay1: Color(0xFF8C8FA1),
overlay2: Color(0xFF7C7F93),
peach: Color(0xFFFE640B),
pink: Color(0xFFEA76CB),
red: Color(0xFFD20F39),
sapphire: Color(0xFF209FB5),
sky: Color(0xFF04A5E5),
subtext0: Color(0xFF6C6F85),
subtext1: Color(0xFF5C5F77),
surface0: Color(0xFFCCD0DA),
surface1: Color(0xFFBCC0CC),
surface2: Color(0xFFACB0BE),
teal: Color(0xFF179299),
text: Color(0xFF4C4F69),
yellow: Color(0xFFDF8E1D),
);

const Flavor frappe = (
rosewater: Color(0xFFF2D5CF),
base: Color(0xFF303446),
blue: Color(0xFF8CAAEE),
crust: Color(0xFF232634),
flamingo: Color(0xFFEEBEBE),
green: Color(0xFFA6D189),
lavender: Color(0xFFBABBF1),
mantle: Color(0xFF292C3C),
maroon: Color(0xFFEA999C),
mauve: Color(0xFFCA9EE6),
overlay0: Color(0xFF737994),
overlay1: Color(0xFF838BA7),
overlay2: Color(0xFF949CBB),
peach: Color(0xFFEF9F76),
pink: Color(0xFFF4B8E4),
red: Color(0xFFE78284),
sapphire: Color(0xFF85C1DC),
sky: Color(0xFF99D1DB),
subtext0: Color(0xFFA5ADCE),
subtext1: Color(0xFFB5BFE2),
surface0: Color(0xFF414559),
surface1: Color(0xFF51576D),
surface2: Color(0xFF626880),
teal: Color(0xFF81C8BE),
text: Color(0xFFC6D0F5),
yellow: Color(0xFFE5C890),
);

const Flavor macchiato = (
rosewater: Color(0xFFF4DBD6),
base: Color(0xFF24273A),
blue: Color(0xFF8AADF4),
crust: Color(0xFF181926),
flamingo: Color(0xFFF0C6C6),
green: Color(0xFFA6DA95),
lavender: Color(0xFFB7BDF8),
mantle: Color(0xFF1E2030),
maroon: Color(0xFFEE99A0),
mauve: Color(0xFFC6A0F6),
overlay0: Color(0xFF6E738D),
overlay1: Color(0xFF8087A2),
overlay2: Color(0xFF939AB7),
peach: Color(0xFFF5A97F),
pink: Color(0xFFF5BDE6),
red: Color(0xFFED8796),
sapphire: Color(0xFF7DC4E4),
sky: Color(0xFF91D7E3),
subtext0: Color(0xFFA5ADCB),
subtext1: Color(0xFFB8C0E0),
surface0: Color(0xFF363A4F),
surface1: Color(0xFF494D64),
surface2: Color(0xFF5B6078),
teal: Color(0xFF8BD5CA),
text: Color(0xFFCAD3F5),
yellow: Color(0xFFEED49F),
);

const Flavor mocha = (
rosewater: Color(0xFFF5E0DC),
base: Color(0xFF1E1E2E),
blue: Color(0xFF89B4FA),
crust: Color(0xFF11111B),
flamingo: Color(0xFFF2CDCD),
green: Color(0xFFA6E3A1),
lavender: Color(0xFFB4BEFE),
mantle: Color(0xFF181825),
maroon: Color(0xFFEBA0AC),
mauve: Color(0xFFCBA6F7),
overlay0: Color(0xFF6C7086),
overlay1: Color(0xFF7F849C),
overlay2: Color(0xFF9399B2),
peach: Color(0xFFFAB387),
pink: Color(0xFFF5C2E7),
red: Color(0xFFF38BA8),
sapphire: Color(0xFF74C7EC),
sky: Color(0xFF89DCEB),
subtext0: Color(0xFFA6ADC8),
subtext1: Color(0xFFBAC2DE),
surface0: Color(0xFF313244),
surface1: Color(0xFF45475A),
surface2: Color(0xFF585B70),
teal: Color(0xFF94E2D5),
text: Color(0xFFCDD6F4),
yellow: Color(0xFFF9E2AF),
);

typedef Flavor = ({
Color rosewater,
Color flamingo,
Color pink,
Color mauve,
Color red,
Color maroon,
Color peach,
Color yellow,
Color green,
Color teal,
Color sky,
Color sapphire,
Color blue,
Color lavender,
Color text,
Color subtext1,
Color subtext0,
Color overlay2,
Color overlay1,
Color overlay0,
Color surface2,
Color surface1,
Color surface0,
Color crust,
Color mantle,
Color base,
});

typedef Catppuccin = ({Flavor latte, Flavor frappe, Flavor macchiato, Flavor mocha});

enum AccentColor {
  rosewater,
  flamingo,
  pink,
  mauve,
  red,
  maroon,
  peach,
  yellow,
  green,
  teal,
  sky,
  sapphire,
  blue,
  lavender,
}

enum Flavors {
  latte,
  frappe,
  macchiato,
  mocha,
}



const Catppuccin catppuccin = (latte: latte, frappe: frappe, macchiato: macchiato, mocha: mocha);

ThemeData CatppuccinTheme(Flavors flavor, AccentColor accent) {

  Flavor selectedFlavor;
  Brightness brightness;

  switch (flavor) {
    case Flavors.latte:
      selectedFlavor = latte;
      brightness = Brightness.light;
      break;
    case Flavors.frappe:
      selectedFlavor = frappe;
      brightness = Brightness.dark;
      break;
    case Flavors.macchiato:
      selectedFlavor = macchiato;
      brightness = Brightness.dark;
      break;
    case Flavors.mocha:
    default:
      selectedFlavor = mocha;
      brightness = Brightness.dark;
      break;
  }

  Color accentColor;

  switch (accent) {
    case AccentColor.rosewater:
      accentColor = selectedFlavor.rosewater;
      break;
    case AccentColor.flamingo:
      accentColor = selectedFlavor.flamingo;
      break;
    case AccentColor.pink:
      accentColor = selectedFlavor.pink;
      break;
    case AccentColor.mauve:
      accentColor = selectedFlavor.mauve;
      break;
    case AccentColor.red:
      accentColor = selectedFlavor.red;
      break;
    case AccentColor.maroon:
      accentColor = selectedFlavor.maroon;
      break;
    case AccentColor.peach:
      accentColor = selectedFlavor.peach;
      break;
    case AccentColor.yellow:
      accentColor = selectedFlavor.yellow;
      break;
    case AccentColor.green:
      accentColor = selectedFlavor.green;
      break;
    case AccentColor.teal:
      accentColor = selectedFlavor.teal;
      break;
    case AccentColor.sky:
      accentColor = selectedFlavor.sky;
      break;
    case AccentColor.sapphire:
      accentColor = selectedFlavor.sapphire;
      break;
    case AccentColor.blue:
      accentColor = selectedFlavor.blue;
      break;
    case AccentColor.lavender:
      accentColor = selectedFlavor.lavender;
      break;
    default:
      accentColor = selectedFlavor.rosewater;
      break;
  }

  final ColorScheme colorScheme = ColorScheme(
    primary: accentColor,
    secondary: accentColor,
    surface: selectedFlavor.surface0,
    background: selectedFlavor.base,
    error: selectedFlavor.red,
    onPrimary: selectedFlavor.text,
    onSecondary: selectedFlavor.text,
    onSurface: selectedFlavor.text,
    onBackground: selectedFlavor.text,
    onError: selectedFlavor.text,
    brightness: brightness,
  );

  return ThemeData(
    colorScheme: colorScheme,
  ).copyWith(
    // Todo: Check if we need to add any customizations here
  );

}