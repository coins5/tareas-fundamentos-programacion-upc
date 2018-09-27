def decodificarPalabra(palabra)
	
end
    
def tieneSegundaDecodificacion(palabra)
	
end

def realizarSegundaDecodificacion(palabra)
	
end

#----------Zona de Test------------------

def test_decodificarPalabra
  print validate("HOLA", decodificarPalabra("AHEROTYLWEAN"))
  print validate("PERFECTA", decodificarPalabra("RPEREWERVBFGHESDCJKTASAA"))
  print validate("1ERAVEZ", decodificarPalabra("Q1WEERTRYUAIOVPLEKJZH"))
end
    
def test_tieneSegundaDecodificacion
	print validate(false, tieneSegundaDecodificacion("AHEROTYLWEAN"))
    print validate(false, tieneSegundaDecodificacion("RPEREWERVBFGHESDCJKTASAA"))
	print validate(true, tieneSegundaDecodificacion("Q1WEERTRYUAIOVPLEKJZH"))
end

def test_realizarSegundaDecodificacion
	print validate("NECESITO", realizarSegundaDecodificacion("7NUCUSETA"))
    print validate("APROBAR", realizarSegundaDecodificacion("6OPRABOR"))
    print validate("EL", realizarSegundaDecodificacion("2UL"))
    print validate("CURSO", realizarSegundaDecodificacion("3CIRSA"))
end

#----------------zona de test-----------------

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
	puts "Test de prueba del programa"
	puts "---------------------------"
	puts test_decodificarPalabra
	puts test_tieneSegundaDecodificacion
	puts test_realizarSegundaDecodificacion
	puts " "
end
test
