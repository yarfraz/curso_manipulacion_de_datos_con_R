## Clase 1
## Tema: Conceptos basicos
## Autor: Yarfraz Nazuddeen
 



# Punto de partida --------------------------------------------------------

# Estamos en un script de R, es como un block de notas. 
# Aqui vamos a escribir codigo:

canasta_de_frutas <- data.frame(fruta = c("mango", "cambur", "parchita"), cantidad = c(5, 2, 1))

library(ggplot2)
ggplot(canasta_de_frutas) + #Grafico de barras sobre las frutas en la canasta y su cantidad
  aes(x = fruta, y = cantidad, fill = fruta) + 
  geom_col(color = "black") + 
  scale_fill_manual(values = c('white', 'red', 'yellow'))


# En R se utilizan los Hashtags para agregar comentarios.
# Los comentarios son distintos del codigo de las funciones. 
# Esa es la forma de decirle a R que estamos haciendo un comentario,
# de lo contrario, R pensara que el texto es codigo y va a intentar ejecutarlo:

Hola mundo

# Puedes ver que al lado del numero de linea, hay una X.
# Los comentarios son muy utiles a la hora de documentar el codigo.
# Esto nos permite hacer anotaciones sobre para qué funciona un pedazo de nuestro codigo.
# Usare el # para agregarles comentarios a lo que vayamos haciendo asi ustedes puedan 
# hacer un seguimiento de la informacion.


# A wild Section appeard (Again) --------------------------------------------------

# Eso de arriba es una "Seccion". 
# Permite dividir el script en partes o secciones
# Asi pueden dividir una parte de su codigo para una funcion o objetivo especifico.
# las secciones tienen un pequeno triangulo al lado del numero de la linea en la 
# parte izquierda. Eso sirve para desplegar o cerrar la seccion.

# Para hacer una seccion pueden utlizar el atajo ctrl + shift + r


# Intro a la interfaz de Rstudio ------------------------------------------

# Parte superior izquierda: Visualizador de documentos
# Parte superior derecha: interfaz de visualizacion del ambiente (enviroment), 
# objetos, y el historial
# Parte inferior izquierda: consola, el lugar donde se interpreta el codigo de R.
# Parte inferior derecha:
# Files
# Plots
# Packeages
# Help
# Viewer




# Mas info sobre R --------------------------------------------------------

# R es un lenguaje de programcion orientado a objetos.
# Esto quiere decir que R interacctua con "objetos" que se instalan en su espacio
# y que nosotros creamos.
# Los objetos mas comunes se llaman "Variables", tambien estan las funciones y 
# otros tipos de datos que veremos mas adelante.


# Sesion de R

# Al iniciar Rstudio estas activando una sesion.
# En una sesion se almacena todo lo que hagas
# Rstudio utiliza la memoria RAM para mantener la sesion activa
# Esto es importante porque R trabaja con los objetos que tu integres a su entorno.
# Al cerrar Rstudio tambien cierras la sesion. 
# En ese punto puedes elegir guardar los objetos de tu sesion para usarlos despues
# Pero a veces eso no es necesario. 
# Lo importante aqui es saber que cada vez que inicies R, se abrira una nueva sesion. 
# y en una sesion t


# Variables

# En R puedes asignar variables. 
# Esto es crear objetos, ponerles un nombre y adjudicarle un valor. 
# Dependiendo de su valor la variable obtiene caracteristicas particulares que explicaremos luego. 
# Para crear una variable tenemos que usar el operador de asignacion "<-"

mi_nombre <- "Yarfraz" # He creado una variable cuyo contenido es mi nombre. 

# Asignar variables es lo mas esencial para trabajar con R




# Conceptos basicos -------------------------------------------------------
# Ejecutar y devolver:

# R principalmente ejecuta las ordenes que le indiquemos, por ejemplo

# R ?cuanto es 
2+2 #?

# R nos devolvio una respuesta a nuestra pregunta en la consola en la parte de abajo. 
# el formato es simple. Dentro de [corchetes] esta el numero del indice que indica 
# el orden del resultado, en ese caso el primero.
# Y si yo le digo: 

# R guarda en el   
bolso <- c("cuaderno", "lapiz", "sacapuntas", "borrador", "tupper con el almuerzo")
# Dejame revisar si esta todo 
bolso

str(bolso) # funcion que permite ver la estructura de un objeto o variable



# funciones ---------------------------------------------------------

# Una funcion es un set de instruccion que te permite ejecutar una accion en R
# intenta lo siguiente: 
# Escribe lo que quieras dentro de las comillas.


print("")

# Luego selecciona el codigo y dale ctrl + Enter.
# Finalmente mira la consola abajo.

