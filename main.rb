require 'selenium-webdriver'

class Navigator
  
  def foc_la_ghete
    @driver = Selenium::WebDriver.for :phantomjs
    @driver.navigate.to 'http://mintmanga.com/premarital_relationship/vol1/1'
  end
  
  
  def asteptare
    elemente_detectate = Selenium::WebDriver::Wait.new(:timeout => 10)
    elemente_detectate.until { @driver.find_elements(:tag_name, 'option')}    
  end
  
  def dovada
    @driver.save_screenshot('dovada.png')
  end
  
  def get_capitole
    capitole = @driver.find_element(:id, 'chapterSelectorSelect')
    lista_capitole = capitole.find_elements(:tag_name, 'option')
    lista_capitole.each do |el|
      puts el
    end
  end
  
  def byeBye
    @driver.quit
  end
end

a = Navigator.new
a.foc_la_ghete
a.asteptare
a.dovada
a.get_capitole
a.byeBye
  

