abstract class Failure {
  String code;
}

abstract class BottomPlacedException extends Failure {}

class UnImplementedFailure extends BottomPlacedException {
  final code = "Une erruer s'est produite";
}

class NetworkException extends BottomPlacedException {
  final code = "Erreur connexion reseau";
}

abstract class AuthException extends Failure {}

abstract class PasswordException extends AuthException {}

abstract class EmailException extends AuthException {}

class WeakPasswordException extends PasswordException {
  final code = "Mot de passe doit contenir au moins 6 caractères";
}

class WrongPasswordException extends PasswordException {
  final code = "Mot de passe érroné.";
}

class InvalidEmailException extends EmailException {
  final code = "Email invalide.";
}

class NotFoundEmailException extends EmailException {
  final code = "Utilisateur avec cet Email n'existe pas.";
}

class EmailInUseException extends EmailException {
  final code = "Email déjà utilisé";
}

class NoUserSignedInException extends AuthException {
  final code = "Pas d'utilisateur inscris";
}

class NoException extends Failure {}
