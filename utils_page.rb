require 'selenium-webdriver'

# all methods used throughout all files are listed on the utils page for scalability purposes

class UtilsPage

	def initialize(driver)
		@driver = driver
		@driver.manage.window.resize_to(1230, 900)
	end

# although I could have just as easily used .click, this is an example of
# a condensed function that would allow me to click one or multiple items in a row, 
# and provide a scalable test suite
	def click(*locators)
		locators.each {|locator| @driver.find_element(locator).click} 
	end

	def type(text, locator)
		@driver.find_element(locator).send_keys(text)
		@driver.find_element(locator).send_keys :return
	end

	def is_displayed?(locator)
		begin
			@driver.find_element(locator).displayed?
		rescue Selenium::WebDriver::Error::NoSuchElementError
			false
		end
	end

end