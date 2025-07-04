Feature: Demo API test

Scenario: GET a post
  Given url 'https://jsonplaceholder.typicode.com/posts/1'
  When method get
  Then status 200
  And match response.id == 1

 Scenario: Validar ID de la cuenta actual
    Given url 'https://api-gateway-qa1.simpliroute.com/v1/accounts/me/'
    And header Content-Type = 'application/json;charset=UTF-8'
    And header Accept = 'application/json, text/plain, */*'
    And header Authorization = 'Token 3aec3c3689c45589dc5427ad97ebf7edf2488455'
    When method GET
    Then status 200
    And match response.id == 286928  