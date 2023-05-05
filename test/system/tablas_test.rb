require "application_system_test_case"

class TablasTest < ApplicationSystemTestCase
  setup do
    @tabla = tablas(:one)
  end

  test "visiting the index" do
    visit tablas_url
    assert_selector "h1", text: "Tablas"
  end

  test "should create tabla" do
    visit tablas_url
    click_on "New tabla"

    click_on "Create Tabla"

    assert_text "Tabla was successfully created"
    click_on "Back"
  end

  test "should update Tabla" do
    visit tabla_url(@tabla)
    click_on "Edit this tabla", match: :first

    click_on "Update Tabla"

    assert_text "Tabla was successfully updated"
    click_on "Back"
  end

  test "should destroy Tabla" do
    visit tabla_url(@tabla)
    click_on "Destroy this tabla", match: :first

    assert_text "Tabla was successfully destroyed"
  end
end
