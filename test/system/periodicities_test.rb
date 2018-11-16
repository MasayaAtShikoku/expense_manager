require "application_system_test_case"

class PeriodicitiesTest < ApplicationSystemTestCase
  setup do
    @periodicity = periodicities(:one)
  end

  test "visiting the index" do
    visit periodicities_url
    assert_selector "h1", text: "Periodicities"
  end

  test "creating a Periodicity" do
    visit periodicities_url
    click_on "New Periodicity"

    fill_in "Name", with: @periodicity.name
    click_on "Create Periodicity"

    assert_text "Periodicity was successfully created"
    click_on "Back"
  end

  test "updating a Periodicity" do
    visit periodicities_url
    click_on "Edit", match: :first

    fill_in "Name", with: @periodicity.name
    click_on "Update Periodicity"

    assert_text "Periodicity was successfully updated"
    click_on "Back"
  end

  test "destroying a Periodicity" do
    visit periodicities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Periodicity was successfully destroyed"
  end
end
