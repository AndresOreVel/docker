#La siguiente línea es para decirle, mi aplicación 
#funcionará con la versión 18 de node
FROM node:18

#Significa: dónde van a estar las rutas de mi proyecto
WORKDIR /app

#Copia todos los archivos que se llamen "package" y que acaben en .json
#a mi directorio de trabajo
COPY package*.json ./

#Comando de docker para decirle: ejecuta npm install
RUN npm install

#Significa: copia todos los archivos (primer punto) del directorio
#al directorio de trabajo (segundo punto)
COPY . .

#Para que el proyecto pueda funcionar necesitamos ejecutar lo siguiente
#Primero npm y después start
#NECESITO MODIFICAR EL SCRIPT QUE ARRANCA EL SERVIDOR en packge.json, SIMPLEMENTE AÑADIR
# "start": "node src/index.js"
CMD [ "npm", "start" ]

#Una vez hecho esto, necesito generar la imagen. Para ello vuelvo a la terminal y escribo todo en minúsculas
# "docker build -t dockernode ."   (con el -t le estamos dando un nombre a la imagen y con el punto le decimos copia todos los archivos a la imagen)


#Se necesita descargar la extensión WSL desde Visual Studio

#Una vez que se acabo de generar la imagen hago

# "docker run -it -p 4000:3000 dockernode"

#La opción -it te muestra por consola para ver cómo se va ejecutando
#Con la opción -p indicas el puerto
#En ejemplo le digo que voy a acceder a través del puerto 4000, pero originalmente está en el 3000


#Para ejecutarlo en segundo plano escribo en la consola
# docker run -d -p 4000:3000 dockernode

#Luego para ver el listado imágenes ejecutándose escribo
# docker ps

#Para pararlo escribo
# docker stop (id del container id)