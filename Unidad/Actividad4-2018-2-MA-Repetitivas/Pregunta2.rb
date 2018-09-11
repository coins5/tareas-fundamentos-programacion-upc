def ConteoYPromedio(numero)
  # Inicializamos las variables que vamos a utilizar
  promedio = 0
  # Es importante no manipular directamente la variable "numero" mejor la guardamos en otra variable
  nuevoNumero = numero
  contador = 0.0
  sumaDigitos = 0.0
  # recorremos los digitos
  while nuevoNumero > 0
    #contamos los digitos
    contador = contador + 1

    digito = nuevoNumero % 10 # Ejemplo:  123 % 10 = 3
    nuevoNumero = nuevoNumero / 10 # Ejemplo:  123 / 10 = 12
    #sumamos los digitos
    sumaDigitos = sumaDigitos + digito
  end
  # obtenemos el promedio
  promedio = sumaDigitos / contador

  # Es importante no manipular directamente la variable "numero" mejor la guardamos en otra variable
  nuevoNumero2 = numero
  # Variable contadora de dígitos mayores al promedio
  contadorMayoresAPromedio = 0
  while nuevoNumero2 > 0
    digito = nuevoNumero2 % 10 # Ejemplo:  123 % 10 = 3
    nuevoNumero2 = nuevoNumero2 / 10 # Ejemplo:  123 / 10 = 12

    # solo contaremos aquellos digitos mayores al promedio
    if (digito > promedio)
      contadorMayoresAPromedio = contadorMayoresAPromedio + 1
    end
  end

  return contadorMayoresAPromedio
end

def MayorSuma(numero)
  # Es importante no manipular directamente la variable "numero" mejor la guardamos en otra variable
  nuevoNumero = numero

  # Inicializamos las variables que vamos a utilizar
  sumaDigitosPares = 0.0
  sumaDigitosImpares = 0.0
  while nuevoNumero > 0

    digito = nuevoNumero % 10 # Ejemplo:  123 % 10 = 3
    nuevoNumero = nuevoNumero / 10 # Ejemplo:  123 / 10 = 12
    
    # Vamos a contar por separado los numeros pares de los impares
    if (digito % 2 == 0)
      sumaDigitosPares = sumaDigitosPares + digito
    else 
      sumaDigitosImpares = sumaDigitosImpares + digito
    end
  end

  # Al final del while podemos ver cual contador es mayor
  if (sumaDigitosPares > sumaDigitosImpares)
    return "Pares"
  else 
    return "Impares"
  end
end

#--- zona de test ----

def test_ConteoYPromedio
    print validate(5, ConteoYPromedio(5432456643237)) 
    print validate(12, ConteoYPromedio(64454638675432346636654)) 
    print validate(10, ConteoYPromedio(7643993542359998762)) 
    print validate(3, ConteoYPromedio(124325523))
end

def test_MayorSuma
    print validate("Pares", MayorSuma(5432456643237))
    print validate("Pares", MayorSuma(64454638675432346636654))
    print validate("Impares", MayorSuma(7643993542359998762))
    print validate("Impares", MayorSuma(124325523))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  puts "---Prueba conteo y promedio--"
  test_ConteoYPromedio
  puts ""
  puts "---prueba Mayor suma par impar---"
  test_MayorSuma
  puts " "
end

test