require "application_system_test_case"

class AreasTest < ApplicationSystemTestCase
  setup do
    @area = areas(:one)
  end

  test "visiting the index" do
    visit areas_url
    assert_selector "h1", text: "Areas"
  end

  test "should create area" do
    visit areas_url
    click_on "New area"

    fill_in "App empresa", with: @area.app_empresa_id
    fill_in "Area", with: @area.area
    fill_in "Ownr class", with: @area.ownr_class
    fill_in "Ownr", with: @area.ownr_id
    click_on "Create Area"

    assert_text "Area was successfully created"
    click_on "Back"
  end

  test "should update Area" do
    visit area_url(@area)
    click_on "Edit this area", match: :first

    fill_in "App empresa", with: @area.app_empresa_id
    fill_in "Area", with: @area.area
    fill_in "Ownr class", with: @area.ownr_class
    fill_in "Ownr", with: @area.ownr_id
    click_on "Update Area"

    assert_text "Area was successfully updated"
    click_on "Back"
  end

  test "should destroy Area" do
    visit area_url(@area)
    click_on "Destroy this area", match: :first

    assert_text "Area was successfully destroyed"
  end
end
