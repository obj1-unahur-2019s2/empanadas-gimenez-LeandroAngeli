object galvan {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	var dinero = 0
	var deuda = 0
	
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo() { dinero += sueldo }  
	
	method gastar(cuanto) { if (cuanto <= dinero) { dinero= dinero - cuanto } 
					
					else {	
							deuda = cuanto - dinero 
						    dinero = 0 
						    				}	
						    
}
							
							
	
	method totalDeuda() {return deuda}
	method totalDinero() {return dinero}
	
	
		
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var totalCobrado = 0
	
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	method cobrarSueldo() {totalCobrado += self.sueldo()}
	method totalCobrado() {return totalCobrado}
	
}


object gimenez {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) { dinero -= empleado.sueldo() 
	empleado.cobrarSueldo()
	}
	
}
