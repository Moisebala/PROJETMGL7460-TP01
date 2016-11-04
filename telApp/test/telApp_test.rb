require 'test_helper'
require  'telApp'

class TelAppTest < Test::Unit::TestCase

  def test_supprimer_supprime_un_contact_affiche_nouvelle_liste
    rep=["moussa, balla, 5149876543", "sofiane, faidi, 5144439876", "guy, tremblay, 5146665432"]
    newRep=["sofiane, faidi, 5144439876", "guy, tremblay, 5146665432"]
    nom="moussa"
    supprimer(nom,rep)
    assert_match (rep[0]),newRep[0]
    assert_match (rep[1]),newRep[1]
  end
  
  def test_modifier_modifie_un_contact_affiche_nouveau_contact
    rep=["moussa, balla, 5149876543", "sofiane, faidi, 5144439876", "guy, tremblay, 5146665432"]
    nom= "moussa"
    numero="5143458787"
    contact = modifier(nom, numero, rep )

    assert_match (contact), "moussa, balla, 5143458787"
  end
  
  def test_afficher_affiche_la_liste_contact_de_bdt

    rep=["moussa, balla, 5149876543", "sofiane, faidi, 5144439876", "guy, tremblay, 5146665432"]
    afficher( rep )
    assert_match (rep[0]),"moussa, balla, 5149876543"
    assert_match (rep[1]),"sofiane, faidi, 5144439876"
    assert_match (rep[2]),"guy, tremblay, 5146665432"
  end
  
  def test_rechercher_affiche_contact_recherche_de_bd
    rep=["moussa, balla, 5149876543", "sofiane, faidi, 5144439876", "guy, tremblay, 5146665432"]
    nom="moussa"
    res=rechercher( nom,rep )
    assert_match (res),/moussa.*balla.*5149876543/
    end
  
  def test_ajouter_ajoute_un_contact_affiche_le_nouveau_contact
    rep=["moussa, balla, 5149876543", "sofiane, faidi, 5144439876", "guy, tremblay, 5146665432"]
    contact[]="michel", "lamarche", "4327650987"
    
    res= ajouter(contact[0], contact[1],contact[2], rep)
    assert_match (res[0]),contact[0]
    assert_match (res[1]),contact[1]
    assert_match (res[2]),contact[2]
  end
  end