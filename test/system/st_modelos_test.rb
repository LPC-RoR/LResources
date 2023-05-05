require "application_system_test_case"

class StModelosTest < ApplicationSystemTestCase
  setup do
    @st_modelo = st_modelos(:one)
  end

  test "visiting the index" do
    visit st_modelos_url
    assert_selector "h1", text: "St modelos"
  end

  test "should create st modelo" do
    visit st_modelos_url
    click_on "New st modelo"

    fill_in "St modelo", with: @st_modelo.st_modelo
    click_on "Create St modelo"

    assert_text "St modelo was successfully created"
    click_on "Back"
  end

  test "should update St modelo" do
    visit st_modelo_url(@st_modelo)
    click_on "Edit this st modelo", match: :first

    fill_in "St modelo", with: @st_modelo.st_modelo
    click_on "Update St modelo"

    assert_text "St modelo was successfully updated"
    click_on "Back"
  end

  test "should destroy St modelo" do
    visit st_modelo_url(@st_modelo)
    click_on "Destroy this st modelo", match: :first

    assert_text "St modelo was successfully destroyed"
  end
end
