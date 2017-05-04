from selenium import webdriver

driver = webdriver.Firefox()
driver.get("http://google.com/?hl=en")
search_box = driver.find_element_by_name("q")
search_box.send_keys("cheese")
search_box.submit()
