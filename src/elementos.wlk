object castillo {
	var nivelDeDefensa = 150
	method altura() {
		return 20
	}
	method valorPorTrabajo() {
		return nivelDeDefensa / 5
	}
	method nivelDeDefensa() {
		return nivelDeDefensa
	}
	method recibirAtaque(potencia) {
		nivelDeDefensa = (nivelDeDefensa - potencia).max(0)
	}
	method recibirTrabajo() {
		nivelDeDefensa = (nivelDeDefensa + 20).min(200)
	}
}

object aurora {
	var viva = true
	method altura() {
		return 1
	}
	method estaViva() {
		return viva
	}
	method valorPorTrabajo() {
		return 15
	}
	method recibirAtaque(potencia) {
		if(potencia >= 10) {
			self.morir()
		}
	}
	method recibirTrabajo() {}
	method morir() {
		viva = false
	}
}

object tipa {
	var altura = 8
	method altura() {
		return altura
	}
	method valorPorTrabajo() {
		return altura * 2
	}
	method recibirAtaque(potencia) {}
	method recibirTrabajo() {
		self.crecer()
	}
	method crecer() {
		altura++
	}
}
