# An�lisis de Deuda Tecnica y Recomendaciones

## Tipos de Deuda Tecnica en el Proyecto
- **Requerimientos**: Parece que el proyecto cumple con su proposito y los usuarios no han reportado problemas con el mismo.
- **Arquitectura**: El proyecto principal cuenta con arquitectura de MVC pero las otras bibliotecas no cuentan con una arquitectura clara o al menos bien organizada y lo cual puede involucionar en una Gran Bola de Lodo.
	- Nota extra: En el proyecto base ya hay Issues que hablan de la necesidad de mejor rendimiento y velocidad, lo cual indica una arquitectura no optima ni escalable.
- **Dise�o**: El dise�o del proyecto depende mucho de una clase Dios llamada Client.cs la cual tiene 300 lineas de c�digo la cual viola el principio de responsabilidad �nica ya que una entidad no deber�a tener aparte de sus propiedades tanta l�gica de negocio.
	- Ejemplo: Client.cs
- **C�digo**: Gran parte del c�digo fuente est� dedicado a desactivar las reglas de an�lisis de c�digo del IDE y de SonarQube. Esto es un problema grave pues no se puede determinar la calidad del c�digo fuente y se presta para que se introduzcan malas pr�cticas en el c�digo.
	- Ejemplo Com�n:  #pragma warning disable CA1002
- **Pruebas**: Ver secci�n de Pruebas Unitarias.
- **Despliegue**: El c�digo se pudo desplegar como paquete Nuget sin problema desde el 2016. Pero existen problemas con las dependencias que se necesitan actualizar pues cuentan con vulnerabilidades. Aparte de eso el proyecto hace buen uso del administrador de paquetes Nuget de .Net el cual es un estandar en la industria.
- **Documentaci�n**: Existe documentaci�n que explica como usar el proyecto y como contribuir al mismo. Pero no se cuenta con una documentaci�n t�cnica que explique la arquitectura del proyecto y como se puede extender, modificar o desplegarlo. Ademas hay clases que no cuentan con documentaci�n de su proposito y uso.
	- Ejemplo: Stuff.cs, esta clase pareciera como si fuera basura pero es dificil determinar su proposito sin documentaci�n.
- **Versionamiento**: El proyecto cuenta con Github para el versionamiento del c�digo pero este no se esta utilizando correctamente pues aunque mediante los Tags expresen los releases, no se esta utilizando correctamente el sistema de ramas para el desarrollo del proyecto. Solo cuenta con la rama Main activa y las otras estan altamente desactualizadas y no corresponden a los releases.

## Pruebas Unitarias
- **Cobertura de Pruebas**: Segun la p�gina principal el proyecto cuenta con una cobertura del 100% del c�digo. Este n�mero es el declarado, pero no se sabe con exactitud pero si se sabe que hay codigo que no est� siendo referenciado y menos probado.
- **Cantidad de Pruebas**: Se cuenta con 669 pruebas unitarias totales.
- **Problema**: El c�digo fuente cuenta con problemas en su libreria y en estandares de c�digo que no deja correr ninguna prueba unitaria.
- **Conclusi�n**: No se puede determinar si las pruebas unitarias son correctas o no ni la calidad de estas.

## Mejoras propuestas para reducir la Deuda Tecnica
- **Requerimientos**: No se encontraron problemas con los requerimientos del proyecto.
- **Arquitectura**: Se propone reorganizar las bibliotecas y clases para que sigan una arquitectura clara y escalable. Se recomienda no seguir usando la arquitectura MVC y cambiar por otra que permita una mejor escalabilidad y rendimiento.
	- **Recomendaci�n**: Se propone usar una arquitectura Basada en Capas, la cual divide el proyecto en capas por funcionalidad y responsabilidad.
- **Dise�o**: Se propone reorganizar la clase Client.cs para que siga el principio de responsabilidad �nica. No deberia haber raz�n para apagar las advertencias del IDE y de SonarQube.
	- **Recomendaci�n**: Dividir la clase Client.cs en clases m�s peque�as que sigan el principio de responsabilidad �nica.
- **C�digo**: Se propone quitar todo el c�digo relacionado con apagar las advertencias del IDE y de SonarQube ya que esto no permite determinar la calidad del c�digo fuente.
	- **Recomendaci�n**: Se recomienda seguir las reglas de an�lisis de c�digo del IDE y de SonarQube para mejorar la calidad del c�digo fuente.
	- **Recomendaci�n**: Se deben seguir las advertencias del IDE y de SonarQube que si se pueden detectar pues son faciles de corregir y mejoran la calidad del c�digo fuente.
- **Pruebas**: Se propone arreglar los problemas en el c�digo fuente para que se puedan correr las pruebas unitarias.
	- **Recomendaci�n**: Se recomienda arreglar los problemas en el c�digo fuente para que se puedan correr las pruebas unitarias y determinar si estas son correctas o no.
- **Despliegue**: Se propone actualizar las dependencias del proyecto para que no cuenten con vulnerabilidades.
	- **Recomendaci�n**: Se recomienda actualizar las dependencias del proyecto para que no cuenten con vulnerabilidades y se pueda desplegar sin problemas.
- **Documentaci�n**: Se propone documentar las clases que no cuentan con documentaci�n de su proposito y uso.
	- **Recomendaci�n**: Se recomienda documentar las clases que no cuentan con documentaci�n de su proposito y uso para que se pueda entender mejor el proyecto.
- **Versionamiento**: Se propone utilizar correctamente el sistema de ramas y versionamiento para el desarrollo del proyecto.
	- **Recomendaci�n**: Se recomienda utilizar correctamente el sistema de ramas para el desarrollo del proyecto para que se pueda seguir el progreso del proyecto y se pueda trabajar en paralelo en diferentes funcionalidades y sea mas claro el c�digo fuente.