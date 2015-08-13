require 'test_helper'

class HottoursControllerTest < ActionController::TestCase
  setup do
    @hottour = hottours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hottours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hottour" do
    assert_difference('Hottour.count') do
      post :create, hottour: { about: @hottour.about, imgurl: @hottour.imgurl, name: @hottour.name, price: @hottour.price }
    end

    assert_redirected_to hottour_path(assigns(:hottour))
  end

  test "should show hottour" do
    get :show, id: @hottour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hottour
    assert_response :success
  end

  test "should update hottour" do
    patch :update, id: @hottour, hottour: { about: @hottour.about, imgurl: @hottour.imgurl, name: @hottour.name, price: @hottour.price }
    assert_redirected_to hottour_path(assigns(:hottour))
  end

  test "should destroy hottour" do
    assert_difference('Hottour.count', -1) do
      delete :destroy, id: @hottour
    end

    assert_redirected_to hottours_path
  end
end
