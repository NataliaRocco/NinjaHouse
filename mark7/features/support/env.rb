
# importar capybara
require 'rspec'
require 'cucumber'
require 'selenium/webdriver'
require 'Capybara'
require 'Capybara/cucumber'


Capybara.configure do |config|
   config.default_driver = :selenium_chrome
   config.default_max_wait_time = 10 # toda vez q buscar o elemento tem 10segundos como timeout(10segundos q vai esperar)
   config.app_host ='https://mark7-sandbox.herokuapp.com'

   #puts Capybara.default_max_wait_time
end