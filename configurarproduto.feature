            #language: pt

            Funcionalidade: Configurar Produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com tamanho e gosto
            E escolher a quantidade
            Para inserir no carrinho

            Contexto:
            Dado que eu acesse a página de um produto no EBAC-SHOP
            
            Esquema do Cenário: Obrigatoriedade dos Detalhes do Produto
            Quando eu clicar em comprar sem configurar os <detalhes> do produto
            Então deve exibir uma <mensagem> de alerta

            Exemplos:
            | detalhes   | mensagem                                              |
            | cor        | "Selecione uma cor para adicionar ao carrinho"        |
            | tamanho    | "Selecione um tamanho para adicionar ao carrinho"     |
            | quantidade | "Selecione uma quantidade para adicionar ao carrinho" |

            Cenário: Quantidade Máxima de Venda
            Quando eu selecionar uma quantidade superior à 10
            Então deve exibir a mensagem "O máximo permitido para compras é de 10 itens"

            Cenário: Limpar Configurações
            Quando eu clicar no botão Limpar
            Então as configurações de cor, tamanho e quantidade devem retornar para as originais