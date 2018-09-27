def obtenerEstadoPaquete(paquetes, codigo)
	 
end
    
def obtenerNumeroPaquetesRetrasados(paquetes,codigo)

end

def obtenerPaquetesDespues18Horas(paquetes)
	
end

#----------Zona de Test------------------

def test_obtenerEstadoPaquete
  print validate("X", obtenerEstadoPaquete(@paquetes, "23DF"))
  print validate("D", obtenerEstadoPaquete(@paquetes, "I00E"))
  print validate("C", obtenerEstadoPaquete(@paquetes, "9983"))
end
    
def test_obtenerNumeroPaquetesRetrasados
	print validate(2, obtenerNumeroPaquetesRetrasados(@paquetes,"ARQCHI"))
    print validate(0, obtenerNumeroPaquetesRetrasados(@paquetes,"LIMPIU"))
end

def test_obtenerPaquetesDespues18Horas
	print validate(4, obtenerPaquetesDespues18Horas(@paquetes))
    print validate(2, obtenerPaquetesDespues18Horas(@paquetes2))
end

#----------------zona de test-----------------

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
	@paquetes = ["LIMPIUX23DF15:33",
		       "ARQCHIDI00E22:10",
		       "LIMPIUC998310:00",
		       "COPCP0C234D19:35",
		       "LIMPIUC280D18:01",
		       "LIMPIUX079C19:55",
		       "ARQCHID123C15:35"]

	@paquetes2 = ["LIMPIUX23DF21:33",
		       "ARQCHIDI00E22:10"]
		
	puts "Test de prueba del programa"
	puts "---------------------------"
	test_obtenerEstadoPaquete
	test_obtenerNumeroPaquetesRetrasados
	test_obtenerPaquetesDespues18Horas
	puts " "
end
test
