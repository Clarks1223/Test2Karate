Feature: Prueba API Demoblaze utilizando KARATE

  Background:
    * url 'https://api.demoblaze.com'

  Scenario Outline: Crear un nuevo usuario en signup
    Given path '/signup'
    And request { username: '<username>', password: '<password>' }
    When method post
    Then status <expectedStatus>

    Examples:
      | username | password | expectedStatus |
      | Clarks   | Abcd1223 | 200            |

  Scenario Outline: Intentar crear un usuario ya existente
    Given path '/signup'
    And request { username: '<username>', password: '<password>' }
    When method post
    Then status <expectedStatus>
    And match response contains { errorMessage: 'This user already exist.' }

    Examples:
      | username | password       | expectedStatus |
      | Clarks   | contrasenia123 | 409            |

  Scenario Outline: Usuario y password correcto en login
    Given path '/login'
    And request { username: '<username>', password: '<password>' }
    When method post
    Then status <expectedStatus>

    Examples:
      | username | password | expectedStatus |
      | Clarks   | Abcd1223 | 200            |

  Scenario Outline: Usuario y password incorrecto en login
    Given path '/login'
    And request { username: '<username>', password: '<password>' }
    When method post
    Then status <expectedStatus>
    And match response contains { errorMessage: 'User does not exist.' }

    Examples:
      | username   | password   | expectedStatus |
      | Clarks1223 | Clarks1223 | 401            |