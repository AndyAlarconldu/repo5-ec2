# Imagen base de Python
FROM python:3.9-slim

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia y instala dependencias
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copia todos los archivos del proyecto al contenedor
COPY . .

# Expone el puerto 5005
EXPOSE 5005

# Comando para iniciar la aplicación
CMD ["python", "app.py"]
