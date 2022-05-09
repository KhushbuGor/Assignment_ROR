require "application_system_test_case"

class IndustriesSectorsTest < ApplicationSystemTestCase
  setup do
    @industries_sector = industries_sectors(:one)
  end

  test "visiting the index" do
    visit industries_sectors_url
    assert_selector "h1", text: "Industries sectors"
  end

  test "should create industries sector" do
    visit industries_sectors_url
    click_on "New industries sector"

    click_on "Create Industries sector"

    assert_text "Industries sector was successfully created"
    click_on "Back"
  end

  test "should update Industries sector" do
    visit industries_sector_url(@industries_sector)
    click_on "Edit this industries sector", match: :first

    click_on "Update Industries sector"

    assert_text "Industries sector was successfully updated"
    click_on "Back"
  end

  test "should destroy Industries sector" do
    visit industries_sector_url(@industries_sector)
    click_on "Destroy this industries sector", match: :first

    assert_text "Industries sector was successfully destroyed"
  end
end
