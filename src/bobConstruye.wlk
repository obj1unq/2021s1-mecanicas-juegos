object bob {
	
	const materiales = []
	
	method recolectar(material) {
		materiales.add(material)
	}
	
	method construir(objeto) {
		// Validar que tengo todos los materiales
		if (not objeto.puedeConstruirse(materiales)) {
			self.error("Ese objeto no puede construirse")
		}
	}
	
}

//class Madera {
//	
//}

//class Piedra {
//	
//}

object madera {}
object piedra {}

class Recurso {
	const property material = madera
	
	method sosDeTipo(unTipo) = material == unTipo
}


class Mesa {
	const property materialesNecesarios = [madera]
	
	method puedeConstruirse(recursos) {
		return materialesNecesarios.all({material => 
			recursos.any({recurso => recurso.sosDeTipo(material)})
			recursos.map({recurso => recurso.material()}).contains(material)
		})
	}
}