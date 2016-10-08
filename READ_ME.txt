PROJETMGL7460-TP01

FONCTIONNALITES  ...................................................

01 - Ajouter un contact
02 - modifier un contact
03 - Supprimer un contact
04 - rechercher un contact Par defaut (Nom de Famille)

COMMANDES............................................................

$ gli scaffold telApp Ajouter modifier Supprimer rechercher 

require 'gli'
require 'rake'
require Õtest_helperÕ
require'cmdparse'
require'optparse'


  include GLI::App
  program_desc ÕApplication tlphoniqueÕ
  version telApp::VERSION
  

Option globale : Annuraire =foo.txt , en paramatre pour l'enregistrement des donnees

commande Ajouter prend en argument [nom ,prenom,telephone,adresse,ID par defaut]  en commencant par le nom jusqu'a
l'adresse , seule le ID est attribuer automatiquement a la creation de chaque contact .
command :ajouter do |c|
c.action ¨saisir (nom,prenom,telephone,adresse)
puts telApp.ajouter(nom, prnom, num, adresse, f.readlines)
option : si un argument n'est pas saisi "message erreur"

commande recherher ,affiche un contact ou tout les contacts ayant le meme nom.
commade modifier do |c|
c.find argument "nom" then puts c[nom,prenom,telephone,adresse ,ID]
option : si le nom n'existe pas "contact non existant "


commande modifier , une recherche est necessaire pour pouvoir modifier un contact donc elle fait appel a la commande
rechercher pour trouver tout les contacts avec le nom entrer , ensuite l'utilisateur choisit le ID du contact a motifier.
commade modifier do |c|
c.find argument "nom" then  c.modifier[nom,prenom,telephone,adresse]
option : si le nom n'existe pas "contact non existant "


commande supprimer , une recherche est necessaire pour pouvoir supprimer un contactd onc elle fait appel a la commande
rechercher pour trouver tout les contacts avec le nom entrer, ensuite l'utilisateur choisit le ID du contact a supprimer.
commade modifier do |c|
c.find argument "nom" then  c.supprimer[nom,prenom,telephone,adresse]
option : si le nom n'existe pas "contact non existant "






