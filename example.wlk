object george {
  var pagoEnvio = true
}

object steven {
  
}

object jean {
  var puedeLlamar = true 
  var peso = 65  
}

object neo {
  var puedeLlamar = true
  var peso = 0
  var tieneCredito = false 
}

object sara {
  var peso = 0
  const puedeLlamar = false 

  method peso(_peso) {
    peso = _peso
  }
}

object paquete {
  var estado = false 
  method estadoPaquete() {
    return estado
  }
  method estadoPaquete(_estado) {
    estado = _estado
  }

  method entrega(persona) {
    return persona
  }
}


object puendeDeBrooklyn {
  //deja pasar a todo lo que pese hace 1000 kg
}

object laMatrix {
  method entra() {
    return// deja entrar a quien puede hacer una llamada
  }
}

//