import wollok.game.*

class Wollok {
	const posicionInicial = game.at(0,2)
	const velocidad = 500
	var property position = posicionInicial  

	method moveteALaDerecha() { 
		if (self.estaAlBorde()) {
			position = posicionInicial 
		} else {
			position = self.posicionALaDerecha()
		}
	}
	
	method estaAlBorde() {
		return self.posicionALaDerecha().x() > game.width()
	}
	
	method posicionALaDerecha() {
		return position.right(1)
	}
	
	method comenzarMovimiento() {
		game.onTick(velocidad, self.nombreMovimiento(), { self.moveteALaDerecha() })
	}
	
	method detener() {
		game.removeTickEvent(self.nombreMovimiento())
	}
	
	method nombreMovimiento() = "AVANZAR_WOLLOK_" + self.identity().toString() 
}
