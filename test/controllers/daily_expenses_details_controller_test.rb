require 'test_helper'

class DailyExpensesDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daily_expenses_detail = daily_expenses_details(:one)
  end

  test "should get index" do
    get daily_expenses_details_url
    assert_response :success
  end

  test "should get new" do
    get new_daily_expenses_detail_url
    assert_response :success
  end

  test "should create daily_expenses_detail" do
    assert_difference('DailyExpensesDetail.count') do
      post daily_expenses_details_url, params: { daily_expenses_detail: { amout: @daily_expenses_detail.amout, daily_exspenses_id: @daily_expenses_detail.daily_exspenses_id, status: @daily_expenses_detail.status, user_id: @daily_expenses_detail.user_id } }
    end

    assert_redirected_to daily_expenses_detail_url(DailyExpensesDetail.last)
  end

  test "should show daily_expenses_detail" do
    get daily_expenses_detail_url(@daily_expenses_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_daily_expenses_detail_url(@daily_expenses_detail)
    assert_response :success
  end

  test "should update daily_expenses_detail" do
    patch daily_expenses_detail_url(@daily_expenses_detail), params: { daily_expenses_detail: { amout: @daily_expenses_detail.amout, daily_exspenses_id: @daily_expenses_detail.daily_exspenses_id, status: @daily_expenses_detail.status, user_id: @daily_expenses_detail.user_id } }
    assert_redirected_to daily_expenses_detail_url(@daily_expenses_detail)
  end

  test "should destroy daily_expenses_detail" do
    assert_difference('DailyExpensesDetail.count', -1) do
      delete daily_expenses_detail_url(@daily_expenses_detail)
    end

    assert_redirected_to daily_expenses_details_url
  end
end
