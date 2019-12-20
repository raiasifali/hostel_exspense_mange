require "application_system_test_case"

class DailyExpensesDetailsTest < ApplicationSystemTestCase
  setup do
    @daily_expenses_detail = daily_expenses_details(:one)
  end

  test "visiting the index" do
    visit daily_expenses_details_url
    assert_selector "h1", text: "Daily Expenses Details"
  end

  test "creating a Daily expenses detail" do
    visit daily_expenses_details_url
    click_on "New Daily Expenses Detail"

    fill_in "Amout", with: @daily_expenses_detail.amout
    fill_in "Daily exspenses", with: @daily_expenses_detail.daily_exspenses_id
    check "Status" if @daily_expenses_detail.status
    fill_in "User", with: @daily_expenses_detail.user_id
    click_on "Create Daily expenses detail"

    assert_text "Daily expenses detail was successfully created"
    click_on "Back"
  end

  test "updating a Daily expenses detail" do
    visit daily_expenses_details_url
    click_on "Edit", match: :first

    fill_in "Amout", with: @daily_expenses_detail.amout
    fill_in "Daily exspenses", with: @daily_expenses_detail.daily_exspenses_id
    check "Status" if @daily_expenses_detail.status
    fill_in "User", with: @daily_expenses_detail.user_id
    click_on "Update Daily expenses detail"

    assert_text "Daily expenses detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Daily expenses detail" do
    visit daily_expenses_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Daily expenses detail was successfully destroyed"
  end
end
