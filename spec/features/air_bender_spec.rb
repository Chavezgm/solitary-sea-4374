require 'rails_helper'

RSpec.feature "Viewing Fire Nation Members", type: :feature do
  it  "User searches for Fire Nation members" do
    # Assuming you have setup necessary fixtures or factories for testing

    visit root_path

    # Select "Fire Nation" from the select field
    select "Fire Nation", from: :nation

    # Click "Search For Members"
    click_button "Search For Members"

    #  redirected to the search page
    save_and_open_page
    expect(page).to have_current_path(search_path)
    # Ensure the total number of people who live in the Fire Nation is displayed (close to 100)
    expect(page).to have_content("Total Members: Approximately")

    # Ensure a list with the detailed information for the first 25 members of the Fire Nation is displayed
    
  end
end
