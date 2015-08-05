require('./app')
require('capybara/rspec')
Capybara.app = Sinatra::Application

describe('the gameplay', {:type => :feature} ) do

  it ('lets the user play the rock, paper scissors game') do
    visit('/')
    select("Rock", :from => "player")
    click_button('Submit')
    save_and_open_page
    expect(page).to have_content("winner")
  end
end
