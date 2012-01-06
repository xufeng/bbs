require 'test_helper'

class Cpanel::HomesControllerTest < ActionController::TestCase
  setup do
    @cpanel_home = cpanel_homes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cpanel_homes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cpanel_home" do
    assert_difference('Cpanel::Home.count') do
      post :create, cpanel_home: @cpanel_home.attributes
    end

    assert_redirected_to cpanel_home_path(assigns(:cpanel_home))
  end

  test "should show cpanel_home" do
    get :show, id: @cpanel_home.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cpanel_home.to_param
    assert_response :success
  end

  test "should update cpanel_home" do
    put :update, id: @cpanel_home.to_param, cpanel_home: @cpanel_home.attributes
    assert_redirected_to cpanel_home_path(assigns(:cpanel_home))
  end

  test "should destroy cpanel_home" do
    assert_difference('Cpanel::Home.count', -1) do
      delete :destroy, id: @cpanel_home.to_param
    end

    assert_redirected_to cpanel_homes_path
  end
end
