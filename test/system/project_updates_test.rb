require "application_system_test_case"

class ProjectUpdatesTest < ApplicationSystemTestCase
  setup do
    @project_update = project_updates(:one)
  end

  test "visiting the index" do
    visit project_updates_url
    assert_selector "h1", text: "Project Updates"
  end

  test "creating a Project update" do
    visit project_updates_url
    click_on "New Project Update"

    fill_in "Action", with: @project_update.action
    fill_in "Project", with: @project_update.project_id
    fill_in "Title", with: @project_update.title
    click_on "Create Project update"

    assert_text "Project update was successfully created"
    click_on "Back"
  end

  test "updating a Project update" do
    visit project_updates_url
    click_on "Edit", match: :first

    fill_in "Action", with: @project_update.action
    fill_in "Project", with: @project_update.project_id
    fill_in "Title", with: @project_update.title
    click_on "Update Project update"

    assert_text "Project update was successfully updated"
    click_on "Back"
  end

  test "destroying a Project update" do
    visit project_updates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project update was successfully destroyed"
  end
end
