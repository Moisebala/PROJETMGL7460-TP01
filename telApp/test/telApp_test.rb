require 'test_helper'
require  'telApp'

class TelAppTest < Test::Unit::TestCase

  def test_supprimer_supprime_un_contact_affiche_nouvelle_liste
    contact = Contact.new("aaaa","bbbbb","123456")
    assert_equal("aaaa",contact.nom)
  end
  
  def test_modifier_modifie_un_contact_affiche_nouveau_contact
    contact = Contact.new("aaaa","bbbbb","123456")
    assert_equal("aaaa",contact.nom)

  end
  
  def test_afficher_affiche_la_liste_contact_de_bdt
    contact = Contact.new("aaaa","bbbbb","123456")
    assert_equal("bbbbb",contact.prenom)

  end
  
  def test_rechercher_affiche_contact_recherche_de_bd
    contact = Contact.new("aaaa","bbbbb","123456")
    repertoire =[contact]
    Tableau.trouver_contact(repertoire,"aaaa")
    assert_equal("aaaa",contact.nom)
    end
  
  def test_ajouter_ajoute_un_contact_affiche_le_nouveau_contact
    contact = Contact.new("aaaa","bbbbb","123456")
    assert_equal("aaaa",contact.nom)
  end
  end