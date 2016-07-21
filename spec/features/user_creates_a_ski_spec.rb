require 'rails_helper'

RSpec.feature "User submits a new ski" do
  scenario "user sees the page for the individual ski" do
    name = "Corvus"
    brand = "Black Crows"
    width = 109
    length = 175
    category_id = 1
    gender_id = 1
    # image = "http://tny.im/5b2"

    visit skis_path
    click_on "New Ski"
    fill_in "ski_name", with: name
    fill_in "ski_brand", with: brand
    fill_in "ski_width", with: width
    fill_in "ski_length", with: length
    fill_in "ski_category_id", with: category_id
    fill_in "ski_gender_id", with: gender_id
    # fill_in "image", with: image
    click_on "Create Ski"

    expect(page).to have_content name
    expect(page).to have_content brand
    # expect(page).to have_css("img[src=\"#{image_path}\"]")
  end
end
