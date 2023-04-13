import categorias.*
import pepe.*

object bonoPorcentaje{
	
	method bonoARecibir(empleado) {
		
		return empleado.neto() * 0.1
		
	}
	
}

object bonoFijo{
	
	method bonoARecibir(empleado) = 80
	
}

object bonoDependeFaltas{
	
	method bonoARecibir(persona) {
		const faltas = persona.faltas()
		
		if(faltas == 0){
			return 100
		}
		else if(faltas == 1){
			return 50
		}
		else {
			return 0
		}
		
	}
	
}

object bonoNulo{
	
	method bonoARecibir(empleado) = 0
	
}
