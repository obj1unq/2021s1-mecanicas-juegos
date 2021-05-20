import wollok.game.*

object tanque {

	var property direccion = arriba

	method image() {
		return "tanque_" + direccion.sufijo()  + ".png"
	}

}

object arriba {
	method sufijo() = "up"
	method siguientePosicion(posicion) = posicion.up(1)
}

object abajo {
	method sufijo() = "down"
	method siguientePosicion(posicion) = posicion.down(1)
}

object bala {

	var property direccion = arriba
	var position = game.at(3, 0)

	method desplazar() {
		position = direccion.siguientePosicion(position)
	}

}

