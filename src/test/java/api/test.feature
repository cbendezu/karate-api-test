Feature: Demo API test

Scenario: GET a post
  Given url 'https://jsonplaceholder.typicode.com/posts/1'
  When method get
  Then status 200
  And match response.id == 1
