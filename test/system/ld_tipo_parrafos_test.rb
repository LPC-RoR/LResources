require "application_system_test_case"

class LdTipoParrafosTest < ApplicationSystemTestCase
  setup do
    @ld_tipo_parrafo = ld_tipo_parrafos(:one)
  end

  test "visiting the index" do
    visit ld_tipo_parrafos_url
    assert_selector "h1", text: "Ld tipo parrafos"
  end

  test "should create ld tipo parrafo" do
    visit ld_tipo_parrafos_url
    click_on "New ld tipo parrafo"

    fill_in "Ld tipo parrafo", with: @ld_tipo_parrafo.ld_tipo_parrafo
    click_on "Create Ld tipo parrafo"

    assert_text "Ld tipo parrafo was successfully created"
    click_on "Back"
  end

  test "should update Ld tipo parrafo" do
    visit ld_tipo_parrafo_url(@ld_tipo_parrafo)
    click_on "Edit this ld tipo parrafo", match: :first

    fill_in "Ld tipo parrafo", with: @ld_tipo_parrafo.ld_tipo_parrafo
    click_on "Update Ld tipo parrafo"

    assert_text "Ld tipo parrafo was successfully updated"
    click_on "Back"
  end

  test "should destroy Ld tipo parrafo" do
    visit ld_tipo_parrafo_url(@ld_tipo_parrafo)
    click_on "Destroy this ld tipo parrafo", match: :first

    assert_text "Ld tipo parrafo was successfully destroyed"
  end
end
