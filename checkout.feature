            #language: pt

            Funcionalidade: Tela de Cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de checkout no EBAC-SHOP

            Cenário: Cadastro de Campos Obrigatórios
            Quando eu digitar todas as informações obrigatórias
            E clicar em finalizar compra para concluir o cadastro
            Então deve exibir uma mensagem de sucesso "Compra realizada com sucesso"

            Cenário: E-mail Inválido
            Quando eu digitar o e-mail "bruno.ebac.com.br"
            E clicar em finalizar compra para concluir o cadastro
            Então deve exibir uma mensagem de erro "E-mail inválido"

            Esquema do Cenário: Campos Vazios
            Quando não tiver preenchido todos os <campos> obrigatórios
            E clicar em finalizar compra para concluir o cadastro
            Então uma <mensagem> de erro deve ser exibida

            Exemplos:
            | campos             | mensagem                                               |
            | Nome               | "Informe o nome para concluir a compra"                |
            | Sobrenome          | "Informe o sobrenome para concluir a compra"           |
            | País               | "Informe o país para concluir a compra"                |
            | Endereço           | "Informe o endereço para concluir a compra"            |
            | Cidade             | "Informe a cidade para concluir a compra"              |
            | CEP                | "Informe o CEP para concluir a compra"                 |
            | Telefone           | "Informe o telefone para concluir a compra"            |
            | Endereço de E-mail | "Informe um endereço de e-mail para concluir a compra" |