Feature: Consultar de una orden de la tienda PetStore
  Background: Precondicion
    * url baseUrl
    * call read('classpath:examples/order/crear-orden.feature@crearOrden')
  @consultar
  Scenario: Consultar la orden
    Given path '/store/order/'+ orderId
    And header Content-Type = 'application/json'
    When method get
    Then status 200
    And match response.id == orderId
    * print 'La orden con ID: ', orderId, 'es igual al de la consulta: ', response.id
    * print response


