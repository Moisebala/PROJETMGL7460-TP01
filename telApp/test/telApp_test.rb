require 'test_helper'
require 'telApp'

class TelAppTest < Test::Unit::TestCase

  def test_supprimer_supprime_un_contact_affiche_nouvelle_liste
    contact = Contact.new("moussa","balla","123456998")
    TelApp.supprimer()
    assert_equal(TelApp.supprimer().nom,contact.nom)
  end
  
  def test_modifier_modifie_un_contact_affiche_nouveau_contact
    contact = Contact.new("moussa","balla","123456998")
    TelApp.modifier(moussa,123456998 )
    assert_equal(TelApp.modifier(moussa,123456998 ).nom,contact.nom)
    assert_equal(TelApp.modifier(moussa,123456998 ).numeroTel,contact.numeroTel)

  end
  
  def test_afficher_affiche_la_liste_contact_de_bdt
    contact1 = Contact.new("moussa","balla","394943943")
    contact2 = Contact.new("sofiane","faidi","58485858495")
    rep =[contact1, contact2]
    repretoire=TelApp.afficher()
    assert_equal(repretoire[0],rep[0])
    assert_equal(repretoire[1],rep[1])
    
  end
  
  def test_rechercher_affiche_contact_recherche_de_bd
    contact = Contact.new("sofiane","faidi","58485858495")
    TelApp.rechercher(sofiane)
    assert_equal(TelApp.rechercher(sofiane).nom,contact.nom)
  end
  
  def test_ajouter_ajoute_un_contact_affiche_le_nouveau_contact
    contact = Contact.new("sof","fai","58458495")
    TelApp.ajouter(sof,fai,58458495)
    assert_equal(TelApp.ajouter(andre,lagafe,3246786).nom,contact.nom)
    assert_equal(TelApp.ajouter(andre,lagafe,3246786).prenom,contact.prenom)
    assert_equal(TelApp.ajouter(andre,lagafe,3246786).numeroTel,contact.numeroTel)
  end
end