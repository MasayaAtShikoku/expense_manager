require 'test_helper'

class PeriodicitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @periodicity = periodicities(:one)
  end

  test "should get index" do
    get periodicities_url
    assert_response :success
  end

  test "should get new" do
    get new_periodicity_url
    assert_response :success
  end

  test "should create periodicity" do
    assert_difference('Periodicity.count') do
      post periodicities_url, params: { periodicity: { name: @periodicity.name } }
    end

    assert_redirected_to periodicity_url(Periodicity.last)
  end

  test "should show periodicity" do
    get periodicity_url(@periodicity)
    assert_response :success
  end

  test "should get edit" do
    get edit_periodicity_url(@periodicity)
    assert_response :success
  end

  test "should update periodicity" do
    patch periodicity_url(@periodicity), params: { periodicity: { name: @periodicity.name } }
    assert_redirected_to periodicity_url(@periodicity)
  end

#  test "should destroy periodicity" do
#    assert_difference('Periodicity.count', -1) do
#      delete periodicity_url(@periodicity)
#    end
#
#    assert_redirected_to periodicities_url
#  end
end
