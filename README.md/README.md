# Sesion 02 - Tablas + Pruebas de escritorio

### 1. `ValidarRegistro.psc`
**Regla:** `edad >= 14 Y respuesta = "S"`

| edad | respuesta | edad>=14 | respuesta="S" | Resultado |
| --- | --- | --- | --- | --- |
| 16 | S | V | V | Registro exitoso |
| 16 | N | V | F | No puedes registrarte |
| 13 | S | F | V | No puedes registrarte |
| 13 | N | F | F | No puedes registrarte |

**Prueba:** 16, s -> Registro exitoso

### 2. `ValidarEdad.psc`
**Regla inválida:** `edad < 0 O edad > 120`
**De Morgan válida:** `edad >= 0 Y edad <= 120`

| edad | <0 | >120 | <0 O >120 | Resultado |
| --- | --- | --- | --- | --- |
| -1 | V | F | V | Edad inválida |
| 0 | F | F | F | Edad válida |
| 120 | F | F | F | Edad válida |
| 121 | F | V | V | Edad inválida |

### 3. `Parqueadero.psc`
**Reglas:** tarifa 1=4000, 2=2000, <=15 gratis, horas = trunc((min+59)/60), tope 30000, factura S = /2

| opcion | min | factura | horas | valor | Resultado |
| --- | --- | --- | --- | --- | --- |
| 1 | 10 | N | 0 | 0 | $0 |
| 2 | 20 | N | 1 | 2000 | $2000 |
| 1 | 58 | S | 1 | 2000 | $2000 (4000/2) |
| 1 | 500 | N | 9 | 30000 | $30000 tope |

### 4. `Semaforo.psc`

| cantidad | < 0 | = 0 | 1 a 10 | > 10 | Salida |
| :--- | :--- | :--- | :--- | :--- | :--- |
| -1 | V | F | F | F | rojo:error |
| 0 | F | V | F | F | rojo:agotado |
| 1 | F | F | V | F | amarillo:pedir |
| 10 | F | F | V | F | amarillo:pedir |
| 11 | F | F | F | V | verde:todo bien |
| 25 | F | F | F | V | verde:todo bien |


### 5. `Bisiesto.psc`
**Regla:** `(anio % 4 = 0 Y anio % 100 <> 0) O anio % 400 = 0`

| anio | %4 | %100 | %400 | Resultado |
| --- | --- | --- | --- | --- |
| 2020 | 0 | no | no | Bisiesto |
| 1900 | 0 | 0 | no | No bisiesto |
| 2000 | 0 | 0 | 0 | Bisiesto |
| 2023 | no | no | no | No bisiesto |