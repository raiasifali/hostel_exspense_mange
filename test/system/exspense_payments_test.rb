require "application_system_test_case"

class ExspensePaymentsTest < ApplicationSystemTestCase
  setup do
    @exspense_payment = exspense_payments(:one)
  end

  test "visiting the index" do
    visit exspense_payments_url
    assert_selector "h1", text: "Exspense Payments"
  end

  test "creating a Exspense payment" do
    visit exspense_payments_url
    click_on "New Exspense Payment"

    fill_in "Paid amount", with: @exspense_payment.paid_amount
    fill_in "User", with: @exspense_payment.user_id
    click_on "Create Exspense payment"

    assert_text "Exspense payment was successfully created"
    click_on "Back"
  end

  test "updating a Exspense payment" do
    visit exspense_payments_url
    click_on "Edit", match: :first

    fill_in "Paid amount", with: @exspense_payment.paid_amount
    fill_in "User", with: @exspense_payment.user_id
    click_on "Update Exspense payment"

    assert_text "Exspense payment was successfully updated"
    click_on "Back"
  end

  test "destroying a Exspense payment" do
    visit exspense_payments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Exspense payment was successfully destroyed"
  end
end
