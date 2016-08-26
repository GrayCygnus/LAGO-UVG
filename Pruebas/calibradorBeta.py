# Programa que Calibra en base a las condiciones locales un WCD
# LAGO - UVG
# 8/8/2016

with open('cal1.cal') as f:
    lines = f.readlines()

with open('cal2.cal') as g:
    lines2 = g.readlines()

ancho = 20
actual = 20
res = []
while actual < 78000:
    i = 0
    for l in lines:
	#print(l)
        #por cada linea descartar comentarios q inician con hash
        #leer tercera columna para obtener ADCQ del CH3
        fila = l.split(" ")
	#print(fila[0]+" "+fila[1]+" "+fila[2]+" "+fila[3]+" "+fila[4]+" "+fila[5])
	if fila[0] != "#":
            col3 = int(fila[2])
            #print(col3)
            if col3 <= actual and col3 > actual - ancho:
                i = i + 1
    for l in lines2:
	#print(l)
        #por cada linea descartar comentarios q inician con hash
        #leer tercera columna para obtener ADCQ del CH3
        fila = l.split(" ")
	#print(fila[0]+" "+fila[1]+" "+fila[2]+" "+fila[3]+" "+fila[4]+" "+fila[5])
	if fila[0] != "#":
            col3 = int(fila[2])
            #print(col3)
            if col3 <= actual and col3 > actual - ancho:
                i = i + 1
    res.append(i)
    actual = actual + ancho

##guardar calibracion al archivo para graficarlo
resultado = open('calibracion.txt', 'w')
for item in res:
    resultado.write("%s\n" % item)
    
