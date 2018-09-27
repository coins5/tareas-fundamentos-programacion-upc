def obtenerEstadoChip(chips, serie)


end
    
def obtenerNumeroChipRobados(chips,cod_operadora)



end

def obtenerChipAntiguos(chips)
	

end

#----------Zona de Test------------------

def test_obtenerEstadoChip
  print validate("N", obtenerEstadoChip(@chips, "Y9WA7"))
  print validate("R", obtenerEstadoChip(@chips, "M3UP4"))
  print validate("N", obtenerEstadoChip(@chips, "L2QX1"))
end
    
def test_obtenerNumeroChipRobados
	print validate(0, obtenerNumeroChipRobados(@chips,"OPER1"))
    print validate(1, obtenerNumeroChipRobados(@chips,"OPER2"))
    print validate(2, obtenerNumeroChipRobados(@chips,"OPER3"))
end

def test_obtenerChipAntiguos
	print validate(2, obtenerChipAntiguos(@chips))
    print validate(4, obtenerChipAntiguos(@chips2))
end

#----------------zona de test-----------------

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
	@chips = ["OPER2R2017X3LM5",
		      "OPER1N2016Y9WA7",
		      "OPER2N2017A1GS2",
		      "OPER3R2015M3UP4",
		      "OPER3R2014Z7KJ9",
		      "OPER1N2016L2QX1",
		      "OPER2N2013B0PV6"]

	@chips2 = ["OPER3R2013N3LQ6",
		       "OPER1N2016Y9SL1",
		       "OPER1R2011M1JC0",
		       "OPER2R2015E3EG2",
		       "OPER3R2014V7BY7",
		       "OPER1N2016W2ZR5",
		       "OPER3R2013I0FP3"]		      
		
	puts "Test de prueba del programa"
	puts "---------------------------"
	test_obtenerEstadoChip
	puts " "
	test_obtenerNumeroChipRobados
	puts " "
	test_obtenerChipAntiguos
	puts " "
end
test
