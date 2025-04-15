object tito {
  var bebida = null /* ULTIMA BEBEIDA CONSUMIDA-> 
  se puede inicializar con un tipo de bebida*/
  var cantidad = 0
  method peso() = 70 //mensaje de consulta
  method inerciaBase() = 490
  method consumir(unaCantidad, unaBebida){
    bebida = unaBebida
    cantidad = unaCantidad
  }

  method bebida() = bebida /* la ultima bebida consumida no la sabe decir si no le doy el mensaje.*/

  method velocidad(){
    return bebida.rendimiento(cantidad)* self.inerciaBase() / self.peso()/*si no esta el metodo bebida no hay manera de preguntarle la ultima bebida que consumio*/
  }
  
}


object cianuro{
  method rendimiento(cantidad){//se respeta la forma para que no se rompa el polimorfismo
    return 0
  }
}


object whisky{
  method rendimiento(cantidad){ //metodo de consulta
    return 0.9 ** cantidad
  }
}


object terere{
  method rendimiento(cantidad){
    return (0.1 ** cantidad).max(1) // puede variar el orden 1.max(0.1 ** dosis)
  }
}

