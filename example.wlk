object pepita {
	var energia = 100
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}
	
	method volar(distancia) {
		energia = energia - 10 - distancia
	}
	
	method energia() {
		return energia
	}
}

object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		self.madurez(madurez + 1)
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
	
}

// ejercicio 1

object pepon {
    var energia = 30;

    method energia() {
        return energia;
    }

    method come(comida) {
        energia = energia + (comida.energiaAportada()/2); 
    }

    method vuela(distancia) {
        energia = energia - 20 - 2* distancia;
    }
}

// ejercicio 2

object roque {
	var ave = pepita;
	var cenas = 0;

	method aveDeRoque(){
		return ave
	}  

	method cambiarDeAve(_ave) {
		ave = _ave;
		cenas = 0;
	}

	method alimentar(comida) {
		ave.comer(comida);
	}

	method cenas() {
	  return cenas
	}
}