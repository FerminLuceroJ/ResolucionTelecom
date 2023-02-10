object prepago {
	
	const recargo = 0.1
	var saldo
	
	method recargo(unMonto) {
		return (unMonto + unMonto * recargo)
	}
	
	method puedeDescargar(unMonto) {
		
		return (unMonto <= saldo)
	}
	
	method cobrar(unMonto) {
		saldo -= unMonto
	}
}

object facturado {
	
	var facturado
	
	method recargo(unMonto) {
		return unMonto
	} 
	
	method cobrar(unMonto) {
		facturado += unMonto
	}
	
	
}