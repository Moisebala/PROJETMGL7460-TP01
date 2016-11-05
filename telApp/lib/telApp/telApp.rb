module TelApp

  def self.modifier(nom, numero)
  rep=Tableau.tableaucontact()
  rep.each do |contact|
    if contact.nom.match( /#{nom}/i )
       contact.numeroTel=numero
    end
  end
  Tableau.retourTableau(rep)
  Tableau.trouver_contact(rep , nom)
  end


  def self.supprimer(nom)
    rep2=[]
    rep=Tableau.tableaucontact()
    rep.each do |contact| unless contact.nom.match(/#{nom}/i)
      rep2 << contact
      end
    end
    Tableau.retourTableau(rep2)
    Tableau.trouver_contact(rep , nom)
  end

  def self.afficher()
    rep=Tableau.tableaucontact()
    return rep
  end


  def self.ajouter(nom,prenom,numeroTel)
    rep=Tableau.tableaucontact()
    contact = Contact.new(nom ,prenom ,numeroTel)
    rep.push contact
    Tableau.retourTableau(rep)
    return contact
  end


  def self.rechercher(nom)
    rep=Tableau.tableaucontact()
    Tableau.trouver_contact(rep , nom)
  end
end
