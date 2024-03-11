import 'package:flutter/material.dart';
import 'package:path_way_flu/app/data/model/language.dart';
import 'package:path_way_flu/main.dart';

AppBar appBarSetting(context){
      return AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton<Language>(
              items: Language.languageList()
                  .map((e) => DropdownMenuItem<Language>(
                        value: e,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(e.flag),
                            Text(e.name),
                          ],
                        ),
                      ))
                  .toList(),
              onChanged: (Language? language) {
                //----------
                MyApp.setLocal(context, Locale(language!.languageCode, ''));
              },
              underline: const SizedBox(),
              icon: const Icon(
                Icons.language,
                size: 30,
                color: Colors.white,
              ),
            ),
          )
        ],
      );
    }