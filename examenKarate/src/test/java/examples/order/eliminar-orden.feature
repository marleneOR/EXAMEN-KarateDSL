Feature: Eliminar una orden de la tienda PetStore
  Background: precondiciones
    * url baseUrl
    * call read('classpath:examples/order/crear-orden.feature@crearOrden')

  @eliminarOrden
    Scenario: Se elimina el orden con id
      Given path '/store/order/'+ orderId
      And header Content-Type = 'application/json'
      When method delete
      Then status 200
      And print response
      And match response.code == 200
      * print 'Orden eliminada: ', orderId

  @eliminarOrden
    Scenario: Validar que la orden ya no existe
      Given path '/store/order/' + orderId
      When method get
      Then status 404
      * print 'La orden con ID: ', orderId, ' ya no existe.'