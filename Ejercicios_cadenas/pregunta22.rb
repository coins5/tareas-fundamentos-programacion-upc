def obtenerSector(operacion)

end

 
def totalOperacionesTipo(operaciones, tipo)

end    

def operacionesporCliente(operaciones,cliente)

end
def obtenerAccion(acciones,empresas,operacion)

end

#----------Zona de Test------------------

def test_obtenerSector
print validate("Bancos Financieras", obtenerSector("BFBANFALC11524100C06/03/2018"))
print validate("Agrario", obtenerSector("AGPUCALAC11632500V06/03/2018"))
print validate("Agrario", obtenerSector("AGPARAMOC11245600V06/03/2018"))
print validate("Servicios Publicos", obtenerSector("SPLUZSURC11369200C06/03/2018"))
print validate("Mineras", obtenerSector("MNMINSURI11542900C06/03/2018"))
print validate("Mineras", obtenerSector("MNSPPCCPI11542700V06/03/2018"))
print validate("Servicios Publicos", obtenerSector("SPTELCABC11623500V06/03/2018"))
print validate("Industriales", obtenerSector("INCPACASI11456800V06/03/2018"))
print validate("Bancos Financieras", obtenerSector("BFCREDITC11245230C06/03/2018"))
print validate("Bancos Financieras", obtenerSector("BFSCOTIAC11369250V06/03/2018"))
print validate("Industriales", obtenerSector("INRELAPAC11524350C06/03/2018"))

end

def test_totalOperacionesTipo
   	print validate(5, totalOperacionesTipo(@operaciones,"C"))
	print validate(6, totalOperacionesTipo(@operaciones,"V"))
end

def test_operacionesporCliente
   	print validate(["SPLUZSURC11369200C06/03/2018","BFSCOTIAC11369250V06/03/2018"], operacionesporCliente(@operaciones,"1369"))
	print validate(["AGPARAMOC11245600V06/03/2018","BFCREDITC11245230C06/03/2018"], operacionesporCliente(@operaciones,"1245"))
end

def test_obtenerAccion
print validate("MINSUR S.A." ,obtenerAccion(@acciones,@empresas,"MNMINSURI11542900C06/03/2018"))
print validate("AGRO PUCALA S.A.A." ,obtenerAccion(@acciones,@empresas,"AGPUCALAC11632500V06/03/2018"))
print validate("BANCO DE CREDITO DEL PERU" ,obtenerAccion(@acciones,@empresas,"BFCREDITC11245230C06/03/2018"))

end


def test_accionMasNegociada
   	print validate("MINSUR S.A.", accionMasNegociada(@operaciones,@acciones,@empresas))
   
end
@operaciones=["BFBANFALC11524100C06/03/2018",
"AGPUCALAC11632500V06/03/2018",
"AGPARAMOC11245600V06/03/2018",
"SPLUZSURC11369200C06/03/2018",
"MNMINSURI11542900C06/03/2018",
"MNSPPCCPI11542700V06/03/2018",
"SPTELCABC11623500V06/03/2018",
"INCPACASI11456800V06/03/2018",
"BFCREDITC11245230C06/03/2018",
"BFSCOTIAC11369250V06/03/2018",
"INRELAPAC11524350C06/03/2018"]
@acciones=["BANFALC1","PUCALAC1","PARAMOC1","LUZSURC1","MINSURI1","SPPCCPI1","TELCABC1","CPACASI1","CREDITC1","SCOTIAC1","RELAPAC1"]
@empresas=["BANCO FALABELLA PERU S.A",
"AGRO PUCALA S.A.A.",
"AGRO INDUSTRIAL PARAMONGA S.A.A.",
"LUZ DEL SUR S.A.A.",
"MINSUR S.A.",
"SOUTHERN PERU COPPER CORPORATION - SUCURSAL DEL PERU",
"TC SIGLO 21 S.A.A.",
"CEMENTOS PACASMAYO S.A.A.",
"BANCO DE CREDITO DEL PERU",
"SCOTIABANK PERU S.A.A.",
"REFINERIA LA PAMPILLA S.A.A. - RELAPA S.A.A"]

#----------------zona de test-----------------
def validate (expected, value)
	expected == value ? "." : "F"
end

def pregunta01
	puts "Test Examen Final - Pregunta 01"
	puts "-------------------------------"
	puts "Pregunta 1"
	test_obtenerSector
	puts " "
	puts "Pregunta 2"
	test_totalOperacionesTipo
	puts " "
	puts "Pregunta 3"
	test_operacionesporCliente
	puts " "
	puts "Pregunta 4"
	test_obtenerAccion
	puts " "
end
pregunta01
