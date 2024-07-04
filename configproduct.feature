#language: pt

Funcionalidade: Configurar Produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Cenário: Seleção de cor, tamanho e quantidade devem ser obrigatórios
Dado que eu quero comprar um produto
Quando eu escolher a cor
E escolher o tamanho
E escolher a quantidade
Então posso adicionar o(s) produto(s) no carrinho

Cenário: Deve permitir apenas 10 produtos por venda
Dado que eu queira comprar mais de 10 produtos
Quando eu adicioná-los no carrinho
Então o sistema deve exibir a mensagem "É permitido apenas a compra de 10 produtos por vez."

Cenário: Quando eu clicar no botão "limpar" deve voltar ao estado original
Dado que eu adicionei produtos ao carrinho
Quando eu clicar no botão "limpar"
Então o carrinho deve ser limpo, removendo todos os produtos e voltado ao estado original vazio