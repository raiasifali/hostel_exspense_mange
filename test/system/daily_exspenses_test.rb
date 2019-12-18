require "application_system_test_case"

class DailyExspensesTest < ApplicationSystemTestCase
  setup do
    @daily_exspense = daily_exspenses(:one)
  end

  test "visiting the index" do
    visit daily_exspenses_url
    assert_selector "h1", text: "Daily Exspenses"
  end

  test "creating a Daily exspense" do
    visit daily_exspenses_url
    click_on "New Daily Exspense"

    fill_in "Creaded by", with: @daily_exspense.creaded_by
    fill_in "Description", with: @daily_exspense.description
    fill_in "Status", with: @daily_exspense.status
    fill_in "Time", with: @daily_exspense.time
    fill_in "Totalamount", with: @daily_exspense.totalamount
    click_on "Create Daily exspense"

    assert_text "Daily exspense was successfully created"
    click_on "Back"
  end

  test "updating a Daily exspense" do
    visit daily_exspenses_url
    click_on "Edit", match: :first

    fill_in "Creaded by", with: @daily_exspense.creaded_by
    fill_in "Description", with: @daily_exspense.description
    fill_in "Status", with: @daily_exspense.status
    fill_in "Time", with: @daily_exspense.time
    fill_in "Totalamount", with: @daily_exspense.totalamount
    click_on "Update Daily exspense"

    assert_text "Daily exspense was successfully updated"
    click_on "Back"
  end

  test "destroying a Daily exspense" do
    visit daily_exspenses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Daily exspense was successfully destroyed"
  end
end
