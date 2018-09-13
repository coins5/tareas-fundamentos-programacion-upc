#encoding:UTF-8
def promedio(notas)
  sum = 0.0
  for i in 0..notas.size-1
    sum = sum+ notas[i]
  end
  return sum / notas.size
end

def aprobados(notas)
  contadorAprobados = 0
  for i in 0..notas.size-1
    if (notas[i] > 12.5)
      contadorAprobados = contadorAprobados + 1
    end
  end
  return contadorAprobados
end

def desaprobados(notas)
  return notas.size - aprobados(notas)
end

def porcAprobados(notas)
  return aprobados(notas) * 100.0 / notas.size
end


#--- zona de test ----
def test_Promedio
  	print validate(13.05, promedio(@notas))
end

def test_Aprobados
  	print validate(12, aprobados(@notas))
end

def test_Desaprobados
  	print validate(8, desaprobados(@notas))
end

def test_PorcAprobados
  	print validate(60, porcAprobados(@notas))
end

# Validación 

def validate (expected, value)
 	expected == value ? "." : "F"
end

def test
	@notas = [10, 14, 13, 9, 11, 20, 14, 17, 15, 13, 8, 14, 12, 13, 16, 10, 8, 9, 16, 19]

  	puts "Test de prueba Estadisticas"
  	puts "---------------------------"
  	test_Promedio
  	test_Aprobados
  	test_Desaprobados
  	test_PorcAprobados
  	puts " "

end

test