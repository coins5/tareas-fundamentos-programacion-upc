#encoding:UTF-8
def calculaMenorDigito(numero)
  # Es importante no manipular directamente la variable "numero" mejor la guardamos en otra variable
  nuevoNumero = numero
  
  menorDigito = 9 # Utilizamos el valor mas grande que podamos encontrar de un solo digito
  while nuevoNumero > 0
    
    digito = nuevoNumero % 10 # Ejemplo:  123 % 10 = 3
    nuevoNumero = nuevoNumero / 10 # Ejemplo:  123 / 10 = 12
    
    # Comparamos el "digito" actual con el menor digito encontrado hasta ahora (menorDigito)
    if (digito < menorDigito)
      menorDigito = digito # Y lo asignamos en caso sea menor
    end
  end
  # Existe la posibilidad de que el número sea cero, en ese caso,
  # el bucle no va a iniciar ya que la condicion es que numero > 0
  # Para eso, usamos un if así no tendremos que modificar el bucle
  if (numero == 0)
    menorDigito = 0 # ya numero es cero, entonces "menorDigito" será 0
  end
  return menorDigito
end

def calculaMayorDigito(numero)
  # Lo mismo que el anterior, solo que en vez vamos a buscar el mayor
  nuevoNumero = numero
  
  mayorDigito = 0
  while nuevoNumero > 0
    
    digito = nuevoNumero % 10
    nuevoNumero = nuevoNumero / 10
    
    if (digito > mayorDigito) # Buscamos el mayor
      mayorDigito = digito
    end
  end
  if (numero == 0)
    menorDigito = 0
  end
  return mayorDigito
end

#--- zona de test ----

def validate(expected, value)    
  expected == value ? "." : "F"
end

def test_calculaMenorDigito
    print validate(2,calculaMenorDigito(586247))
    print validate(3,calculaMenorDigito(9586347))
    print validate(0,calculaMenorDigito(0))
    print validate(0,calculaMenorDigito(280963))
end

def test_calculaMayorDigito
    print validate(8,calculaMayorDigito(586247))
    print validate(9,calculaMayorDigito(9586347))
    print validate(0,calculaMayorDigito(0))
    print validate(7,calculaMayorDigito(250763))
end

def test  
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calculaMenorDigito
  puts " "
  test_calculaMayorDigito
  puts " "

end
test