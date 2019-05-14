from nose.tools import assert_equal, assert_true
from selenium.webdriver.common.by import By

@step('The practitioner is on the Login page')
def step_impl(context):
    context.login_page.navigate("https://revelar-qa-portal-practitioner.azurewebsites.net/login")
    assert_equal(context.login_page.get_page_title(), "Revelar Insights")

@when('The user enters "{enter_login}"')
def step_impl(context, enter_login):
    context.login_page.login(enter_login)
    assert_equal(context.login_page.get_page_title(), "Revelar Insights")






