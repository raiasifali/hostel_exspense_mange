require "application_system_test_case"

class DailyExsDetailsTest < ApplicationSystemTestCase
  setup do
    @daily_exs_detail = daily_exs_details(:one)
  end

  test "visiting the index" do
    visit daily_exs_details_url
    assert_selector "h1", text: "Daily Exs Details"
  end

  test "creating a Daily exs detail" do
    visit daily_exs_details_url
    click_on "New Daily Exs Detail"

    fill_in "Amount", with: @daily_exs_detail.amount
    fill_in "User", with: @daily_exs_detail.user_id
    click_on "Create Daily exs detail"

    assert_text "Daily exs detail was successfully created"
    click_on "Back"
  end

  test "updating a Daily exs detail" do
    visit daily_exs_details_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @daily_exs_detail.amount
    fill_in "User", with: @daily_exs_detail.user_id
    click_on "Update Daily exs detail"

    assert_text "Daily exs detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Daily exs detail" do
    visit daily_exs_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Daily exs detail was successfully destroyed"
  end
end
