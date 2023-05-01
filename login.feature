            #language: pt

            Funcionalidade: login na plataforma

            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que o cliente consiga acessar a plataforma da EBAC-SHOP caso o login esteja correto

            Cenário: Permitir acesso a plataforma por email ou username
            Quando o cliente colocar o email "mariacunha@ebac.com"
            Ou o username "mariacunha123"
            E a senha "maria789"
            Quando o cliente clicar no botão "login"
            Então o cliente deve ser direcionado para tela de checkout dos produtos dele

            Cenário: Não deve permitir o mesmo username ou email igual a outros usuários
            Quando o cliente colocar um email igual a outro usuário "mariacunha@ebac.com"
            Ou um username igual de outro usuário "mariacunha123"
            E a senha "maria789"
            Quando o cliente cliente clicar no botão "login"
            Então deve aparecer a mesnagem "Email ou Username já em uso"

            Cenário: Renovação de senha
            Quando um cliente inativo a 3 meses colocar o email "mariacunha@ebac.com"
            E a senha "maria789"
            Então deve aparecer uma mensagem na tela "Por motivo de inatividade você deve trocar a sua senha"

            Cenário: Regras para senha
            Quando o cliente for fazer uma conta e colocar o email "mariacunha@ebac.com"
            E a senha "cunha124"
            Então deve aparecer uma mensagem de alerta na tela falando "Não é permitido senha com o seu sobrenome"

            Cenário: Caracteres da senha
            Quando o cliente for fazer uma conta e colocar o email "mariacunha@ebac.com"
            E a senha for "maria1"
            Então deve aparecer um alerta na tela dizendo "Sua senha deve ter entre 8 á 12 caracteres"

            Esquema do Cenário: Senha com sobrenome (Regra)
            Dado que o cliente coloque o sobrenome na senha 
            Quando o cliente preencher <email>, <username>
            E escolher uma senha que tenha seu sobrenome
            Então deve exibir a <mensagem> de alerta que não é permitido

            Exemplos:

            | email                   | username      | senha         | mensagem                                    |
            | mariacunha23@ebac.com   | mariacunha123 | mariacunha789 | "Não é permitido senha com o seu sobrenome" |
            | michaelsilva12@ebac.com | michael123    | silva789      | "Não é permitido senha com o seu sobrenome" |
            | anacosta123@ebac.com    | ana124        | anacosta789   | "Não é permitido senha com o seu sobrenome" |











