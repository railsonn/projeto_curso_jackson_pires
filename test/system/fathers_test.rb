require "application_system_test_case"

class FathersTest < ApplicationSystemTestCase
  setup do
    @father = fathers(:one)
  end

  test "visiting the index" do
    visit fathers_url
    assert_selector "h1", text: "Fathers"
  end

  test "should create father" do
    visit fathers_url
    click_on "New father"

    fill_in "Name", with: @father.name
    click_on "Create Father"

    assert_text "Father was successfully created"
    click_on "Back"
  end

  test "should update Father" do
    visit father_url(@father)
    click_on "Edit this father", match: :first

    fill_in "Name", with: @father.name
    click_on "Update Father"

    assert_text "Father was successfully updated"
    click_on "Back"
  end

  test "should destroy Father" do
    visit father_url(@father)
    click_on "Destroy this father", match: :first

    assert_text "Father was successfully destroyed"
  end
end
