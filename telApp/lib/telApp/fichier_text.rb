module Fichier

def  self.ouvrir_fichier(nom_fichier,repertoire)
  if File.exist?(nom_fichier)
  bd = File.open(nom_fichier,"a+")
  bd.each_line do |line|
    repertoire << line
    end
  bd.close

  end
end
  def self.ecrire_fichier(nom_fichier ,repertoire)
    if File.exist?(nom_fichier)
    bd = File.open(nom_fichier,"w+")
    bd.puts(repertoire)
    bd.close
  end
  end

def self.copieTableau(contact, nom,nom_fichier)
  rep = []
  rep2 =[]
   ouvrir_fichier(nom_fichier, rep)
   rep.each do |line| unless line.match(/#{nom}/i)
                       rep2 << line
                     end
     end
  rep2.push contact
  ecrire_fichier(nom_fichier, rep2)
end

def self.trouver_contact(repertoire,nom)
  repertoire.select do |line|
    if line.match( /#{nom}/i )
      return line
    end
  end
end

end



