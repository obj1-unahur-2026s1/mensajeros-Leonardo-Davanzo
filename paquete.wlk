import destino.*
import mensajeros.*
object paquete{
    var property destino = laMatrix
    var property estaPago = true
    method puedeEntregar(mensajero) {
      destino.puedeEntregar(mensajero) and estaPago
    }
    method precio() = 50
}
object paquetito {
    var property destino = laMatrix
    method puedeEntregar(mensajero) {
      destino.puedeEntregar(mensajero)
    }
}
object paqueton {
    const property destinos = [] 
    var montoPagado = 0
    method precio() = 100 * destinos.size()
    method agregarDestino(destino) {
      destinos.add(destino)
    }
    method sacarDestino(destino) {
      destinos.remove(destino)
    }
    method pagarMonto(num) {
      montoPagado += num
    }
    method estaPago(){
        montoPagado = self.precio()
    }
    method puedeEntregar(mensajero) {
      destinos.all({m => m.puedeEntrar(mensajero)})
    }
}