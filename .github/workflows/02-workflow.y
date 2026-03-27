# 1. Gatilho (trigger)
name: Pipeline Esperimental
on: push
# 2. Definicao dos Jobs
jobs:
  ci-continuous-integration:
    name: Teste de CI
    runs-on: ubuntu-22.04
    steps:
      - run: echo "Ola Fatec!!!"
        name: Mensagem Especial
      - uses: actions/checkout@v5
        name: Fazendo clone e checkout no meu repositorio nesta maquina virtual
      - name: Zipar os arquivos do meu repositorio
        run: zip -r arquivo.zip .
      - name: listar os arquivos no meu repositorio
        run: ls -la
