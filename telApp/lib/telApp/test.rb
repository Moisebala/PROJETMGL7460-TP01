module Fichier

def  self.ouvre_fichier(nom_fichier,repertoire)
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


end



