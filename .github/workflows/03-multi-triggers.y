name: Pipeline Multi Triggers
on: push
jobs:
  ci-continuous-integration:
    name: Teste de CI
    runs-on: ubuntu-latest
    steps:
      - run: echo "Olá, Fatec!"
        name: Mensagem Especial
      - uses: actions/checkout@v5
        name: Fazendo clone e checkout do meu repositório nesta máquina virutal
      - name: Boa tarde!
        run: echo "Fatec ZS"
      - run: echo "Finalizado"
      - run: zum-claka
