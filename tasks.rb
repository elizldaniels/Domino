require_relative 'utils_page'
require 'selenium-webdriver'


class Tasks < UtilsPage

# these are the locators and page objects from todomvc
Task_Feild = {css: '.new-todo'}
Comp_Btn = {css: '.toggle'}
Delt_Btn = {css: '.destroy'}
Comp_Task = {css: '.completed'}


#initializing the selenium driver, super being called from the 'utils_page'
	def initialize(driver)
		super
	end


# this function allows you to create a task using a universal method type

	def create(text)
		type(text, Task_Feild)
	end

# this function allows you to complete a task using the universal method click  
	def complete
		click(Comp_Btn)
	end

# here I am validating wether or not the task has been created / completed / deleted
# the error messages will show(within their own individual functions)
	def task_exists?(text)
		Bod_Area.text.include?(text)
	end

	def task_completed?
		is_displayed?(Comp_Task)
	end

end