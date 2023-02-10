class Ringtone {
	
	const duracion
	const precioPorMinuto
	
	method montoDerechoAutor() {
		return duracion * precioPorMinuto
	}
	
}

class Chiste {
	
	const montoFijo = 5
	const cantidadCaracteres
	
	method montoDerechoAutor() {
		return montoFijo * cantidadCaracteres
	}
	
	
}

class Juego {
	
	const monto
	
	method montoDerechoAutor() {
		return monto
	}
	
}