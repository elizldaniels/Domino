require 'selenium-webdriver'
require_relative 'tasks'

# this is the setup file for each of the tests, 
# having the setup in a seperate file allows for a scalable Infrastructure 

RSpec.configure do |config|	

	config.before(:all) do	
		@driver = Selenium::WebDriver.for :firefox
		@driver.get 'http://todomvc.com/examples/react/#/'
		@todo = Tasks.new(@driver)
	end

	config.after(:all) do
     	@driver.quit()
	end

end