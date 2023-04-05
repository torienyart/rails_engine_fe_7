require 'rails_helper'

describe "as a visitor when i visit '/merchants'" do
  before :each do
    visit api_v1_merchants_path
  end

  it "I should see a list of merchants by name" do
    expect(page).to have_link("Schroeder-Jerde")
    expect(page).to have_link("Klein, Rempel and Jones")
    expect(page).to have_link("Willms and Sons")
  end

  it "when I click the merchant's name I should be on page '/merchants/:id'" do
    click_link "Willms and Sons"

    expect(page).to have_current_path("/api/v1/merchants/3")
  end

  it "And I should see a list of items that merchant sells." do
    click_link "Willms and Sons"

    expect(page).to have_content("Item Enim Error")
    expect(page).to have_content("Item Delectus Dolorem")
    expect(page).to have_content("Item Delectus Dolorem")
    expect(page).to have_content("Item Ut Iusto")
  end
end