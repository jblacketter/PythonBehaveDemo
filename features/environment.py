from selenium import webdriver
from features.browser import Browser
from features.pages.login_page import LoginPage
from features.pages.login_page import LoginPageLocator

def before_all(context):
    context.browser = Browser()
    context.login_page = LoginPage()

def after_all(context):
    context.browser.close()