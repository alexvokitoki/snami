require 'test_helper'

class BustoursControllerTest < ActionController::TestCase
  setup do
    @bustour = bustours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bustours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bustour" do
    assert_difference('Bustour.count') do
      post :create, bustour: { about: @bustour.about, imgurl: @bustour.imgurl, name: @bustour.name, price: @bustour.price }
    end

    assert_redirected_to bustour_path(assigns(:bustour))
  end

  test "should show bustour" do
    get :show, id: @bustour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bustour
    assert_response :success
  end

  test "should update bustour" do
    patch :update, id: @bustour, bustour: { about: @bustour.about, imgurl: @bustour.imgurl, name: @bustour.name, price: @bustour.price }
    assert_redirected_to bustour_path(assigns(:bustour))
  end

  test "should destroy bustour" do
    assert_difference('Bustour.count', -1) do
      delete :destroy, id: @bustour
    end

    assert_redirected_to bustours_path
  end
end
