from selenium import webdriver
import os
import time

class Browser(object):

    chrome_options = webdriver.ChromeOptions()
    chrome_options.add_argument('--headless')

    driver = webdriver.Chrome(chrome_options=chrome_options, service_args=['--verbose', '--log-path=/tmp/chromedriver.log'])
    driver.implicitly_wait(30)
    driver.set_page_load_timeout(30)
    driver.maximize_window()

    # driver = webdriver.Chrome()
    # driver = webdriver.Remote(
    # command_executor='http://127.0.0.1:4444/wd/hub',
    # desired_capabilities={'browserName': 'chrome', 'javascriptEnabled': True})

    def close(context):
        context.driver.close()



