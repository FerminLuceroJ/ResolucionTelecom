class Empresa {
	
	method cobrar(unMonto) {
		return (unMonto * 5 /100)
	}
}

class Nacional inherits Empresa {
	
}

class Extranjera inherits Empresa {
	
	const impuesto
	
	override method cobrar(unMonto) {
		return (super(unMonto) + impuesto) 
	}
	
}
