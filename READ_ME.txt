PROJETMGL7460-TP01

FONCTIONNALITES  ...................................................

01 - Ajouter un contact
02 - modifier un contact
03 - Supprimer un contact
04 - rechercher un contact Par defaut (Nom de Famille)

COMMANDES............................................................

$ gli scaffold telApp Ajouter modifier Supprimer rechercher affcher

require 'gli'
require 'rake'
require Õtest_helperÕ
require'cmdparse'
require'optparse'


  include GLI::App
  program_desc ÕApplication tlphoniqueÕ
  version telApp::VERSION
  

Option globale : Annuraire =foo.txt , en paramatre pour l'enregistrement des donnees

commande Ajouter [nom ,prenom,telephone,ID par defaut] le id de chaque contact est unique et gerer automatiquement .
command :ajouter do |c|
c.action ¨saisir (nom,prenom,telephone,adresse)
puts telApp.ajouter(nom, prnom, numroTl, adresse, global, f.readlines)
option : si un argument n'est pas saisi "message erreur"


commande modifier , une recherche est necessaire pour pouvoir modifier un contact .
commade modifier do |c|
c.find argument "nom" then  c.modifier[nom,prenom,telephone,adresse]
option : si le nom n'existe pas "contact non existant "


commande supprimer , une recherche est necessaire pour pouvoir supprimer un contact .
commade modifier do |c|
c.find argument "nom" then  c.supprimer[nom,prenom,telephone,adresse]
option : si le nom n'existe pas "contact non existant "


commande recherher ,affiche un contact ou tout les contacts ayant le meme nom avec un ID.
commade modifier do |c|
c.find argument "nom" then puts c[nom,prenom,telephone,adresse ,ID]
option : si le nom n'existe pas "contact non existant "



