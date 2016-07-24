require 'rails_helper'

RSpec.feature "Admin deletes an existing ski", :type => :feature do
  scenario "Admin sees the page with all skis without the deleted ski" do
    add_ski
    name = Ski.last.name
    brand = Ski.last.brand

    visit admin_skis_path

    within("#ski-list") do
      page.find('li:first').click_on "Delete"
    end

    # expect{Ski.increment}.to change{Counter.count}.by(2)
    expect(page).to_not have_content name && brand
  end
end
