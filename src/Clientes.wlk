import Descarga.*

class Cliente {
	
	const tipoEmpresa
	var plan
	const descargas = []
	
	method cobroCompania(unMonto) {
		return (tipoEmpresa.cobrar(unMonto))
	}
	
	method cobroPlan(unMonto) {
		return (plan.recargo(unMonto))
	}
	
	method puedeDescargar(unMonto) {
		
		return (plan.puedeDescargar(unMonto))
	}
	
	method registrarDescarga(unProducto) {
		
		const descarga = new Descarga(fecha = new Date(), producto = unProducto)
		descargas.add(descarga)
	}
	
	method cobrar(unMonto) {
		
		plan.cobrar(unMonto)
	}
	
	method cantidadDescargasEnElMes() {
		
		return (descargas.count({ unaDescarga => unaDescarga.esDelMesActual()}))
	}
	
	method filtrarDescargasPorFecha(unaFecha) {
		
		return (descargas.filter({ unaDescarga => unaDescarga.fecha() == unaFecha}))
	}
	
	method forzarDescarga(unaDescarga) {
		
		const precioTotal = unaDescarga.conocerPrecioProducto(self)
		if(plan.puedeDescargar(precioTotal)){
			
			self.registrarDescarga(unaDescarga)
			self.cobrar(precioTotal)
			
		}else{
			self.error("Saldo insuficiente")
		}
	}
	
}