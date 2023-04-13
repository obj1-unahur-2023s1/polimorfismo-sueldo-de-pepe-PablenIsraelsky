import categorias.*
import bonos.*

object pepe {
	
	var categoria = gerente
	var bonoResultado = bonoFijo
	var bonoPresentismo
	var faltas = 0
	
	method sueldoPepe(){
		
		return self.neto() + self.bonoPresentismo(bonoPresentismo) + self.bonoResultado()
		
	}
	
	method setCategoria(nuevaCategoria){
		categoria = nuevaCategoria
	}
	method categoria() = categoria
	
	method neto() = categoria.neto()
	
	method faltas() = faltas
	method setFaltas(cantFaltas) {
		faltas =  cantFaltas
	}
	
	method bonoResultado(){
		return bonoResultado.bonoARecibir(self)
	}
	method setBonoResultado(bono){
		bonoResultado = bono
	}
	
	method bonoPresentismo(bono){
		return bono.bonoARecibir(self)
	}
	method setBonoPresentismo(bono){
		bonoPresentismo = bono
	}
	
}



