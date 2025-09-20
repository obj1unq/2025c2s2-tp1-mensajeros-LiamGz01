object paquete {
  var property estaPago = false

  method puedeSerEntregado(mensajero, destino) {
    return estaPago and destino.puedePasar(mensajero)
  }
}

object puenteDeBrooklyn {

  method puedePasar(mensajero) {
    return mensajero.peso() <= 1000 // deja pasar a todo lo que pese hasta 1000 kg
  }
}

object laMatrix {

  method puedePasar(mensajero) {
    return mensajero.puedeLlamar() // deja entrar a quien puede hacer una llamada
  }
}

object jean {
  const puedeLlamar = true 
  const peso = 65

  method puedeLlamar() {  //puede recibir llamado
    return puedeLlamar
  }
  method peso() {
    return peso
  }
}

object neo {
  const peso = 0
  var property tieneCredito = false
  
  method peso() {
    return peso
  }
}

object sara {
  var property vehiculo = moto
  var property peso = 0
  const puedeLlamar = false 

  method peso() {
    return peso + vehiculo.peso()
  }
  method puedeLlamar() {  //puede recibir llamado
    return puedeLlamar
  }
}

object moto {
  const peso = 100  // constante ya que el valor siempre es fijo
  
  method peso() {
    return peso
  } 
}

object camion {
  var property acoplados = 0 
  const peso = 500 // constante ya que el valor siempre es fijo
  
  method peso() {
    return peso + (acoplados * peso )
  }
}