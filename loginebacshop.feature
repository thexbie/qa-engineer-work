            #language: pt

            Funcionalidade: Login na Plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de login da EBAC-SHOP

            Cenário: Autenticação Válida
            Quando eu inserir as credencias de login válidas
            E clicar em login
            Então devo ser direcionado à página de checkout

            Cenário: Usuário Inválido
            Quando eu digitar o usuário "zzz@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário "bruno@ebac.com.br"
            E a senha "123"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"