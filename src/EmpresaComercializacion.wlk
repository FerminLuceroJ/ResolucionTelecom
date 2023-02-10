object empresaComercializacion {
	
	const clientes = #{}
	const productos = []
	
	method precioDescargaCliente(unaDescarga, unCliente) {
		
		return (unaDescarga.conocerPrecioProducto(unCliente))
	}
	
	method registrarDescarga(unaDescarga, unCliente) {
		
		if(unCliente.puedeDescargar(unaDescarga.conocerPrecioProducto(unCliente))) {
			
			unCliente.registrarDescarga(unaDescarga)
			unCliente.cobrar(unaDescarga.conocerPrecioProducto(unCliente))
		}else{
			self.error("El cliente no puede descargar el contenido")
		}
	}
	
	method cantidadDescargasClienteEnMes(unCliente) {
		
		return (unCliente.cantidadDescargasEnElMes())
	}
	
	method obtenerContenidosDeClienteEnFecha(unCliente, unaFecha) {
		
		return (unCliente.filtrarDescargasPorFecha(unaFecha))
	}
	
	method forzarDescargaClientes(unaDescarga) {
		
		clientes.forEach({ unCliente => unCliente.forzarDescarga(unaDescarga)})
	}
	
	// Si no tiene saldo insuficiente en el caso que sea prepago entraria en una excepcion
	// devolviendo un error, en el caso que sea un usuario con plan facturado no habria problema
	
}