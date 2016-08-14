require 'rails_helper'

RSpec.feature "Admin submits a new ski" do
  scenario "Admin sees the page for the individual ski" do
    load_categories_and_gender
    login_admin!

    name = "corvus"
    brand = "black crows"
    width = 109
    length = 175
    category_id = 1
    gender_id = 1
    image = "https://commercecdn.com/1044735434531274893/46c38786-c2ca-4b24-9008-6fe54153df0a.jpeg"

    visit admin_skis_path

    click_on "Add Ski"

    fill_in "ski_name", with: name
    fill_in "ski_brand", with: brand
    fill_in "ski_width", with: width
    fill_in "ski_length", with: length

    select('backcountry', :from => 'ski_category_id')
    select('female', :from => 'ski_gender_id')
    fill_in "ski_image", with: image

    click_on "Create Ski"

    expect(page).to have_content name
    expect(page).to have_content brand
    expect(page).to have_content width
    expect(page).to have_content length
    expect(page).to have_css("img[src=\"#{Ski.first.image}\"]")
  end
end
