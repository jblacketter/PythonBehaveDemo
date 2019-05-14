from selenium import webdriver

class Browser(object):

    driver = webdriver.Firefox()
    # driver = webdriver.Chrome()
    driver.implicitly_wait(40)
    driver.set_page_load_timeout(40)
    driver.maximize_window()

    def close(context):
        context.driver.close()


