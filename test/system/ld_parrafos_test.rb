require "application_system_test_case"

class LdParrafosTest < ApplicationSystemTestCase
  setup do
    @ld_parrafo = ld_parrafos(:one)
  end

  test "visiting the index" do
    visit ld_parrafos_url
    assert_selector "h1", text: "Ld parrafos"
  end

  test "should create ld parrafo" do
    visit ld_parrafos_url
    click_on "New ld parrafo"

    fill_in "Ld parrafo", with: @ld_parrafo.ld_parrafo
    fill_in "Ownr class", with: @ld_parrafo.ownr_class
    fill_in "Ownr", with: @ld_parrafo.ownr_id
    fill_in "Texto", with: @ld_parrafo.texto
    click_on "Create Ld parrafo"

    assert_text "Ld parrafo was successfully created"
    click_on "Back"
  end

  test "should update Ld parrafo" do
    visit ld_parrafo_url(@ld_parrafo)
    click_on "Edit this ld parrafo", match: :first

    fill_in "Ld parrafo", with: @ld_parrafo.ld_parrafo
    fill_in "Ownr class", with: @ld_parrafo.ownr_class
    fill_in "Ownr", with: @ld_parrafo.ownr_id
    fill_in "Texto", with: @ld_parrafo.texto
    click_on "Update Ld parrafo"

    assert_text "Ld parrafo was successfully updated"
    click_on "Back"
  end

  test "should destroy Ld parrafo" do
    visit ld_parrafo_url(@ld_parrafo)
    click_on "Destroy this ld parrafo", match: :first

    assert_text "Ld parrafo was successfully destroyed"
  end
end
