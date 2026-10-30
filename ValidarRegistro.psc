Algoritmo ValidarRegistro
definir edad Como Entero
definir respuesta Como Caracter
Escribir "¿cuantos años tienes?"
leer edad
Escribir "aceptas los terminos? (S/N)"
Leer respuesta
respuesta <- Mayusculas(respuesta)
Si edad >= 14 y respuesta = "S" Entonces

Escribir "Registro exitoso"
SiNo
Escribir "No puedes registrarte"
FinSi
FinAlgoritmo
