#encoding:UTF-8

def numeroEntradas(boletos)
  vendidas = 0
  for i in 0..boletos.size-1
    vendidas = vendidas + boletos[i]
  end
  return vendidas
end

def mejorSede(boletos, sedes)
  mayor = 0
  indiceMayor = 0
  for i in 0..boletos.size-1
    if (boletos[i] > mayor)
      mayor = boletos[i]
      indiceMayor = i
    end
  end
  return sedes[indiceMayor]
end

def bajasVentas(boletos, sedes)
  contador = 0
  for i in 0..boletos.size-1
    if (boletos[i] < 1500)
      contador = contador + 1
    end
  end
  return contador
end

#--- zona de test ----
def test_Entradas
  	print validate(15034, numeroEntradas(@entradasVendidas))
end

def test_MejorSede
  	print validate("San Isidro", mejorSede(@entradasVendidas, @sedes))
end

def test_BajasVentas
  	print validate(3, bajasVentas(@entradasVendidas, @sedes))
end

def validate (expected, value)
 	expected == value ? "." : "F"
end

def test
	@entradasVendidas = [1050, 1498, 1040, 2045, 3150, 4210, 2041]
	@sedes = ["San Miguel", "Jesús María", "Callao", "Miraflores", "Santa Anita", "San Isidro", "Surco"]

  	puts "Test de prueba Cinemundo"
  	puts "------------------------"
  	test_Entradas  
  	test_MejorSede
  	test_BajasVentas
  	puts " "

end
test