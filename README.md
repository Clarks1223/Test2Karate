# Prerrequisitos:
- Maquina local con el sistema operativo Windows 10
- IDE IntelliJ
- Maven version 3.8.6 (debe estar en la variable de entorno)
- JDK versión 1.8 (debe estar en la variable de entorno)

# Comandos de instalación:
- Clonar el repositorio de Karate desde GitHub: `git clone https://github.com/intuit/karate.git`
- Navegar al directorio del repositorio: `cd karate`
- Construir el proyecto con Maven: `mvn clean install -DskipTests`

# Instrucciones para ejecutar los tests:
- Importar el proyecto en IntelliJ IDEA.
- Configurar el JDK y Maven en las configuraciones del proyecto si no están configurados automáticamente.
- Abrir el archivo `EjercicioApis.feature` que contiene los escenarios de prueba.
- Ejecutar cada escenario de prueba utilizando Karate Runner en IntelliJ o mediante línea de comandos con Maven:
  - Para ejecutar todos los escenarios: `mvn test`
  - Para ejecutar un escenario específico por nombre: `mvn test -Dtest=NombreDeLaFeature#NombreDelEscenario`
- Karate generará informes de ejecución en formato HTML en el directorio `target/surefire-reports`.

# Información adicional:
Los escenarios de prueba están diseñados para interactuar con la API de Demoblaze utilizando Karate, un framework que combina pruebas de API y BDD de forma integrada. Asegúrate de tener acceso a la API de Demoblaze y ajustar las URLs y endpoints según corresponda.
# A continuacion una fotografia del test:
![image](https://github.com/user-attachments/assets/9a1356a2-4e0f-4b53-a4a9-6cb370e34f40)
