require 'rails_helper'

RSpec.feature "Admin deletes an existing ski", :type => :feature do
  scenario "Admin sees the page with all skis without the deleted ski" do
    add_ski
    login_admin!
    name = Ski.last.name
    brand = Ski.last.brand

    visit admin_skis_path

    within("#ski-list") do
      expect { page.find('li:first').click_on "Delete" }.to change(Ski, :count).by(-1)
    end
  end
end
