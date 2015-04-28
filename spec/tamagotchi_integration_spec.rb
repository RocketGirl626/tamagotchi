require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe('path for tamagotchi game', {:type => :feature}) do
  it('user inputs name, sleep, play, and feed input for the pet') do
  visit('/')
  fill_in('name', :with => 'kenny')
  fill_in('play', :with => '5')
  fill_in('sleep', :with => '5')
  fill_in('feed', :with => '5')
  click_button('Submit!')
  expect(page).to have_content('Your score')
  end
end
