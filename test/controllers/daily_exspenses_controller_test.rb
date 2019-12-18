require 'test_helper'

class DailyExspensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daily_exspense = daily_exspenses(:one)
  end

  test "should get index" do
    get daily_exspenses_url
    assert_response :success
  end

  test "should get new" do
    get new_daily_exspense_url
    assert_response :success
  end

  test "should create daily_exspense" do
    assert_difference('DailyExspense.count') do
      post daily_exspenses_url, params: { daily_exspense: { creaded_by: @daily_exspense.creaded_by, description: @daily_exspense.description, status: @daily_exspense.status, time: @daily_exspense.time, totalamount: @daily_exspense.totalamount } }
    end

    assert_redirected_to daily_exspense_url(DailyExspense.last)
  end

  test "should show daily_exspense" do
    get daily_exspense_url(@daily_exspense)
    assert_response :success
  end

  test "should get edit" do
    get edit_daily_exspense_url(@daily_exspense)
    assert_response :success
  end

  test "should update daily_exspense" do
    patch daily_exspense_url(@daily_exspense), params: { daily_exspense: { creaded_by: @daily_exspense.creaded_by, description: @daily_exspense.description, status: @daily_exspense.status, time: @daily_exspense.time, totalamount: @daily_exspense.totalamount } }
    assert_redirected_to daily_exspense_url(@daily_exspense)
  end

  test "should destroy daily_exspense" do
    assert_difference('DailyExspense.count', -1) do
      delete daily_exspense_url(@daily_exspense)
    end

    assert_redirected_to daily_exspenses_url
  end
end
