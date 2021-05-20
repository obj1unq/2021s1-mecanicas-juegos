import wollok.game.*

object selector {
	var heroes = [eva, neo, dimitry]

	const property image = "llegada.png"
	
	method seleccionado() = heroes.head()
	
	method position() = self.seleccionado().position().up(1)
	
	method moveteDerecha() {
		const seleccionadoActual = self.seleccionado()
		heroes.remove(seleccionadoActual)
		heroes.add(seleccionadoActual)
	}
	
	method moveteIzquierda() {
		const ultimoElemento = heroes.last()
		heroes.remove(ultimoElemento)
		heroes = [ultimoElemento] + heroes
	}
	
	method seleccionar() {
		console.println(self.seleccionado().nombre()) 
	}
	
}

class Heroe {
	const property position
	const property nombre
}

const eva = new Heroe(nombre = "Eva", position = game.at(1,3))
const neo = new Heroe(nombre = "Neo", position = game.at(3,1))
const dimitry = new Heroe(nombre = "Dimitry", position = game.at(4,2))
