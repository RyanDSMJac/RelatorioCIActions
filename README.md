### 1. Inicializar e Instalar as Dependências

Instala todas as dependências (incluindo as de desenvolvimento para testes e lint)

```bash
npm ci

```

---

### 2. Executar a Análise Estática

Para validar o padrão do código:

```bash
npm run lint

```

---

### 3. Executar o Build

Para rodar o script de build configurado:

```bash
npm run build

```

---

### 4. Executar os Testes Unitários com Cobertura

Para rodar os testes exatamente com as flags que estão no seu workflow:

```bash
npm test -- --coverage --watchAll=false

```

---

### 5. Construir e Rodar a Imagem Docker Localmente

Para simular a etapa 5 do seu pipeline de criação de imagem:

```bash
# 1. Construir a imagem Docker (substitua 'minha-aplicacao-web' pelo nome desejado)
docker build -t minha-aplicacao-web:latest .

# 2. Rodar o container localmente para testar se a aplicação sobe corretamente
docker run -d -p 3000:3000 --name meu-container-web minha-aplicacao-web:latest

# 3. Testar se está respondendo (ou acesse http://localhost:3000 no navegador)
curl http://localhost:3000

# 4. Parar e remover o container de teste após verificar
docker stop meu-container-web
docker rm meu-container-web

```