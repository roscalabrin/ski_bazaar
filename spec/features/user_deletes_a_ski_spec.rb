require 'rails_helper'

RSpec.feature "Admin deletes an existing ski" do
  scenario "Admin sees the page with all skis without the deleted ski" do
    add_ski
    name = Ski.last.name
    brand = Ski.last.brand

    visit admin_skis_path

    within("li:first") do
      click_on "Delete"
    end

    expect(page).to_not have_content name && brand
  end
end
