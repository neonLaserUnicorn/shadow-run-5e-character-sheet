import 'package:flutter/material.dart';
import 'package:shadowrun_5e_character_sheet/utility/text_widgets.dart';
import 'package:shadowrun_5e_character_sheet/widget/weapon_widget.dart';

import '../model/character_model.dart';
import '../model/info.dart';

class WeaponsScreen extends StatelessWidget {
  const WeaponsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final character = CharacterProvider.of(context);
    final weapons = character.weapons;
    final initiative = InitiativeModel(model: character).physical;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: BigText(text: 'Физ. инициатива: $initiative'),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: weapons.length,
                itemBuilder: (context, index) =>
                    WeaponWidget(model: weapons[index]))),
        
      ],
    );
  }
}
