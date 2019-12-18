require "application_system_test_case"

class DailyExspDetailsTest < ApplicationSystemTestCase
  setup do
    @daily_exsp_detail = daily_exsp_details(:one)
  end

  test "visiting the index" do
    visit daily_exsp_details_url
    assert_selector "h1", text: "Daily Exsp Details"
  end

  test "creating a Daily exsp detail" do
    visit daily_exsp_details_url
    click_on "New Daily Exsp Detail"

    fill_in "Amount", with: @daily_exsp_detail.amount
    fill_in "Daily exspenses", with: @daily_exsp_detail.daily_exspenses_id
    check "Is paid" if @daily_exsp_detail.is_paid
    fill_in "User", with: @daily_exsp_detail.user_id
    click_on "Create Daily exsp detail"

    assert_text "Daily exsp detail was successfully created"
    click_on "Back"
  end

  test "updating a Daily exsp detail" do
    visit daily_exsp_details_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @daily_exsp_detail.amount
    fill_in "Daily exspenses", with: @daily_exsp_detail.daily_exspenses_id
    check "Is paid" if @daily_exsp_detail.is_paid
    fill_in "User", with: @daily_exsp_detail.user_id
    click_on "Update Daily exsp detail"

    assert_text "Daily exsp detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Daily exsp detail" do
    visit daily_exsp_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Daily exsp detail was successfully destroyed"
  end
end
