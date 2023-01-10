require 'capybara'
require 'capybara/cucumber'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
end

#esse headless serve pra subir o teste em background e o chrome não sobe mais, porem o formato é testado config.default_driver= :selenium_chrome_headles

#abaixo funciona
#Capybara.register_driver :chrome do |app|
#    Capybara::Selenium::Driver.new(app, :browser => :chrome)
#end


