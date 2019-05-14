from selenium.webdriver.common.by import By
from features.browser import Browser
from time import sleep

class LoginPageLocator(object):
    # Home Page Locators

    EMAIL = (By.ID, 'login-email')
    PASSWORD = (By.ID, 'login-password')
    LOGIN_BUTTON = (By.ID, 'login-button')
    resetEmail = (By.ID, "email")

    #forgetPassword = (By. ("Forgot password?"))
    #resetTitle=(by.className("rv-title")
    #globalloginErrorTxt = .all(by.className("global-error")).get(0)
    #loginErrorTxt = (by.className("errors"))
    #getText = .all(by.className("rv-forgot-password__top-description")).get(0)
    #resetButton = .all(by.className("rv-btn rv-btn--navy-blue")).get(0)
    #errorText = .all(by.className("help-block")).get(0)
    #pageHeadingTest = .all(by.className("rv-heading")).get(1)
    #getPageFieldText = .all(by.className("form-control-label")).get(0)


class LoginPage(Browser):

    def fill(self, text, *locator):
        self.driver.find_element(*locator).send_keys(text)

    def click_element(self, *locator):
        self.driver.find_element(*locator).click()

    def navigate(self, address):
        self.driver.get(address)

    def get_page_title(self):
        return self.driver.title

    def login(self, enter_login):
        self.fill(enter_login, *LoginPageLocator.EMAIL)
        self.fill("Welcome1@", *LoginPageLocator.PASSWORD)
        self.click_element(*LoginPageLocator.LOGIN_BUTTON)
