def calcularDias(cantidad)
  # Es importante no manipular directamente la variable "nuevoMonto" mejor la guardamos en otra variable
  nuevaCantidad = cantidad

  contadorDias = 0

  # El problema indica que este proceso se repite hasta que queda 1 miligramo o menos
  # Se puede entender también que el proceso se repetirá mientras la cantidad sea mayor a 1
  while (nuevaCantidad > 1)
    contadorDias = contadorDias + 1
    nuevaCantidad = nuevaCantidad * 0.8 # Esto es igual a => nuevaCantidad - (0.2 * nuevaCantidad)
  end
  return contadorDias
end

def calcularmedicina(dias,cantidad)
  # Es importante no manipular directamente la variable "nuevoMonto" mejor la guardamos en otra variable
  nuevaCantidad = cantidad

  # Nos piden cuánto de medicina queda en el cuerpo pasados una cantidad de dias
  for i in 1..dias
    nuevaCantidad = 0.8 * nuevaCantidad
  end
  return nuevaCantidad.round(2)
end

def calculardias2(cantidad,porcentaje)
  # Es importante no manipular directamente la variable "nuevoMonto" mejor la guardamos en otra variable
  nuevaCantidad = cantidad
  objetivo = cantidad * porcentaje

  contadorDias = 0
  while nuevaCantidad > (cantidad - objetivo) # Nos piden en cuánto tiempo haremos eliminado esta cantidad de medicina
    nuevaCantidad = nuevaCantidad * 0.8
    contadorDias = contadorDias + 1
  end

  return contadorDias
end

#--- zona de test ----

def test_calcularDias
  print validate(18, calcularDias(50)) 
  print validate(21, calcularDias(100)) 
  print validate(16, calcularDias(30)) 
end

def test_calcularmedicina
  print validate(26.21, calcularmedicina(5,80)) 
  print validate(16.78, calcularmedicina(8,100))
  print validate(25.60, calcularmedicina(3,50)) 
end

def test_calculardias2
  print validate(1, calculardias2(80,0.10)) 
  print validate(2, calculardias2(100,0.30))
  print validate(5, calculardias2(50,0.60)) 
end
def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  puts test_calcularDias
  puts test_calcularmedicina
  puts test_calculardias2
  puts " "
end
test