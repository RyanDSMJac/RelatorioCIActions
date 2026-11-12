# Usa uma imagem oficial leve do Node.js
FROM node:20-alpine

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos de dependências
COPY package*.json ./

# Instala apenas as dependências de produção para otimizar o tamanho da imagem
RUN npm ci --only=production

# Copia o restante do código da aplicação
COPY . .

# Expõe a porta que a aplicação utiliza
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["npm", "start"]