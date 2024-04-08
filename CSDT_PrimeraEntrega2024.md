# An�lisis de Calidad del C�digo y Recomendaciones

## Resultados de SonarQube

- **Code Smells**: 49
- **Complejidad Ciclom�tica**: 307
- **Complejidad Cognitiva**: 119
- **Deuda T�cnica diagnosticada**: 3h 34min
- **Duplicaciones**: 0%
- **Cobertura de pruebas**: 0%
- **Ratio de deuda**: 0.5% A
- Se sugiere dividir 2 clases para mejorar la legibilidad del c�digo.
- En promedio, el 11% del c�digo son comentarios.
- Hay una cantidad significativa de TODOs sin resolver.
- Problemas detectados en el c�digo:
  - **Bloqueantes**: 1
  - **Cr�ticos**: 2
  - **Mayores**: 39
  - **Menores**: 4
  - **Informativos**: 3
	- 
## Resultados de las pruebas unitarias presentes en el proyecto
- **Pruebas unitarias**: 669
- **Pruebas fallidas**: 0
- **Pruebas que no pudieron iniciar**: 669
- **Cobertura de pruebas**: 0%
- Ya que las pruebas no pudieron iniciar, no se puede determinar la cobertura de pruebas ni su efectividad.


## Resultados de Github Copilot Chat
	- Se detect� uso Excesivo de desactivaci�n de advertencias relacionadas con diferentes code smells
	- Las categorias mas desactivadas son:
		- **Nombramiento de variables**: Se relacionan con la nomenclatura de las variables.
		- **Inicializaci�n de variables**: Se relacionan con la no inicializaci�n de las variables no nulas.
		- **Correcto uso de los tipos de datos**: Se relacionan con el uso correcto de los tipos.
	- Se detect� caso omiso deliveradamente a las advertencias del IDE, incluso cuando estas estan marcadas como errores.
	- Se detect� una clase Dios, la cual tiene una cantidad excesiva de m�todos y atributos, alrededor de 350 lineas de c�digo para la clase principal.


## Resultados de Visual Studio

- **Advertencias**: 67
- **Errores**: 37
- **Mensajes**: 3
- El limpiador y formateador autom�tico de c�digo modific� 3 archivos.
- En vez de lanzar excepciones mas especificas, se lanzan excepciones generales.
- Se detect� uso excesivo de desactivaci�n de advertencias relacionadas con diferentes code smells.
- Se desactivan advertencias en lugares donde no se podrian generar esos errores indicados por las advertencias.
- Se detect� caso omiso deliveradamente a las advertencias del IDE, incluso cuando estas estan marcadas como errores.
- Falta de organizaci�n en los controladores donde las acciones no estan agrupadas por funcionalidad [Get, Post, Get?]
- Se detect� mucho c�digo que no se esta utilizando en el proyecto. 

## Resultados de Snyk.io (Vulnerabilidades)
- **RestClient.Net.Samples.Uno.Droid.csproj .NetFramework Version 8**: Alto 6, Medio 1
- **RestClient.Net.Samples.Uno.Wasm.csproj netstandard2.0**: Alto 6, Medio 1
- **RestClient.Net.Samples.UnitTests.csproj net45**: Alto 5, Medio 1
- **RestClient.Net.UnitTests.csproj net6.0**: Alto 5, Medio 1
- **RestClient.Net.UnitTests.csproj netcoreapp3.1**: Alto 5, Medio 1
- **RestClient.Net.UnitTests.csproj net5.0**: Alto 5, Medio 1
- **RestClient.Net.UnitTests.csproj net7.0**: Alto 5, Medio 1
- **RestClient.Net.PerformanceTests.csproj netcoreapp3.1**: Alto 2, Medio 1
- **Code Analysis**: Alto 1, Low 16
- **RestClient.Net.Samples.csproj netstandard2.0**: Alto 1
- **RestClient.Net.CoreSample.csproj net6.0**: Alto 1
- **ApiExamples.csproj netcoreapp3.1**: Alto 1

## Resultados de Pruebas Manuales

- La instalaci�n del proyecto presenta gran complejidad.
  - Vulnerabilidad de alto riesgo en Newtonsoft.Json.
  - Discrepancias en las versiones de librer�as instaladas.
  - Compatibilidad solo con versiones descontinuadas de .NET Core (2.0 y 4.5).
  - Falta de compatibilidad con versiones de .NET Core superiores a la 7.
- Falta de buenas pr�cticas.
  - Insuficiente documentaci�n y comentarios en el c�digo.
  - Pruebas unitarias existentes no son detectadas.
  - Desorganizaci�n en el proyecto de pruebas.
  - Se detect� TODOs sin resolver.
  - Hay poco uso de carpetas para organizar y agrupar el c�digo.
  - Hay mucho codigo dedicado a suprimir advertencias del IDE.
  - Los namespaces no corresponden a la estructura de carpetas y la advertencia se suprime.
  - La arquitectura Modelo Vista Controlador solo se aplica en ciertas partes del proyecto.
  - Esta joya: 
	- //Note: not sure why this is necessary...
	- RestClient.Net/DefaultGetHttpRequestMessage.cs Linea 69.
	- Clase llamada "Stuff.cs" con ning�n comentario que la explique.
	- //Is this good?
	- RestClient.Net.Abstractions/CallExtensions.cs Linea 66
	

## Recomendaciones

- **Refactorizaci�n**: Priorizar la resoluci�n de los problemas bloqueantes y cr�ticos. Considerar dividir las clases sugeridas para mejorar la legibilidad.
- **Negligencia de advertencias**: Revisar y corregir las advertencias desactivadas en el c�digo. Asegurarse de que no se est�n ignorando problemas importantes especialmente si el mismo IDE las marca.
- **Documentaci�n**: Aumentar la cantidad de comentarios en el c�digo, especialmente en partes complejas y para TODOs importantes.
- **Pruebas**: Mejorar la cobertura de pruebas automatizadas. Reorganizar y optimizar el proyecto de pruebas para asegurar su efectividad.
- **Dependencias**: Actualizar o reemplazar la librer�a Newtonsoft.Json por una versi�n sin vulnerabilidades conocidas. Unificar versiones de librer�as para evitar conflictos.
- **Compatibilidad**: Asegurar la compatibilidad del proyecto con versiones recientes de .NET Core para garantizar seguridad y soporte a largo plazo.
- **Organizacion**: Organizar los controladores de acuerdo a su funcionalidad y agrupar las acciones por tipo de solicitud HTTP.
- **Eliminaci�n de c�digo no utilizado**: Eliminar el c�digo que no se esta utilizando en el proyecto o que no est� referenciado por otros componentes.
- **Descontinuar soporte de versiones antiguas**: Eliminar soporte para versiones de .NET Core descontinuadas y migrar a versiones m�s recientes para aprovechar mejoras y correcciones de errores ademas de limpiar el proyecto.
- **Agrupacion de codigo**: Organizar el c�digo en carpetas y agrupar por funcionalidad para facilitar la lectura y mantenimiento del c�digo.
- **Pruebas unitarias**: Asegurarse de que las pruebas unitarias se puedan ejecutar correctamente pues no importa si hay cobertura del 100% si no se pueden ejecutar.

