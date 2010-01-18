require 'test_helper'

class FlavoursControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flavours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flavour" do
    assert_difference('Flavour.count') do
      post :create, :flavour => { }
    end

    assert_redirected_to flavour_path(assigns(:flavour))
  end

  test "should show flavour" do
    get :show, :id => flavours(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => flavours(:one).to_param
    assert_response :success
  end

  test "should update flavour" do
    put :update, :id => flavours(:one).to_param, :flavour => { }
    assert_redirected_to flavour_path(assigns(:flavour))
  end

  test "should destroy flavour" do
    assert_difference('Flavour.count', -1) do
      delete :destroy, :id => flavours(:one).to_param
    end

    assert_redirected_to flavours_path
  end
end
