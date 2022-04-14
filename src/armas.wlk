object ballesta {
	var flechas = 10
	method flechas() {
		return flechas
	}
	method estaCargada() {
		return flechas > 0
	}
	method potencia() {
		return 4
	}
	method usar() {
		flechas = (flechas - 1).max(0)
	}
}

object jabalina {
	var carga = true
	method estaCargada() {
		return carga
	}
	method potencia() {
		return 30
	}
	method usar() {
		carga = false
	}
}
