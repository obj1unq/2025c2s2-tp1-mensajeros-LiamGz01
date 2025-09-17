object paquete {
  var estaPago = false 
  method estaPago() {
    return estaPago
  }
  method estaPago(_estaPago) { //el paquete no siempre puede estar pago
    estaPago = _estaPago
  }

  method puedeSerEntregado(mensajero, destino) {
    return estaPago and destino.puedePasar(mensajero)
  }
}

object puendeDeBrooklyn {
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
  var tieneCredito = false
  method tieneCredito(_credito) {
    tieneCredito = _credito
  }
  method puedeLlamar() { //puede recibir llamado
    return tieneCredito
  } 
  method peso() {
    peso
  }
}

object sara {
  var property vehiculo = moto
  var property pesoPropio = 0
  const puedeLlamar = false 

  method peso() {
    return pesoPropio + vehiculo.peso()
  }

  method puedeLlamar() {  //puede recibir llamado
    return puedeLlamar
  }
}

object moto {
  const peso = 100
  method peso() {
    return peso
  } 
}

object camion {
  var acoplados = 0 
  const peso = 500
  method cantAcoplados(_acoplados) {
    acoplados = _acoplados
  }
  method peso() {
    return peso + ( (acoplados * peso) * 0.5 )
  }
}