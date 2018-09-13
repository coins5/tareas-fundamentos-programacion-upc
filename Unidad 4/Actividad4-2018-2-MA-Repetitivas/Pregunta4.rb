def CostoTransporte(mes)
  # Asignamos los valores de la tabla
  incrementoTransporte = 0
  case(mes)
    when 1
      incrementoTransporte = 0.04
    when 2
      incrementoTransporte = 0.05
    when 3
      incrementoTransporte = 0.06
    when 4
      incrementoTransporte = 0.03
    when 5
      incrementoTransporte = 0.04
    when 6
      incrementoTransporte = 0.09
    when 7
      incrementoTransporte = 0.06
    when 8
      incrementoTransporte = 0.05
    when 9
      incrementoTransporte = 0.02
    when 10
      incrementoTransporte = 0.02
    when 11
      incrementoTransporte = 0.03
    when 12
      incrementoTransporte = 0.04
  end	

  return (1 + incrementoTransporte)
end

def VarPrecio (mes)
  # Asignamos los valores de la tabla
  incrementoPrecio = 0
  case(mes)
    when 1
      incrementoPrecio = -0.06
    when 2
      incrementoPrecio = -0.08
    when 3
      incrementoPrecio = -0.06
    when 4
      incrementoPrecio = 0.04
    when 5
      incrementoPrecio = 0.02
    when 6
      incrementoPrecio = 0.1
    when 7
      incrementoPrecio = 0.11
    when 8
      incrementoPrecio = 0.11
    when 9
      incrementoPrecio = 0.03
    when 10
      incrementoPrecio = 0.04
    when 11
      incrementoPrecio = 0.03
    when 12
      incrementoPrecio = 0.04
  end 
  return (1 + incrementoPrecio)
end

def mesMejorRentabilidad(costoprod)
  # precioMercado = precio * cantidad
  # rentabilidad = precioMercado - transporte - 0.4 * (precioMercado)
  # => rentabilidad = 0.6 * precioMercado - transporte

  # Asumimos estos precios ya que están en el archivo word
  precio = 1
  cantidad = 3500
  precioTransporte = 1500

  precioMercado = precio * cantidad

  mayorRentabilidad = 0
  mesMasRentable = 1
  for i in 1..12 # Recorremos los meses

    # Calculamos los precios utilizando las funciones de arriba
    precioMercado = precioMercado * (1 + VarPrecio(i)) 
    precioTransporte = precioTransporte * (1 + CostoTransporte(i))

    # En los comentarios de arriba (línea 67 a 69) demostramos que se puede calcular de esta forma
    rentabilidad = ((100 - costoprod)/100.0) * (precioMercado) - precioTransporte

    # Vemos si el mes actual (valor de la variable "i")
    # es mas rentable que el
    # mayor registrado hasta ahora (valor de la variable "mayorRentabilidad")
    if (rentabilidad > mayorRentabilidad) 
      mesMasRentable = i
    end
  end
  return mesMasRentable
end

#--- zona de test ----

def test_CostoTransporte
	print validate(1.06, CostoTransporte(3)) 
	print validate(1.04, CostoTransporte(5))
	print validate(1.05, CostoTransporte(8))
	print validate(1.03, CostoTransporte(11))
end  
def test_Precio
    print validate(1.03, VarPrecio(11))
    print validate(0.92, VarPrecio(2))
    print validate(1.11, VarPrecio(7))
   print validate(1.03, VarPrecio(11))
end
 def test_MejorRentabilidad
# 40% del precio de mercado es el costo de produccion
  print validate(8, mesMejorRentabilidad(40))
 #el costo de produccion es 20% del precio
 print validate(8, mesMejorRentabilidad(20))
end


def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  puts "---Prueba Costo--"
  test_CostoTransporte
  puts ""
  puts "---prueba Precio---"
  test_Precio
  puts " "
  puts "---prueba mes mejor rentabilidad---"
  test_MejorRentabilidad
end

test