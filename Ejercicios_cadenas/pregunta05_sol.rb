def totalPacientes(encuestas1,encuestas2,encuestas3,encuestas4,encuestas5)
	suma = 0
	suma = encuestas1.size + encuestas2.size + encuestas3.size + encuestas4.size + encuestas5.size	
	return(suma)
end

def nivelSatisfaccion(encuestas1,encuestas2,encuestas3,encuestas4,encuestas5)
	cont = 0
	for i in 0..encuestas1.size-1
		if encuestas1[i] == "3" or encuestas1[i] == "4"	
			cont = cont +1
		end
	end
	for i in 0..encuestas2.size-1
		if encuestas2[i] == "3" or encuestas2[i] == "4"	
			cont = cont +1
		end
	end
	for i in 0..encuestas3.size-1
		if encuestas3[i] == "3" or encuestas3[i] == "4"	
			cont = cont +1
		end
	end
	for i in 0..encuestas4.size-1
		if encuestas4[i] == "3" or encuestas4[i] == "4"	
			cont = cont +1
		end
	end
	for i in 0..encuestas5.size-1
		if encuestas5[i] == "3" or encuestas5[i] == "4"	
			cont = cont +1
		end
	end
	total = totalPacientes(encuestas1,encuestas2,encuestas3,encuestas4,encuestas5)
	return (cont*100/total).round(2)
end


def mayorNivel(asistentes,encuestas1,encuestas2,encuestas3,encuestas4,encuestas5)
	cont = 0
	for i in 0..encuestas1.size-1
		if encuestas1[i] == "3" or encuestas1[i] == "4"	
			cont = cont +1
		end
	end
	nivel1=(cont*100/encuestas1.size).round(2)	
	cont = 0
	for i in 0..encuestas2.size-1
		if encuestas2[i] == "3" or encuestas2[i] == "4"	
			cont = cont +1
		end
	end
	nivel2=(cont*100/encuestas2.size).round(2)	
	cont = 0
	for i in 0..encuestas3.size-1
		if encuestas3[i] == "3" or encuestas3[i] == "4"	
			cont = cont +1
		end
	end
	nivel3=(cont*100/encuestas3.size).round(2)	
	cont = 0
	for i in 0..encuestas4.size-1
		if encuestas4[i] == "3" or encuestas4[i] == "4"	
			cont = cont +1
		end
	end
	nivel4=(cont*100/encuestas4.size).round(2)	
	cont = 0
	for i in 0..encuestas5.size-1
		if encuestas5[i] == "3" or encuestas5[i] == "4"	
			cont = cont +1
		end
	end
	nivel5=(cont*100/encuestas5.size).round(2)	
	mayor = 0
	indice = 0
	if nivel1 > nivel2
		mayor = nivel1
		indice = 0
	else
		mayor = nivel2
		indice = 1
	end
	if nivel3 > mayor
		mayor = nivel3
		indice = 2
	end
	if nivel4 > mayor
		mayor = nivel4
		indice = 3
	end
	if nivel5 > mayor
		mayor = nivel5
		indice = 4
	end
	arr1=Array.new
	arr1.push(asistentes[indice])
	arr1.push(mayor)
	return (arr1)
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