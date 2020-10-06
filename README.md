# Utilidades varias para usar MacOS (o Linux) en ARQO

¿Qué incluye?

- Compilador para P1 y P2 (en `compiler/`) que funcione a través de docker

- Modelsim para P1 y P2 a través de docker (en `modelsim/`)

# Requisitos

- Compilador:
    - docker
- Modelsim
    - xquartz (o cualquier cliente X11)
    - socat
    - docker

# Instalación

En MacOS, basta con instalar [brew](https://brew.sh/), el gestor de paquetes de MacOS y ejecutar:

```
brew install socat                                           
brew cask install xquartz
brew cask install docker
```

Para instalar los comandos, en ambas carpetas se incluye un script `install.sh` que se debe ejecutar, instalando los comandos `compila_arqo` y `modelsim`.

# Uso

- `compila_arqo <programa ensamblador>`: compila el programa dado como argumento y genera los ficheros datos e instrucciones en el directorio en el que se lance el comando.
- `modelsim`: lanza una instancia de modelsim en el que el directorio de la shell se encuentra montado en `/cwd`.

# Nota
Todos estos programas vienen **sin garantía** de funcionamiento y se recomienda usar Windows. Estas utilidades son experimentales y no se garantiza su correcto funcionamiento.
