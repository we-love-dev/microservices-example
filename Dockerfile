# Para instalar e executar:
# $ docker build -t palestra/microservice:112215 .
# $ docker run -p 3000:3000 -d palestra/microservice:112215

# Para remover a imagem execute:
# $ docker rmi -f palestra/microservice:112215

# Configuração da máquina base
FROM node:slim

# Copiando o código fonte
ADD ./ /app

# Atualizando dependencias
RUN cd /app && npm install

# Preparando o ambiente
RUN npm config set registry http://registry.npmjs.org/
RUN npm install -g forever

# Expondo a portas
EXPOSE 3000

# Estartando a API
CMD ["forever", "/app/bin/www.js"]
