Feature: Prueba API Demoblaze utilizando KARATE

  Background:
    * url 'https://api.demoblaze.com'

  Scenario Outline: Crear un nuevo usuario en signup
    Given path '/signup'
    And request { username: '<username>', password: '<password>' }
    When method post
    Then status 200

    Examples:
      | username | password |
      | Clarks   | Abcd1223 |

  Scenario Outline: Intentar crear un usuario ya existente
    Given path '/signup'
    And request { username: '<username>', password: '<password>' }
    When method post
    Then status 200
    And match response contains { errorMessage: 'This user already exist.' }

    Examples:
      | username | password       |
      | Clarks   | contrasenia123 |

  Scenario Outline: Usuario y password correcto en login
    Given path '/login'
    And request { username: '<username>', password: '<password>' }
    When method post
    Then status 200

    Examples:
      | username | password |
      | Clarks   | Abcd1223 |

  Scenario Outline: Usuario y password incorrecto en login
    Given path '/login'
    And request { username: '<username>', password: '<password>' }
    When method post
    Then status 200
    And match response contains { errorMessage: 'User does not exist.' }

    Examples:
      | username   | password   |
      | Clarks1223 | Clarks1223 |