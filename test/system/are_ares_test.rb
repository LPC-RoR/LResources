require "application_system_test_case"

class AreAresTest < ApplicationSystemTestCase
  setup do
    @are_ar = are_ares(:one)
  end

  test "visiting the index" do
    visit are_ares_url
    assert_selector "h1", text: "Are ares"
  end

  test "should create are are" do
    visit are_ares_url
    click_on "New are are"

    fill_in "Jefatura", with: @are_ar.jefatura_id
    fill_in "Subordinada", with: @are_ar.subordinada_id
    click_on "Create Are are"

    assert_text "Are are was successfully created"
    click_on "Back"
  end

  test "should update Are are" do
    visit are_ar_url(@are_ar)
    click_on "Edit this are are", match: :first

    fill_in "Jefatura", with: @are_ar.jefatura_id
    fill_in "Subordinada", with: @are_ar.subordinada_id
    click_on "Update Are are"

    assert_text "Are are was successfully updated"
    click_on "Back"
  end

  test "should destroy Are are" do
    visit are_ar_url(@are_ar)
    click_on "Destroy this are are", match: :first

    assert_text "Are are was successfully destroyed"
  end
end
