
class LoginPage
    include Capybara::DSL

    def faz_login(email, senha)
        find('input[name=email]').set email
        find('#login_password').set senha
        click_button 'Login'
    end
end

#caso as variaveis de email mudem no site posteriormente é só mudar ali no input e no #login_password
#o metodo faz login vai continuar igual, o que muda são so as variaveis de find