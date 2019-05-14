from selenium import webdriver

class Browser(object):

    # driver = webdriver.Firefox()
    # driver = webdriver.Chrome()
    driver = webdriver.Remote(
    command_executor='http://127.0.0.1:4444/wd/hub',
    desired_capabilities={'browserName': 'firefox', 'javascriptEnabled': True})
    driver.implicitly_wait(40)
    driver.set_page_load_timeout(40)
    driver.maximize_window()

    def close(context):git
        context.driver.close()

