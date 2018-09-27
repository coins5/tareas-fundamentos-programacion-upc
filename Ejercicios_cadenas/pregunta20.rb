#encoding:UTF-8
def obtenerLetraDesplazada(abecedario,letra,desplazamiento)
	 
end
    
def cifrado(texto,desplazamiento,abecedario)
    
end

#----------Zona de Test------------------

def test_obtenerLetraDesplazada
  print validate("X", obtenerLetraDesplazada(@abecedario,"U",3))
  print validate("Q", obtenerLetraDesplazada(@abecedario,"N",3))
  print validate("", obtenerLetraDesplazada(@abecedario,"",3))
  print validate("W", obtenerLetraDesplazada(@abecedario,"T",3))
  print validate("H", obtenerLetraDesplazada(@abecedario,"E",3))
  print validate("A", obtenerLetraDesplazada(@abecedario,"X",3))
  print validate("W", obtenerLetraDesplazada(@abecedario,"T",3))
  print validate("R", obtenerLetraDesplazada(@abecedario,"O",3))
  
  print validate("B", obtenerLetraDesplazada(@abecedario,"Z",2))
  print validate("G", obtenerLetraDesplazada(@abecedario,"E",2))
  print validate("V", obtenerLetraDesplazada(@abecedario,"T",2))
  print validate("C", obtenerLetraDesplazada(@abecedario,"A",2))
  
  print validate("C", obtenerLetraDesplazada(@abecedario,"Y",4))
  print validate("E", obtenerLetraDesplazada(@abecedario,"A",4))
  print validate("", obtenerLetraDesplazada(@abecedario,"",4))
  print validate("I", obtenerLetraDesplazada(@abecedario,"E",4))
  print validate("W", obtenerLetraDesplazada(@abecedario,"S",4))
  print validate("X", obtenerLetraDesplazada(@abecedario,"T",4))
  print validate("E", obtenerLetraDesplazada(@abecedario,"A",4))
end
    
def test_cifrado
	print validate("XQ WHAWR", cifrado("UN TEXTO",3,@abecedario))
    print validate("BGVC", cifrado("ZETA",2,@abecedario))
	print validate("CE IWXE", cifrado("YA ESTA",4,@abecedario))
end

#----------------zona de test-----------------

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
	@abecedario = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
		
	puts "Test de prueba del programa"
	puts "---------------------------"
	test_obtenerLetraDesplazada
	test_cifrado
	puts " "
end
test
