#encoding:UTF-8
def pregunta1_1(puntaje)
  sum = 0.0
  for i in 0..puntaje.size-1
    sum = sum + puntaje[i]
  end
  promedio = sum / puntaje.size
  return promedio.round(2) 
end

def pregunta1_2(sexo, edad)
  sum = 0.0
  cant_m = 0.0
  for i in 0..sexo.size-1
    if (sexo[i] == "M")
      sum = sum + edad[i]
      cant_m = cant_m + 1
    end
  end
  promedio = sum / cant_m
  return promedio.round(2)
end

def pregunta1_3(sexo, puntaje)
  sum = 0.0
  cant_f = 0.0
  for i in 0..sexo.size-1
    if (sexo[i] == "F")
      sum = sum + puntaje[i]
      cant_f = cant_f + 1
    end
  end
  promedio = sum / cant_f
  return promedio.round(2)
end

def pregunta1_4(sexo, edad, puntaje)
  sum = 0.0
  cant_m = 0.0
  for i in 0..sexo.size-1
    if (sexo[i] == "M" and edad[i] < 35)
      sum = sum + puntaje[i]
      cant_m = cant_m + 1
    end
  end
  promedio = sum / cant_m
  return promedio.round(2)
end

#--- zona de test ----
def test_Pregunta1
  	print validate(6.17, pregunta1_1(@puntajes))
  	print validate(47.5, pregunta1_2(@sexos, @edades))
  	print validate(6.5, pregunta1_3(@sexos, @puntajes))
  	print validate(5.0, pregunta1_4(@sexos, @edades, @puntajes))
end

def validate (expected, value)
 	expected == value ? "." : "F"
end

def test
	@sexos = ['M', 'F', 'F', 'M', 'M', 'M']
	@edades = [45, 25, 36, 32, 50, 63]
	@puntajes = [7, 8, 5, 5, 4, 8]

  	puts "Test de prueba"
  	puts "------------------"
  	test_Pregunta1  
  	puts " "

end
test