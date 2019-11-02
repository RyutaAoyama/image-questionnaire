require "application_system_test_case"

class EnquetsTest < ApplicationSystemTestCase
  setup do
    @enquet = enquets(:one)
  end

  test "visiting the index" do
    visit enquets_url
    assert_selector "h1", text: "Enquets"
  end

  test "creating a Enquet" do
    visit enquets_url
    click_on "New Enquet"

    click_on "Create Enquet"

    assert_text "Enquet was successfully created"
    click_on "Back"
  end

  test "updating a Enquet" do
    visit enquets_url
    click_on "Edit", match: :first

    click_on "Update Enquet"

    assert_text "Enquet was successfully updated"
    click_on "Back"
  end

  test "destroying a Enquet" do
    visit enquets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Enquet was successfully destroyed"
  end
end
