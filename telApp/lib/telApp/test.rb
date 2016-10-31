module Fichier

def ouvre_fichier(nom_fichier)
  repertoire =[]
  if File.exist?(nom_fichier)
  bd = File.open(nom_fichier,"r+")
  bd.each_line { |line|
    repertoire.push line}

  bd.close

  end
  return repertoire
end

end

