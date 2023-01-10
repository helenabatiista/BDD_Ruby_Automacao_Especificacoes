#language:pt

Funcionalidade: Login
    Para que eu possa cadastrar e gerenciar minhas tarefas
    Sendo um usuário 
    Posso acessar o sistema com o meu email e senha, previamente cadastrados.

        Contexto: Página principal
             Dado que eu acesso a página principal

#dois cenarios, tentativa de login com 4 cenarios
        @logout
        Cenario: Usuário deve ser autorizado
            Quando eu faço login com "camilaverass@icloud.com" e "123456"
            Então devo ser autenticado com sucesso
            E devo ver a seguinte mensagem "Olá, Camila Veras"

        Esquema do Cenario: Tentativa de login

            Quando eu faço login com "<email>" e "<senha>"
            Então devo ver a seguinte mensagem "<alerta>"

            Exemplos:
            |          email          |  senha   |           alerta            |
            | camilaverass@icloud.com | xpto123  | Senha inválida.             |
            | camilaverass@icloud.net | xpto123  | Usuário não cadastrado.     |
            | camilaverassicloud.net  | xpto123  | Email incorreto ou ausente. |
            |                         | asdasdad | Email incorreto ou ausente. |

    

