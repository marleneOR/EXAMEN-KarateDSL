Feature: Creación de una orden en la tienda PetStore.
  Background: Precondiciones
    * url baseUrl
  @crearOrden
  Scenario: Se crea una orden
    Given path 'store/order'
    And header Content-Type = 'application/json'
    And request
    """
    {
        "id": 1,
        "petId": 5,
        "quantity": 2,
        "shipDate": "2025-10-04T22:39:55.047Z",
        "status": "placed",
        "complete": true
      }
    """
    When method post
    Then status 200
    And print response
    And match response.id == 1
    * def orderId = response.id
    * print 'Orden creada con el ID: ', orderId