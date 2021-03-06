require 'rails_helper'

RSpec.describe "Convert currency process", :type => :feature do
  before do
    visit root_path
    within("#converter-form") do
      select('EUR', from: 'currency')
      select('USD', from: 'currency_destination')
      fill_in 'quantity', with: '10'
    end

    click_button 'CONVERTER'
  end

  xit "convert value" do
    expect(page).to have_content("value")
  end
end
