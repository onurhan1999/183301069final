import 'package:flutter/material.dart';

class NavigationModel {
  String title;
  IconData icon;
  Action onNavigationSelection;

  NavigationModel({@required this.title, @required this.icon});
}

List<NavigationModel> navigationItems = [
  NavigationModel(icon: Icons.home_rounded, title: "Ana Sayfa"),
  NavigationModel(icon: Icons.person, title: "Kayıt Ol"),
  NavigationModel(icon: Icons.person, title: "Giriş Yap"),
  NavigationModel(icon: Icons.person, title: "SeoTalep"),
  NavigationModel(icon: Icons.person, title: "Admin Login"),
  NavigationModel(icon: Icons.person, title: "DomainFirms"),
  NavigationModel(icon: Icons.person, title: "Hostings"),
  NavigationModel(icon: Icons.person, title: "Adsenses"),
  NavigationModel(icon: Icons.person, title: "Domains"),
  NavigationModel(icon: Icons.person, title: "Daily Datas"),
  NavigationModel(icon: Icons.person, title: "Settings"),

];

