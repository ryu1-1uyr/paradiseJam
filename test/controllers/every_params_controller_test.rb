require 'test_helper'

class EveryParamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @every_param = every_params(:one)
  end

  test "should get index" do
    get every_params_url, as: :json
    assert_response :success
  end

  test "should create every_param" do
    assert_difference('EveryParam.count') do
      post every_params_url, params: { every_param: { currentWeight: @every_param.currentWeight, minusCalorie: @every_param.minusCalorie, userId: @every_param.userId } }, as: :json
    end

    assert_response 201
  end

  test "should show every_param" do
    get every_param_url(@every_param), as: :json
    assert_response :success
  end

  test "should update every_param" do
    patch every_param_url(@every_param), params: { every_param: { currentWeight: @every_param.currentWeight, minusCalorie: @every_param.minusCalorie, userId: @every_param.userId } }, as: :json
    assert_response 200
  end

  test "should destroy every_param" do
    assert_difference('EveryParam.count', -1) do
      delete every_param_url(@every_param), as: :json
    end

    assert_response 204
  end
end
