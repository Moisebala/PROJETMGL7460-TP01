Module Fichier

def ouvre_fichier(nom_fichier)
  repertoire =[]
  bd = File.open(nom_fichier,"r+")
  bd.each_line { |line|
    repertoire.push line}

  return repertoire

  end

def self.afficher(nom_fichier)
  rep=['a','b']
  bd=File.open(nom_fichier,"w+") do |f|
    rep.each  { |element| f.puts(element) }
    puts rep
  end
end

array_line = []

if File.exist? 'test.txt'
  File.foreach( 'test.txt' ) do |line|
    array_line.push line
  end
end


