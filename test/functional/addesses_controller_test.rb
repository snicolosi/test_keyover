require 'test_helper'

class AddessesControllerTest < ActionController::TestCase
  setup do
    @addess = addesses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:addesses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create addess" do
    assert_difference('Addess.count') do
      post :create, addess: { city: @addess.city, country: @addess.country, number: @addess.number, street: @addess.street, street_type: @addess.street_type, zip: @addess.zip }
    end

    assert_redirected_to addess_path(assigns(:addess))
  end

  test "should show addess" do
    get :show, id: @addess
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @addess
    assert_response :success
  end

  test "should update addess" do
    put :update, id: @addess, addess: { city: @addess.city, country: @addess.country, number: @addess.number, street: @addess.street, street_type: @addess.street_type, zip: @addess.zip }
    assert_redirected_to addess_path(assigns(:addess))
  end

  test "should destroy addess" do
    assert_difference('Addess.count', -1) do
      delete :destroy, id: @addess
    end

    assert_redirected_to addesses_path
  end
end
