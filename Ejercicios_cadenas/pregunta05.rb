def totalPacientes(encuestas1,encuestas2,encuestas3,encuestas4,encuestas5)

end

def nivelSatisfaccion(encuestas1,encuestas2,encuestas3,encuestas4,encuestas5)

end

def mayorNivel(asistentes,encuestas1,encuestas2,encuestas3,encuestas4,encuestas5)

end


#--- zona de test ----

def test_totalPacientes
  print validate(50,totalPacientes(@encuestas1a,@encuestas2a,@encuestas3a,@encuestas4a,@encuestas5a))
  print validate(40,totalPacientes(@encuestas1b,@encuestas2b,@encuestas3b,@encuestas4b,@encuestas5b))
end   

def test_nivelSatisfaccion
  print validate(54.0,nivelSatisfaccion(@encuestas1a,@encuestas2a,@encuestas3a,@encuestas4a,@encuestas5a))
  print validate(65.0,nivelSatisfaccion(@encuestas1b,@encuestas2b,@encuestas3b,@encuestas4b,@encuestas5b))
end

def test_mayorNivel
  print validate(["Elena Rojas", 90.0],mayorNivel(@asistentes,@encuestas1a,@encuestas2a,@encuestas3a,@encuestas4a,@encuestas5a))
  print validate(["Karen Rotalde", 75.0],mayorNivel(@asistentes,@encuestas1b,@encuestas2b,@encuestas3b,@encuestas4b,@encuestas5b))
end

def validate (expected, value)
  expected == value ? "." : "F"
end

def test
  
  @asistentes = ["Maria Quispe","Elena Rojas","Juan Palomino","Karen Rotalde","Melani Ugaz"]
  @encuestas1a = ["1","3","2","4","3","4","3","2","4","2"]
  @encuestas2a = ["3","3","4","4","3","2","3","4","4","3"]
  @encuestas3a = ["1","3","2","2","3","4","3","4","2","1"]
  @encuestas4a = ["1","2","1","2","3","2","3","4","4","3"]
  @encuestas5a = ["1","1","2","1","2","3","1","4","2","1"]
  @encuestas1b = ["1","3","2","4","3","2","3","4"]
  @encuestas2b = ["1","3","2","4","3","1","3","4"]
  @encuestas3b = ["1","3","2","4","3","2","3","4"]
  @encuestas4b = ["4","3","2","4","4","2","3","4"]
  @encuestas5b = ["1","3","2","4","3","2","3","4"]



  puts "Test de prueba del programa"    
  puts "---------------------------"
  test_totalPacientes
  test_nivelSatisfaccion
  test_mayorNivel
  puts " "
end
test