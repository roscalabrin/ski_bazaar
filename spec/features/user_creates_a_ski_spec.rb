require 'rails_helper'

RSpec.feature "Admin submits a new ski" do
  scenario "Admin sees the page for the individual ski" do
    login_admin!

    name = "Corvus"
    brand = "Black Crows"
    width = 109
    length = 175
    category_id = 1
    gender_id = 1

    visit admin_skis_path
    click_on "Add Ski"

    fill_in "admin_name", with: name
    fill_in "admin_brand", with: brand
    fill_in "admin_width", with: width
    fill_in "admin_length", with: length
    fill_in "admin_category_id", with: category_id
    fill_in "admin_gender_id", with: gender_id

    click_on "Save Admin"

    expect(page).to have_content name
    expect(page).to have_content brand
    # expect(page).to have_css("img[src=\"#{image}\"]")
  end
end
