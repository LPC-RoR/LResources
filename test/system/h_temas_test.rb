require "application_system_test_case"

class HTemasTest < ApplicationSystemTestCase
  setup do
    @h_tema = h_temas(:one)
  end

  test "visiting the index" do
    visit h_temas_url
    assert_selector "h1", text: "H temas"
  end

  test "should create h tema" do
    visit h_temas_url
    click_on "New h tema"

    fill_in "Detalle", with: @h_tema.detalle
    fill_in "H tema", with: @h_tema.h_tema
    click_on "Create H tema"

    assert_text "H tema was successfully created"
    click_on "Back"
  end

  test "should update H tema" do
    visit h_tema_url(@h_tema)
    click_on "Edit this h tema", match: :first

    fill_in "Detalle", with: @h_tema.detalle
    fill_in "H tema", with: @h_tema.h_tema
    click_on "Update H tema"

    assert_text "H tema was successfully updated"
    click_on "Back"
  end

  test "should destroy H tema" do
    visit h_tema_url(@h_tema)
    click_on "Destroy this h tema", match: :first

    assert_text "H tema was successfully destroyed"
  end
end
