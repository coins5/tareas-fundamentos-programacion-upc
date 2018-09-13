#encoding:UTF-8
def pregunta1(votos)
  contador = 0
  for i in 0..votos.size-1
    if (votos[i] == 'S')
      contador = contador + 1
    end
  end
  return contador
end

def pregunta2(votos)
  contador = 0
  for i in 0..votos.size-1
    if (votos[i] == 'S')
      contador = contador + 1
    end
  end
  porcentaje = (contador * 100.0 / votos.size).round(2)
  return porcentaje.to_s + "%"
end

def pregunta3(votos, departamentos)
  indiceLima = 0
  for i in 0..departamentos.size-1
    if (departamentos[i] == 'Lima')
      indiceLima = i
    end
  end
  return votos[indiceLima]
end

def pregunta4(votos, departamentos)
  votosLima = 0
  totalVotos = 0
  for i in 0..departamentos.size-1
    totalVotos = totalVotos + votos[i]
    if (departamentos[i] == 'Lima')
      votosLima = votos[i]
    end
  end
  porcentaje = ( votosLima * 100.00 / totalVotos ).round(2)
  return porcentaje.to_s + "%"
end


#--- zona de test ----
def test_pregunta1
  	print validate(15, pregunta1(@arreglo1))
end

def test_pregunta2
  	print validate("45.0%", pregunta2(@arreglo2))
end

def test_pregunta3
  	print validate(18300, pregunta3(@arreglo3, @arreglo4))
end

def test_pregunta4
  	print validate("54.31%", pregunta4(@arreglo3, @arreglo4))
end

def validate (expected, value)
 	expected == value ? "." : "F"
end

def test
	@arreglo1 = ["S", 'N', 'S', 'S', 'S', 'S', 'N', 'N', 'S', 'S', 'S', 'S', 'S', 'N', 'S' , 'S', 'N', 'S', 'S', 'S']
	@arreglo2 = ["N", 'N', 'S', 'N', 'N', 'S', 'N', 'N', 'S', 'N', 'S', 'N', 'S', 'N', 'N' , 'S', 'N', 'S', 'S', 'S']

	@arreglo3 = [1230, 542, 9344, 792, 18300, 2123, 823, 542]
	@arreglo4 = ["Piura", 'Tumbes', 'Arequipa', 'Tacna', 'Lima', 'Cusco', 'San Martín', 'Loreto']

  	puts "Test de prueba Superheroes"
  	puts "---------------------------"
  	test_pregunta1
  	test_pregunta2
  	test_pregunta3
  	test_pregunta4
  	puts " "

end

test