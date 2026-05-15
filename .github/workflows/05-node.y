name: Pipeline Node.js 
on:
  push:
    branches: [main, develop]

jobs:
  testes:
    name: Job 1 de testes
    runs-on: ubuntu-latest
    steps:
      - name: Passo 1 Task de Checkout
        uses: actions/checkout@v5

    - name: Passo 2 - Task de Set up Node.js
      uses: actions/setup-node@v4
      with: 
        node-version: 22
  - name: Passo 3 - Task de Instalar Dependencias
    run : npm ci

  - name: Passo 4 - Task de Run testes
    run: echo "npm run test" 
  build: 
    name: Job 2 build
    runs-on: ubuntu-latest
    needs: testes
    steps:
      -run: echo "npm run build"
  qa: 
    name: Fase de QA 
    runs-on: ubuntu-latest
    needs: [testes, build]
    steps:
      -name: Passo QA 
      run: echo "Teste de QA"  

  prod:
    name: Em produção
    runs-on: ubuntu-latest
    needs: qa
    steps:
      -run: echo "npm run deploy"
      -name: Vai para a produção      