# Explicacion:
# print() es una funcion que permite imprimir texto en la consola. 
# Es la forma mas basica de correr texto en R con una funcion. Aunque no solo en R
# sino tambien en muchos otros lenguajes de programacion. 

# Existen multiples funciones para hacer muchas cosas en R, por ejemplo:
# Digamos que quiero saber el promedio de edades  del curso

# Determino una variable que tenga todas las edades 
edades_participantes <- c(22,18,25,23,24)


# Luego busca la funcion que permite sacar el promedio de varios numeros:
mean(edades_participantes)


# Las funciones estan compuestas de argumentos
# Un argumento es un parametro que indica un elemento que la funcion necesita para trabajar
# Por ejemplo:

edades_participantes_na <- c(22,18,25,23,24, NA)

mean(edades_participantes_na)

# El resultado fue NA. ?Por que?
# Es NA porque la funcion mean() no ignora los valores ausentes automaticamente
# Por eso tiene un argumento especificamente para estos casos:

mean(edades_participantes_na, na.rm = TRUE)

# Ahora si arrojo un resultado. 
# na.rm es un argumento que sirve para indicarle a la funcion que nuestros datos tienen 
# valores NA, valores ausentes. Al poner TRUE validamos que la funcion ignore esos NA

# Al trabajar con funciones, se tiene que estar pendientes de sus argumentos
# para entender los parametros que necesita para su funcionamiento ideal. 



# Lenguaje matematico
# Como pudieron observar, R tambien funciona como una calculadora.
# Realiza operaciones matematicas y tiene funciones para hacer calculos.
# Luego repasaremos las funcionalidades matematicas.
# De forma resumida, R es una calculadora gigante.


# Paquetes

# R viene con un conjunto de funciones y funcionalidades generales
# Pero es posible aumentar el set de herramientas que podemos utilizar en R.
# Un package (paquete) es un conjunto de codigo organizado para hacer tareas concretas. 
# Los paquetes traen una serie de funciones con las que nosotros trabajaremos. 
# Los paquetes son descargables desde el sitio web CRAN (Comprenhensive R Archive Network)
# Los podemos instalar utilizando la funcion: 

install.packages(nombre_del_paquete)

# Tambien podemos ir a la barra de herramientas superior > Tools > Install packages
# Escriben el nombre y le dan instalar 

# Sin embargo, para usar las funciones del paquete tienen que activarlo>

library(nombre_del_paquete) # ESta funcion activa el paquete en la sesion actual de R

# Siempre al abrir R para empezar un nuevo trabajo se deben activar los paquetes a utilizar

# Otra forma de hacer todo este proceso es ir a la pesta?a "Packages" de la parte inf. derecha
# Alli pueden instalar, actualizar, activar y borrar los paquetes de forma interactiva. 




# Working directory -------------------------------------------------------

# El WD o "Directorio de Trabajo" es la carpeta de tu pc a la que R tiene acceso.
# El WD es el lugar donde estan presentes los archivos con los que R va a interactuar
# Es en el WD donde vamos a guardar nuestros datos para analizar

# Puedes saber cual es tu working directory con la funcion:

getwd()

# Siempre puedes cambiar tu WD:
  # 1. Utiliza la funcion: 

setwd("direccion de la carpeta destino")

  # 2. Ve a la pesta?a Files en la parte inf. derecha
      # Navega por las carpetas desde la barra y busca la carpeta a seleccionar
      # Una vez estes en la carpeta deseada, presiona el engranaje que dice "More"
      # More > Set As Working Directory

# Para moverse a la WD, en el mismo menu anterior> 
  # More > Go To Working Directory

# Para ver que archivos hay en el WD utiliza la funcion: 

list.files()

# Para ver las carpetas o directorios contenidos en el WD:

list.dirs()


# Pedir ayuda en R ------------------------------------------

# Documentacion
# R tiene su propio manual integrado para todas las funcionalidades que tiene
# Si escribes 

help("mean") # o tambien >

?mean()

# el resultado te llevara a la pesta?a Help para que veas la documentacion de la funcion

# La documentacion te sirve para leer la informacion disponible sobre una funcion: 
  # Descripcion 
  # Utilizacion
  # Argumentos
  # valores
  # Referencias

# Investigar por tus medios
# A veces leer la documentacion es dificil porque esta escrita como un manual.
# A veces lo mejor es googlear la funcion y ver que hace explicada de forma simple
# Tambien usualmente los problemas vienen al tratar de aplicar una funcion para resolver
# un problema especifico y la documentacion no es suficiente para apoyarte. 
# Entonces googlea tu problema y esta garantizado al 95% de confianza 
# que un extra?o en internet haya conseguido una solucion


#







