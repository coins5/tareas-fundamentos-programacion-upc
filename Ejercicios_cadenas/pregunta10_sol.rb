#encoding:utf-8
def obtenerCantidadProductos(codigos,nacionalidad)
	contador = 0
	
	for i in 0..codigos.length-1
		if codigos[i][0..1] == nacionalidad then
			contador += 1
		end
	end
	return contador
end

def obtenerUltimoCorrelativo(codigos,nacionalidad)
	correlativo = 0
	
	for i in 0..codigos.length-1
		if codigos[i][0..1] == nacionalidad and codigos[i][2..5].to_i > correlativo then
			correlativo = codigos[i][2..5].to_i
		end
	end
	return correlativo
end
     
def costoTotalAlmacenaje(codigos,nacionalidad)
	costo = 0
	
	for i in 0..codigos.length-1
		if codigos[i][0..1] == nacionalidad then
			costo += codigos[i][6..7].to_i
		end
	end
	return costo
end

#----------Zona de Test------------------

def test_obtenerCantidadProductos
	print validate(3, obtenerCantidadProductos(@codigos1,"AR"))
	print validate(3, obtenerCantidadProductos(@codigos2,"PE"))
	print validate(4, obtenerCantidadProductos(@codigos3,"CH"))
end

def test_obtenerUltimoCorrelativo
	print validate(7521, obtenerUltimoCorrelativo(@codigos1,"PE"))
	print validate(7846, obtenerUltimoCorrelativo(@codigos2,"BR"))
	print validate(4501, obtenerUltimoCorrelativo(@codigos3,"AR"))
end
    
def test_costoTotalAlmacenaje
	print validate(44, costoTotalAlmacenaje(@codigos1,"PE"))
	print validate(25, costoTotalAlmacenaje(@codigos2,"BR"))
	print validate(60, costoTotalAlmacenaje(@codigos2,"CH"))
end


#----------------zona de test-----------------

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
	@codigos1 = ["AR000101","PE125610","CH452315","BR521317","BR123620","PE752124","AR124511","PE562405","PE562405","BR452102","AR455210"]  
	@codigos2 = ["PE521105","PE124506","BR456607","BR454508","BR784610","CH578712","CH784514","CH823516","CH112318","PE122120","AR475522"]
	@codigos3 = ["BR002230","PE025628","BR014526","PE123524","BR326522","PE002520","CH525118","CH521416","CH021414","AR450112","CH465310"]

	puts "Test de prueba del programa"
	puts "---------------------------"
	test_obtenerCantidadProductos
	puts " "
	test_obtenerUltimoCorrelativo
	puts " "
	test_costoTotalAlmacenaje
	puts " "
end
test
