require "application_system_test_case"

class AdministrationsTest < ApplicationSystemTestCase
  setup do
    @administration = administrations(:one)
  end

  test "visiting the index" do
    visit administrations_url
    assert_selector "h1", text: "Administrations"
  end

  test "creating a Administration" do
    visit administrations_url
    click_on "New Administration"

    fill_in "Adminid", with: @administration.adminID
    fill_in "Extension", with: @administration.extension
    fill_in "Firstname", with: @administration.firstname
    fill_in "Lastname", with: @administration.lastname
    fill_in "Title", with: @administration.title
    click_on "Create Administration"

    assert_text "Administration was successfully created"
    click_on "Back"
  end

  test "updating a Administration" do
    visit administrations_url
    click_on "Edit", match: :first

    fill_in "Adminid", with: @administration.adminID
    fill_in "Extension", with: @administration.extension
    fill_in "Firstname", with: @administration.firstname
    fill_in "Lastname", with: @administration.lastname
    fill_in "Title", with: @administration.title
    click_on "Update Administration"

    assert_text "Administration was successfully updated"
    click_on "Back"
  end

  test "destroying a Administration" do
    visit administrations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Administration was successfully destroyed"
  end
end
