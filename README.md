# Domino

Iv'e chosen to do this exercise in ruby, with an rspec framework using the default firefox browser. I chose to add four seperate files(not including gem or instructions) for scalability purposes. As test cases are added they will be grouped into their own files, similar to 'tasks.rb' and 'tasks_spec.rb' while all functions that will be used throughout the tests will be added to the 'utils_page.rb' file, and all setup and teardown actions used throughout all files will be added to the 'spec_helper.rb'

 - Before you can run the test you will need have the same gems I'm using installed. An easy way to manage Gemfiles is to use http://bundler.io/ and the command 'bundle instal' through the command line. 

 - If you dont already have Bundler installed, you can just as easily install them manualy by using the following commands:
 			gem install rspec
 			gem install selenium-webdriver


 - Once the gems are installed, the test can be run through the command line.
		First you will need to navigate to the 'DominoData' file using 'cd file_path'
		Once you are in the 'DominoData' file, you can run the test by using the following command:
			rspec tasks_spec.rb


 - If all goes as expected, you should see a result similar to the following (*although results may vary)

..

Finished in 6.91 seconds (files took 0.2875 seconds to load)
2 examples, 0 failures
