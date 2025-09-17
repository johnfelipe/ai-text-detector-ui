# Usar imagen base de Python con CUDA (para GPU)
FROM runpod/pytorch:2.1.0-py3.10-cuda11.8.0-devel-ubuntu22.04

# Establecer directorio de trabajo
WORKDIR /app

# Copiar archivos de requisitos
COPY requirements.txt .

# Instalar dependencias de Python
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el código de la aplicación
COPY . .

# Exponer puerto (RunPod usa 8000 por defecto)
EXPOSE 8000

# Comando para iniciar el servidor
CMD ["python", "handler.py"]
