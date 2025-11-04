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

            Cenário: Campos Vazios
            Quando não tiver preenchido todos os <campos> obrigatórios
            E clicar em finalizar compra para concluir o cadastro
            Então uma <mensagem> de erro deve ser exibida

            Esquema do Cenário:

            Exemplos:
            | campos             | informação | mensagem                                               |
            | Nome               | vazio      | "Informe o nome para concluir a compra"                |
            | Sobrenome          | vazio      | "Informe o sobrenome para concluir a compra"           |
            | País               | vazio      | "Informe o país para concluir a compra"                |
            | Endereço           | vazio      | "Informe o endereço para concluir a compra"            |
            | Cidade             | vazio      | "Informe a cidade para concluir a compra"              |
            | CEP                | vazio      | "Informe o CEP para concluir a compra"                 |
            | Telefone           | vazio      | "Informe o telefone para concluir a compra"            |
            | Endereço de E-mail | vazio      | "Informe um endereço de e-mail para concluir a compra" |

            Cenário: Quantidade Máxima de Venda
            Quando eu selecionar uma quantidade superior à 10
            Então deve exibir a mensagem "O máximo permitido para compras é de 10 itens"

            Cenário: Limpar Configurações
            Quando eu clicar no botão Limpar
            Então as configurações de cor, tamanho e quantidade devem retornar para as originais