from selenium import webdriver
from features.browser import Browser
from features.pages.LoginPage import LoginPage
from features.pages.LoginPage import LoginPageLocator

def before_all(context):
    context.browser = Browser()
    context.login_page = LoginPage()

def after_all(context):
    context.browser.close()