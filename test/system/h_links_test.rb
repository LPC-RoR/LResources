require "application_system_test_case"

class HLinksTest < ApplicationSystemTestCase
  setup do
    @h_link = h_links(:one)
  end

  test "visiting the index" do
    visit h_links_url
    assert_selector "h1", text: "H links"
  end

  test "should create h link" do
    visit h_links_url
    click_on "New h link"

    fill_in "H link", with: @h_link.h_link
    fill_in "Link", with: @h_link.link
    click_on "Create H link"

    assert_text "H link was successfully created"
    click_on "Back"
  end

  test "should update H link" do
    visit h_link_url(@h_link)
    click_on "Edit this h link", match: :first

    fill_in "H link", with: @h_link.h_link
    fill_in "Link", with: @h_link.link
    click_on "Update H link"

    assert_text "H link was successfully updated"
    click_on "Back"
  end

  test "should destroy H link" do
    visit h_link_url(@h_link)
    click_on "Destroy this h link", match: :first

    assert_text "H link was successfully destroyed"
  end
end
