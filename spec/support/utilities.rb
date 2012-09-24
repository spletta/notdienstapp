include ApplicationHelper

def valid_signin(user)
  I18n.available_locales.each do |locale|
    visit signin_path(locale)
    fill_in "Email",    with: user.email
    fill_in "Password", with: user.password
    click_button "Sign in"
    # Sign in when not using Capybara as well.
    cookies[:remember_token] = user.remember_token
  end
end

def valid_signup
  fill_in "Name",             with: "Example User"
  fill_in "Email",            with: "user@example.com"
  fill_in "Password",         with: "foobar"
  fill_in "Confirm Password", with: "foobar"
end

RSpec::Matchers.define :have_error_message do |message|
  match do |page|
    page.should have_selector('div.alert.alert-error', text: message)
  end
end

RSpec::Matchers.define :have_success_message do |message|
  match do |page|
    page.should have_selector('div.alert.alert-success', text: message)
  end
end

def t(string, options={})
  I18n.t(string, options)
end

