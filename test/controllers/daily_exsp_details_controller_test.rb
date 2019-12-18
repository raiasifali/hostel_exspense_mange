require 'test_helper'

class DailyExspDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daily_exsp_detail = daily_exsp_details(:one)
  end

  test "should get index" do
    get daily_exsp_details_url
    assert_response :success
  end

  test "should get new" do
    get new_daily_exsp_detail_url
    assert_response :success
  end

  test "should create daily_exsp_detail" do
    assert_difference('DailyExspDetail.count') do
      post daily_exsp_details_url, params: { daily_exsp_detail: { amount: @daily_exsp_detail.amount, daily_exspenses_id: @daily_exsp_detail.daily_exspenses_id, is_paid: @daily_exsp_detail.is_paid, user_id: @daily_exsp_detail.user_id } }
    end

    assert_redirected_to daily_exsp_detail_url(DailyExspDetail.last)
  end

  test "should show daily_exsp_detail" do
    get daily_exsp_detail_url(@daily_exsp_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_daily_exsp_detail_url(@daily_exsp_detail)
    assert_response :success
  end

  test "should update daily_exsp_detail" do
    patch daily_exsp_detail_url(@daily_exsp_detail), params: { daily_exsp_detail: { amount: @daily_exsp_detail.amount, daily_exspenses_id: @daily_exsp_detail.daily_exspenses_id, is_paid: @daily_exsp_detail.is_paid, user_id: @daily_exsp_detail.user_id } }
    assert_redirected_to daily_exsp_detail_url(@daily_exsp_detail)
  end

  test "should destroy daily_exsp_detail" do
    assert_difference('DailyExspDetail.count', -1) do
      delete daily_exsp_detail_url(@daily_exsp_detail)
    end

    assert_redirected_to daily_exsp_details_url
  end
end
