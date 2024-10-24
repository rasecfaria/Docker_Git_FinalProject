# Usa uma imagem base do Python
FROM python:3.10-slim

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia o requirements.txt para instalar as dependências
COPY requirements.txt requirements.txt

# Instala a biblioteca cs50
RUN pip install --no-cache-dir -r requirements.txt

# Copia o código Python para o container
COPY . .

# Executa o script readability.py
CMD ["python", "readability.py"]