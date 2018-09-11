#encoding:UTF-8

#Estas funciones estaban al revés, no confundirse
def cuantas_repeticiones(numero, digito)
  # Es importante no manipular directamente la variable "numero" mejor la guardamos en otra variable
  nuevoNumero = numero
  contador = 0
  
  # recorremos los digitos
  while nuevoNumero > 0

    digitoActual = nuevoNumero % 10 # Ejemplo:  123 % 10 = 3
    nuevoNumero = nuevoNumero / 10 # Ejemplo:  123 / 10 = 12
    
    if (digito == digitoActual)
      #contamos los digitos
      contador = contador + 1
    end
  end
  return contador
end

def digito_que_mas_se_repite(numero)
  # Esta función ya estaba aquí
  maximaCuenta  = 0
  while numero > 0
    nuevonum = numero
    dig = numero % 10
    contador = 0
    while nuevonum > 0
      residuo = nuevonum % 10
      if residuo == dig
        contador = contador + 1
      end
      nuevonum = nuevonum / 10
    end
    if contador > maximaCuenta
      maximaCuenta = contador
      maximoDigito = dig
    end
    numero = numero / 10
  end
  return maximoDigito
end

#--- zona de test ----
def test_digito_que_mas_se_repite
  	print validate(1, digito_que_mas_se_repite(112233445566771))
    print validate(5, digito_que_mas_se_repite(152533455566571))
    print validate(1, digito_que_mas_se_repite(1010011011))
end

def test_cuantas_repeticiones
  	print validate(3, cuantas_repeticiones(112233445566771, 1))
    print validate(2, cuantas_repeticiones(12340567089, 0))
end

def validate (expected, value)
 	expected == value ? "." : "F"
end

def test
  	puts "Test de prueba Practica 2"
  	puts "--------------------------"
  	test_digito_que_mas_se_repite  
  	puts " "
  	test_cuantas_repeticiones  
  	puts " "
end
test