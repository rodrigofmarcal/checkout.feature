            #language: pt

            Funcionalidade: Tela de cadastro checkout
            Como cliente da Ebac-Shop
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de checkout da Ebac-Shop

            Cenário: Checkout válido
            Quando eu digitar "todos os campos com asteríticos" para o cadastro
            E um email de formato válido "Joao@ebac.com"
            Então deve exibir uma mensagem "finalize a minha compra"

            Cenário: Checkout com email em formato inválido
            Quando eu digitar ""todos os campos com asterísticos"
            E um email em um "formato inválido"
            Então deve exibir uma mensagem "email em formato não válido"

            Cenário: Checkout com campos obrigatórios vazios
            Quando eu "não digitar todos os campos com asterísticos"
            E um email em um "formato válido"
            Então deve exibir uma mensagem de alerta "Favor preencher todos os ca pos obrigatórios"

            Esquema do Cenário: Checkout de multiplos clientes
            Quando eu digitar os campos com asterísticos para o <checkout>
            E o <email>
            Então deve exibir uma <mensagem> finalize a minha compra

            Exemplos:
            | Checkout                           | email           | mensagem                  |
            | "todos os campos com asterísticos" | "Joao@ebac.com" | "finalize a minha compra" |
            | "todos os campos com asterísticos" | "Jose@ebac.com" | "finalize a minha compra" |
            | "todos os campos com asterísticos" | "Nair@ebac.com" | "fianlize a minha compra" |

