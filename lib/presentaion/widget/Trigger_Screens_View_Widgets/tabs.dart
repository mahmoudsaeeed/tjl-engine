import 'package:flutter/material.dart';
import 'package:tjl/utils/constants.dart';

List<Widget> tabs = [
  Tab(
    text: langDef[all]![lang],
  ),
  Tab(
    text: langDef[nonRefurbished]![lang],
  ),
  Tab(
    text: langDef[refurbished]![lang],
  ),
];