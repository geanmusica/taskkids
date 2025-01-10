# Use a imagem oficial do Python como base
FROM python:3.9-slim

# Defina o diretório de trabalho dentro do container
WORKDIR /app

# Copie o arquivo requirements.txt (se você tiver) ou os arquivos do projeto para dentro do container
COPY requirements.txt .

# Instale as dependências do seu projeto
RUN pip install --no-cache-dir -r requirements.txt

# Copie todos os arquivos do seu projeto para o container
COPY . .

# Exponha a porta em que o Flet vai rodar (geralmente 8501 ou outra se configurado)
EXPOSE 8501

# Comando para rodar o aplicativo Flet
CMD ["python", "app.py"]
