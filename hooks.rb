#after é executado toda vez que tem um cenario de logout
After('@logout') do
    click_link @email
    click_link 'Sair'
end

After do |scenario|
    nome_cenario = scenario.name.gsub(/[^A-Za-z0-9 ]/,'')
    nome_cenario = nome_cenario.gsub(' ', '_').downcase!
    screenshot = "log/screenshots/#{nome_cenario}.png"
    page.save_screenshot(screenshot)
    embed(screenshot, 'image/png', 'Print da tela :)')
end
#
#todos os prints foram salvos na pasta log > screenshots
#na expressão acima ele tira até o acento
#metodo ruby gsub
#passando expressão regular, todo espaço deve ser preenchido por _
#puts, puts é igual o System.out.println do java
#puts grava o nome do scenario, pra depois da esse nome ao print do caso
#como o nome do scenario tem espaço e a inteção é ele aparecer como nome_do_cenario