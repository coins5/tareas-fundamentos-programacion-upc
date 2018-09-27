def vocalQueMasSeRepite(listado)
	contador = [0,0,0,0,0]

	#***** Escriba aqui su codigo *****

end
    
def obtenerPosicionDeElementoMayor( contador )
	#***** Escriba aqui su codigo *****

	
end

#----------Zona de Test------------------

def test_vocalQueMasSeRepite
  print validate("a", vocalQueMasSeRepite( ["Teresa","Yessenia","Veronica","Evangelina","Alonso","Martin"]))
  print validate("e", vocalQueMasSeRepite( ["Edelmira","Edgard","Ernesto","Eustaquio","Elena"]))
  print validate("i", vocalQueMasSeRepite( ["Iago","Ian","Icaro","Idoia","Ifigenio"]))
  print validate("o", vocalQueMasSeRepite( ["Obdulio","Obadias","Octavio","Octaviano","Odeberto"]))
  print validate("u", vocalQueMasSeRepite( ["Ubaldo","Uldarico","Ulfrido","Ulises","Ursula"]))

end

def test_obtenerPosicionDeElementoMayor    
  print validate(4, obtenerPosicionDeElementoMayor( [0,1,2,3,4] ) ) 
  print validate(3, obtenerPosicionDeElementoMayor( [9,8,7,10,1] ) ) 
  print validate(5, obtenerPosicionDeElementoMayor( [2,4,6,8,11,20,3,5,7,9] ) ) 
end

#----------------zona de test-----------------
def validate (expected, value)
 expected == value ? "." : "F"
end

def test
	puts "Test de vocalQueMasSeRepite"
	puts "---------------------------"
	puts test_vocalQueMasSeRepite
	puts " "
	puts "Test de obtenerPosicionDeElementoMayor"
	puts "---------------------------"
	puts test_obtenerPosicionDeElementoMayor
	puts " "
end
test
