require "application_system_test_case"

class StBandejasTest < ApplicationSystemTestCase
  setup do
    @st_bandeja = st_bandejas(:one)
  end

  test "visiting the index" do
    visit st_bandejas_url
    assert_selector "h1", text: "St bandejas"
  end

  test "should create st bandeja" do
    visit st_bandejas_url
    click_on "New st bandeja"

    click_on "Create St bandeja"

    assert_text "St bandeja was successfully created"
    click_on "Back"
  end

  test "should update St bandeja" do
    visit st_bandeja_url(@st_bandeja)
    click_on "Edit this st bandeja", match: :first

    click_on "Update St bandeja"

    assert_text "St bandeja was successfully updated"
    click_on "Back"
  end

  test "should destroy St bandeja" do
    visit st_bandeja_url(@st_bandeja)
    click_on "Destroy this st bandeja", match: :first

    assert_text "St bandeja was successfully destroyed"
  end
end
