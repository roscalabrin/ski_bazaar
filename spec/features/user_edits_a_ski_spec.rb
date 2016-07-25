require 'rails_helper'

RSpec.feature "Admin edits an existing ski" do
  scenario "Admin sees the page for the individual ski with the edits" do
    load_categories_and_gender
    login_admin!
    add_ski

    name = "Corvus"
    brand = "Black Crows"
    width = 109
    length = 175
    category_id = 1
    gender_id = 1
    image = "https://commercecdn.com/1044735434531274893/46c38786-c2ca-4b24-9008-6fe54153df0a.jpeg"

    visit admin_skis_path

    click_on "Edit"

    fill_in "ski_name", with: "birdie"
    fill_in "ski_brand", with: brand
    fill_in "ski_width", with: width
    fill_in "ski_length", with: length
    fill_in "ski_image", with: image

    select('backcountry', :from => 'ski_category_id')
    select('female', :from => 'ski_gender_id')
    fill_in "ski_image", with: image

    click_on "Update Ski"

    expect(page).to have_content "birdie"
    expect(page).to_not have_content "corvus"
  end
end
