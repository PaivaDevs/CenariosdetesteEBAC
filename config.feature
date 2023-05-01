            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página do produto para ver opções de cores, tamanhos e quantidades

            Cenário: Adicionar um produto ao carrinho
            Quando o cliente colocar "qualquer cor"
            E o tamanho "P, M ou G"
            Mas a quantidade de "1 a 10"
            Então deve aceitar e adicionar o produto no carrinho e aparecer a mensagem "Produto adicionado com sucesso no seu carrinho"

            Cenário: Quantidade permitida de vendas de um produto
            Quando o cliente colocar uma camiseta de "qualquer cor"
            E o tamanho "P, M ou G"
            E a quantidade for ">10"
            Então deve aparecer uma mensagem na tela dizendo "Quantidade máxima atingida"

            Cenário: Deve ser obrigatório a seleção de uma cor, tamanho e quantidade
            Quando o cliente escolher um "produto" no site
            E eu tentar adicionar o produto no "carrinho"
            Então deve aparecer uma mensagem na tela dizendo "Escolha uma cor, um tamanho e a quantidade"

            Cenário: Limpar o produto escolhido
            Quando o cliente colocar uma camiseta de "qualquer cor"
            E o tamanho for "P, M ou G"
            E quantidadefor "1 á 10"
            Então o cliente clicar no botão "limpar" logo deve voltar ao estado original, assim limpando as seleções

            Esquema do Cenário: Quantidade permitida de venda de um produto
            Dado que o cliente escolha uma quantidade de no máximo 10 produtos
            Quando ele preencher a <quantidade> de 1 á 10
            E ultrapassar da quantidade permitida
            Então deve aparecer a <mensagem> Quantidade permitida excedida

            | Produto  | Cor          | Tamanho | Quantidade | Mensagem                        |
            | Camiseta | Preto        | M       | 11         | "Quantidade permitida excedida" |
            | Shorts   | Jeans escuro | G       | 19         | "Quantidade permitida excedida" |
            | Jaqueta  | Marrom       | P       | 12         | "Quantidade permitida excedida" |








