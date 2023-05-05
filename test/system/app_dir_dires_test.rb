require "application_system_test_case"

class AppDirDiresTest < ApplicationSystemTestCase
  setup do
    @app_dir_dir = app_dir_dires(:one)
  end

  test "visiting the index" do
    visit app_dir_dires_url
    assert_selector "h1", text: "App dir dires"
  end

  test "should create app dir dir" do
    visit app_dir_dires_url
    click_on "New app dir dir"

    fill_in "Child", with: @app_dir_dir.child_id
    fill_in "Parent", with: @app_dir_dir.parent_id
    click_on "Create App dir dir"

    assert_text "App dir dir was successfully created"
    click_on "Back"
  end

  test "should update App dir dir" do
    visit app_dir_dir_url(@app_dir_dir)
    click_on "Edit this app dir dir", match: :first

    fill_in "Child", with: @app_dir_dir.child_id
    fill_in "Parent", with: @app_dir_dir.parent_id
    click_on "Update App dir dir"

    assert_text "App dir dir was successfully updated"
    click_on "Back"
  end

  test "should destroy App dir dir" do
    visit app_dir_dir_url(@app_dir_dir)
    click_on "Destroy this app dir dir", match: :first

    assert_text "App dir dir was successfully destroyed"
  end
end
