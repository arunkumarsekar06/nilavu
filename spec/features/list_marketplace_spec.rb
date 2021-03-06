require "rails_helper"

RSpec.feature "List Marketplaces" do
  before do
    login(:account)
  end

  scenario "view" do
    visit "/cockpits"
    click_link "Marketplaces"
    expect(page).to have_content "Marketplaces"
  end
end
