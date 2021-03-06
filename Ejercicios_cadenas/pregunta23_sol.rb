def totalFallas(nroFallas )
suma=0
for i in 0.. nroFallas.size-1
suma=suma+nroFallas[i]
end
return suma
end

def fallafrecuente(nroFallas, fallas)
masfrecuente=nroFallas.sort.last
falla=""
for i in 0.. nroFallas.size-1
	if masfrecuente==nroFallas[i]
	falla=fallas[i]
	end	
end
return falla
end

def calculaImpacto(nroFallas, usuarios)
miArreglo= Array.new
valor=0.0
for i in 0.. nroFallas.size-1
valor= nroFallas[i].to_f / usuarios[i].to_f
miArreglo.push(valor.round(3))
end 
#print miArreglo
return miArreglo
end

def incidentesCoen(coen,tipofalla)
valor=0
for i in 0..coen.size-1
	longitud=coen[i].size-1
	if tipofalla==coen[i][0..3]
		cantidad=coen[i][9..longitud].to_i
	#puts cantidad
		valor=valor+cantidad
	end
end	
#print valor

return valor
end

#--- zona de test ----
def  test_totalFallas
print validate(1443,totalFallas(@nroFallas))
end

def test_fallamasfrecuente
print validate("Falla en las operaciones",fallafrecuente(@nroFallas,@fallas))
end

def test_impacto
print validate([0.253,0.400,0.667,0.307,0.185,0.001,0.003,0.080],calculaImpacto(@nroFallas,@usuarios))
end

def  test_coen
print validate(3009,incidentesCoen(@coen,"AUTH") )
print validate(2,incidentesCoen(@coen,"HACK") )
print validate(200,incidentesCoen(@coen,"ACCI") )
end	



def validate (expected, value)
 expected == value ? "." : "F"
end


@fallas=["Autenticación","Acceso y uso de información","Custodia de información","Falla en las operaciones","Cambios en las aplicaciones","Hacking","Desastres","Acciones preventivas"]
@nroFallas=[379,200,80,460,278,2,4,40]
@usuarios=[1500,500,120,1500,1500,1500,1500,500]
@coen=["AUTH-001-379","AUTH-002-1500","AUTH-003-450","AUTH-004-680","ACCI-001-200","HACK-001-2"]


puts "------Pregunta 3--------" 
puts ""
puts "------Prueba total Fallas--------" 
test_totalFallas
puts ""
puts "------Prueba de falla mas frecuente--------" 
test_fallamasfrecuente
puts ""
puts "------Prueba de impacto--------" 
test_impacto
puts ""
puts "------conteo incidentes COEN--------" 
test_coen