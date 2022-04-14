import armas.*
import elementos.*

object luisa {
	var personajeActivo
	method aparece(elemento) {
		personajeActivo.encontrar(elemento)
	}
	method personajeActivo(personaje) {
		personajeActivo = personaje
	}
}


object floki {
	var arma = ballesta
	method encontrar(elemento) {
		if(arma.estaCargada()) {
			arma.usar()
			elemento.recibirAtaque(arma.potencia())
		}
	}
	method arma(nuevaArma) {
		arma = nuevaArma
	}
}


object mario {
	var valorRecolectado = 0
	var ultimoElementoEncontrado
	method encontrar(elemento) {
		ultimoElementoEncontrado = elemento
		valorRecolectado += elemento.valorPorTrabajo()
		elemento.recibirTrabajo()
	}
	method valorRecolectado() {
		return valorRecolectado
	}
	method esFeliz() {
		return valorRecolectado >= 50 or ultimoElementoEncontrado.altura() >= 10
	}
}

