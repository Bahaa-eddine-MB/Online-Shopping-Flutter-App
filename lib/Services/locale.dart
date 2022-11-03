import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main.dart';

class MyLocale implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "en": {
          "HomePage": "Home",
          //////////////////////////

          "homeItems1": "Houses",
          "homeItems2": "Cars",
          "homeItems3": "Clothes",
          "homeItems4": "Books",
          "homeItems5": "Electrical machines",
          "homeItems6": "HardWare",
          //////////////////////////

          "drawer1": "My Profile",
          "drawer2": "second page",
          "drawer3": "third page",
          "drawer4": "Disconnect",
          //////////////////////////
          "addProd1": "Title :",
          "addProd2": "Enter a title",
          "addProd3": "Product type :",
          "addProd4": "Product Price :",
          "addProd5": "Price",
          "addProd6": "Condition :",
          "addProd7": "Old",
          "addProd8": "New",
          "addProd9": "Product description :",
          "addProd10": "Add a description",
          "addProd11": "Post",
          //////////////////////////
          "SearchPage1": "Search for something",

          //////////////////////////
          "ProfilPage1": "Call",
          "ProfilPage2": "Mail",
          "ProfilPage3": "Products",
          "ProfilPage4": "Sells",
          "ProfilPage5": "Followers",

          //////////////////////////
          "LogingScreen1": "Welcome Back !",
          "LogingScreen2": "Email Address",
          "LogingScreen3": "Password",
          "LogingScreen4": "Forgot Password?",
          "LogingScreen5": "Sign in",
          "LogingScreen6": "Don't have an account ?",
          "LogingScreen7": "Sign up!",

          //////////////////////////
          "RegistrationPage1": "Let's Get Started !",
          "RegistrationPage2": "Create an account to access all the features",
          "RegistrationPage3": "Username",
          "RegistrationPage4": "Email address",
          "RegistrationPage5": "Phone number",
          "RegistrationPage6": "Password",
          "RegistrationPage7": "Confirm password",
          "RegistrationPage8": "Sign up",
          "RegistrationPage9": "You already have an account ?",
          "RegistrationPage10": "Log-in",

          //////////////////////////
          "ForgetPasswordPage1":
              "Enter your email and a notification will be sent to you",
          "ForgetPasswordPage2": "Send",

          //////////////////////////
          "ConfirmPassword1":
              "We have sent you a verification email\ncheck your inbox",
          "ConfirmPassword2": "Resend",

          //////////////////////////

          "EditProfilePage1": "First name",
          "EditProfilePage2": "Enter your first name",
          "EditProfilePage3": "Last name",
          "EditProfilePage4": "Enter your Last name",
          "EditProfilePage5": "Phone number",
          "EditProfilePage6": "Confirm changes",
          //////////////////////////
        },

        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        "fr": {
          "HomePage": "Accueil",
          //////////////////////////

          "homeItems1": "Maisons",
          "homeItems2": "Voitures",
          "homeItems3": "Vêtements",
          "homeItems4": "Livres",
          "homeItems5": "Machines électriques",
          "homeItems6": "Matériel",
          //////////////////////////

          "drawer1": "Mon profil",
          "drawer2": "deuxième page",
          "drawer3": "troisième page",
          "drawer4": "Déconnecter",
          //////////////////////////

          "addProd1": "Titre :",
          "addProd2": "Entrez un titre",
          "addProd3": "Type de produit :",
          "addProd4": "Prix du produit :",
          "addProd5": "Prix",
          "addProd6": "Condition :",
          "addProd7": "ancien",
          "addProd8": "Nouveau",
          "addProd9": "Description du produit :",
          "addProd10": "Ajoutez une description",
          "addProd11": "Publier",

          //////////////////////////
          "SearchPage1": "Rechercher quelque chose",

          //////////////////////////
          "ProfilPage1": "Appel",
          "ProfilPage2": "Courrier",
          "ProfilPage3": "Des produits",
          "ProfilPage4": "Ventes",
          "ProfilPage5": "Abonnés",

          //////////////////////////
          "LogingScreen1": "Content de te revoir !",
          "LogingScreen2": "Adresse e-mail",
          "LogingScreen3": "Mot de passe",
          "LogingScreen4": "Mot de passe oublié?",
          "LogingScreen5": "S'identifier",
          "LogingScreen6": "Vous n'avez pas de compte ?",
          "LogingScreen7": "S'inscrire!",

          //////////////////////////
          "RegistrationPage1": "Commençons !",
          "RegistrationPage2":
              "Créez un compte pour accéder à toutes les fonctionnalités",
          "RegistrationPage3": "Nom d'utilisateur",
          "RegistrationPage4": "Adresse e-mail",
          "RegistrationPage5": "Numéro de téléphone",
          "RegistrationPage6": "Mot de passe",
          "RegistrationPage7": "Confirmez le mot de passe",
          "RegistrationPage8": "S'inscrire",
          "RegistrationPage9": "Avez vous déjà un compte ?",
          "RegistrationPage10": "Connexion",

          //////////////////////////
          "ForgetPasswordPage1":
              "Entrez votre email et une notification vous sera envoyée",
          "ForgetPasswordPage2": "envoyer",

          //////////////////////////
          "ConfirmPassword1":
              "Nous vous avons envoyé un e-mail de vérification\nvérifier votre boîte de réception",
          "ConfirmPassword2": "Renvoyer",

          //////////////////////////

          "EditProfilePage1": "Prénom",
          "EditProfilePage2": "Entrez votre prénom",
          "EditProfilePage3": "Nom de famille",
          "EditProfilePage4": "Entrez votre nom de famille",
          "EditProfilePage5": "Numéro de téléphone",
          "EditProfilePage6": "Confirmer les modifications",
          //////////////////////////
        }
      };

 
  static Locale initLang() {
     if (sharredPrefs!.getString("codeLang") == null) {
      return Get.deviceLocale!;
    } else {
      return Locale(sharredPrefs!.getString("codeLang")!);
    }
  }
}
