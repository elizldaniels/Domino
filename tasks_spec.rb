require 'selenium-webdriver'
require_relative 'tasks'
require_relative 'spec_helper'


describe 'todo' do 

# in this test, we are calling the method to create a task from the tasks file
# once the task is created it checks for the text in the task elemnet to be correct, 
# verifying that the task was also created
		it 'task will be created' do
			task_name = 'Create an automated test'
			@todo.create(task_name)
			expect(@driver.find_element(css: '.view').text).to eql(task_name)
		end

# in this test, we are calling the complete method from the tasks file
# after the task has been verified, we are now marking it as complete
# verifying that the class has been updated for that task		

		it 'task will be completed' do
			@todo.complete
			expect(@todo.task_completed?).to eql true
		end

end