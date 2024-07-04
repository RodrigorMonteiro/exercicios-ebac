 #language: pt

            Funcionalidade: Login na plataforma
            Como cliente EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Cenário: Ao inserir dados válidos, deve ser direcionado para a tela de checkout
            Dado que eu acesse a página de autenticação do portal EBAC-SHOP
            Quando eu digitar o usuário "exemplo@ebac.com.br"
            E a senha "password123"
            Então deve exibir todos os meus pedidos na tela de checkout

            Cenário: Ao inserir um dos campos inválidos, deve exibir uma mensagem de alerta "Usuário ou senha inválidos"
            Dado que eu acesse a página de autenticação do portal EBAC-SHOP
            Quando eu digitar o usuário "exemploInexistente@ebac.com.br"
            E a senha "password123"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"
            