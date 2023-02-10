class Descarga {
	
	const fecha
	const producto
	
	method conocerPrecioProducto(unCliente) {
		const derechos = self.montoDerechoAutor()
		
		return (unCliente.cobroPlan(derechos + derechos*0.25 + unCliente.cobroCompania(derechos)))
	
	}
	
	method montoDerechoAutor() {
		return producto.montoDerechoAutor()
	}

	method esDelMesActual() {
		return (fecha.month() == new Date().month())
	}
	
	method fecha() = fecha
}