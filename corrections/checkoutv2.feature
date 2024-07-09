            #language: pt

            Funcionalidade: Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de cadastro

            Cenário: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            Quando eu preencher todos os campos obrigatórios
            E clicar no botão "finalizar compra"
            Então o sistema deve seguir para a tela de finalização de compra

            Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
            Quando eu preencher o campo e-mail com formato inválido
            Então o sistema deve exibir a mensagem "Formato de e-mail inválido"

            Cenário: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta
            Quando eu deixar os campos obrigatórios vazios
            Então o sistema deve exibir a mensagem "Todos os campos obrigatórios devem ser preenchidos."

            Esquema do Cenário: Cadastrar multiplos usuários
            Quando eu preencher todos os campos desejados
            Então deve exibir a <mensagem> de sucesso ou erro dependendo do cadastro feito

            Exemplos:
            | nome    | sobrenome | pais     | endereco                   | cidade      | CEP         | telefone          | email                     | mensagem                                              |
            | "José"  | "Silva"   | "Brasil" | "Rua Exemplo, 123"         | "São Paulo" | "01000-000" | "(11)99999-9999"  | "josesilva@exemplo.com"   | "Deseja finalizar a compra?"                          |
            | "Maria" | "Silva"   | "Itália" | "Rua Exemplo Itália, 1234" | "Roma"      | "0000000"   | "+39 9999-9999"   | "mariasilvaexemplo.com"   | "Formato de e-mail inválido."                         |
            | "Pedro" | "Jordão"  | "Brasil" | ""                         | ""          | ""          | "(16) 99998-9999" | "pedrojordao@exemplo.com" | "Todos os campos obrigatórios devem ser preenchidos." |