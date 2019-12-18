require 'test_helper'

class ExspensePaymentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exspense_payment = exspense_payments(:one)
  end

  test "should get index" do
    get exspense_payments_url
    assert_response :success
  end

  test "should get new" do
    get new_exspense_payment_url
    assert_response :success
  end

  test "should create exspense_payment" do
    assert_difference('ExspensePayment.count') do
      post exspense_payments_url, params: { exspense_payment: { paid_amount: @exspense_payment.paid_amount, user_id: @exspense_payment.user_id } }
    end

    assert_redirected_to exspense_payment_url(ExspensePayment.last)
  end

  test "should show exspense_payment" do
    get exspense_payment_url(@exspense_payment)
    assert_response :success
  end

  test "should get edit" do
    get edit_exspense_payment_url(@exspense_payment)
    assert_response :success
  end

  test "should update exspense_payment" do
    patch exspense_payment_url(@exspense_payment), params: { exspense_payment: { paid_amount: @exspense_payment.paid_amount, user_id: @exspense_payment.user_id } }
    assert_redirected_to exspense_payment_url(@exspense_payment)
  end

  test "should destroy exspense_payment" do
    assert_difference('ExspensePayment.count', -1) do
      delete exspense_payment_url(@exspense_payment)
    end

    assert_redirected_to exspense_payments_url
  end
end
