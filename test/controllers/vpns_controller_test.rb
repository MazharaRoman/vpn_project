require 'test_helper'

class VpnsControllerTest < ActionController::TestCase
  setup do
    @vpn = vpns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vpns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vpn" do
    assert_difference('Vpn.count') do
      post :create, vpn: { login: @vpn.login, password: @vpn.password, server_id: @vpn.server_id, user_id: @vpn.user_id }
    end

    assert_redirected_to vpn_path(assigns(:vpn))
  end

  test "should show vpn" do
    get :show, id: @vpn
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vpn
    assert_response :success
  end

  test "should update vpn" do
    patch :update, id: @vpn, vpn: { login: @vpn.login, password: @vpn.password, server_id: @vpn.server_id, user_id: @vpn.user_id }
    assert_redirected_to vpn_path(assigns(:vpn))
  end

  test "should destroy vpn" do
    assert_difference('Vpn.count', -1) do
      delete :destroy, id: @vpn
    end

    assert_redirected_to vpns_path
  end
end
