def obtener_puntaje_promedio(encuestas)
  suma = 0.0
  for i in 0..encuestas.size-1
    suma = suma + encuestas[i]
  end
  result = (suma/encuestas.size).round(2)
  return result
end
    
def calcular_porcentaje_excelente(calificaciones)
  contador = 0.0
  for i in 0..calificaciones.size-1
    if (calificaciones[i] == 5.0)
      contador = contador + 1
    end
  end
  result = (contador * 100.0 / calificaciones.size).round(2)
  return result
end
    
def buscar_malos_pesimos(puntaje,analista)
  # Buscar como agregar elementos a un array
  # Utilizaremos funciones de agregar en ruby:
  # https://gistpages.com/posts/ruby_arrays_insert_append_length_index_remove
  
  # Inicializamos un array
  malos_pesimos = []
  # recorremos los puntajes
  for i in 0..puntaje.size-1
    if (puntaje[i] <= 2.0)
      # push, agrega un elemento al final del array
      malos_pesimos.push(analista[i]) # Agregagamos el analista con puntaje menor o igual a 2
    end
  end
  return malos_pesimos
end

#----------Zona de Test------------------
def test_obtener_puntaje_promedio
  puntaje1 = [5,3,5,3,2]
  puntaje2 = [3,2,3,5,1]
  puntaje3 = [1,5,3,4,5]
  
  print validate(3.60, obtener_puntaje_promedio(puntaje1))
  print validate(2.80, obtener_puntaje_promedio(puntaje2))
  print validate(3.60, obtener_puntaje_promedio(puntaje3))
end
    
def test_calcular_porcentaje_excelente
	
	puntaje1 = [3.6,5.0,4.5,2.2,1]
	puntaje2 = [2.3,1.2,5.0,2.5,5.0]
	puntaje3 = [1.1,1.0,3.2,2.7,3.5]

    print validate(20.00, calcular_porcentaje_excelente(puntaje1))
    print validate(40.00, calcular_porcentaje_excelente(puntaje2))
    print validate(0.00, calcular_porcentaje_excelente(puntaje3))
end

 def test_buscar_malos_pesimos
 
	puntaje1 = [3.6,1.4,4.5,2.2,1]
	analistas1 = ["Hugo","Paco","Luis","Jorge","Jose"]
	puntaje2 = [2.3,1.2,4.3,2.5,4.1]
	analistas2 = ["Hugo","Paco","Luis","Jorge","Jose"]
	puntaje3 = [1.1,1.2,3.2,2.7,3.5]
	analistas3 = ["Hugo","Paco","Luis","Jorge","Jose"]
	
    print validate(["Paco", "Jose"], buscar_malos_pesimos(puntaje1, analistas1))
    print validate(["Paco"], buscar_malos_pesimos(puntaje2, analistas2))
    print validate(["Hugo","Paco"], buscar_malos_pesimos(puntaje3, analistas3))
	
 end   
    
def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_obtener_puntaje_promedio
  puts " "
  test_calcular_porcentaje_excelente
  puts " "
  test_buscar_malos_pesimos
  puts " "
end

test
