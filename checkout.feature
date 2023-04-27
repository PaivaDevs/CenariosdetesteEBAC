            #language: pt

            Funcionalidade: Checkout
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado Finalizar o cadastro do cliente para assim ele conseguir fazer a compra de seu produto

            Cenário: Cadastro feito com sucesso
            Quando o cliente estiver na página de "cadastro"
            E preencher todos os seus "dados" corretamente
            E ele escolher a "forma de pagamento"
            Então quando ele clicar no botão "finalizar compra" a compra deve ser concluída.

            Cenário: Algum dado inválido ou campo de dados vazio
            Quando o cliente preencher o campo de email com formato inválido "joaozinho@.com"
            Ou deixar algum "Campo obrigatório vazio"
            E tentar "finalizar a compra"
            Então logo após ele clicar no botão deve aparecer uma mensagem "Formato de email inválido"
            Ou se o cliente deixar algum campo de dados vazio, ao clicar deve aparecer a mensagem "Preencha todos os campos obrigatórios"

            Esquema do Cenário: Tentado comprar com dados inválidos
            Quando o cliente digital um <email>
            E esse <formato> de email for inválido
            Ou o cliente deixar um <campo de dados vazio>
            Então deve exibir uma <mensagem> de alerta na tela

            | Nome    | Sobrenome | País   | Estado         | Email              | Mensagem                                                         |
            | Maria   | Silva     | Brasil | Alagoas        | maria123.com       | Formato de email inválido                                        |
            | Antonio | Da Costa  | Brasil | São Paulo      | antonio@homail.com | Formato de email inválido                                        |
            | João    | Neto      | Brasil | Rio de Janeiro | joao_rj@gmael.com  | Formato de email inválido                                        |
            | José    |           |        | Rio de Janeiro | joao_rj@gmael.com  | Preencha todos os campos obrigatórios                            |
            | Leticia |           |        | Pernambuco     | leticia@anjds.comk | Formato de email inválido, preencha todos os campos obrigatórios |




