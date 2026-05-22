object empresaDeMensajeria {
    const mensajeros = []
    method contratar(mensajero) {
      mensajeros.add(mensajero)
    }
    method despedir(mensajero) {
      mensajeros.remove(mensajero)
    }
    method despedirATodos() {
      mensajeros.clear()
    }
    method esGrande() {
      return mensajeros.size() > 2
    }
    method puedeEntregarConPrimerMensajero(paquete) {
      return paquete.puedeEntregar(mensajeros.first())
    }
    method pesoDelUltimoMensajero() {
      return mensajeros.last().peso()
    }
}



object robert{
    var property vehiculo = bicicleta
    var property peso = 0
    method peso() = peso
    method pesoT() = vehiculo.peso() and peso
    method puedeLlamar() = false
}
object chuckNorris{
    method pesoT() = 80
    method puedeLlamar() = true
}
object neo{
    var property tieneCredito = true
    method pesoT() = 0
    method puedeLlamar() = tieneCredito
}

object bicicleta {
    method peso() = 5
}
object camion{
    var property acoplados = 0
    method peso(){
        return 500 * acoplados 
    }
}