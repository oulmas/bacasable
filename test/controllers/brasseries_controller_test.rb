require 'test_helper'

class BrasseriesControllerTest < ActionController::TestCase
  setup do
    @brasseries = brasseries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:brasseries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create brasseries" do
    assert_difference('Brasserie.count') do
      post :create, brasseries: { desc: @brasseries.desc, nom: @brasseries.nom }
    end

    assert_redirected_to brasseries_path(assigns(:brasseries))
  end

  test "should show brasseries" do
    get :show, id: @brasseries
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @brasseries
    assert_response :success
  end

  test "should update brasseries" do
    patch :update, id: @brasseries, brasseries: { desc: @brasseries.desc, nom: @brasseries.nom }
    assert_redirected_to brasseries_path(assigns(:brasseries))
  end

  test "should destroy brasseries" do
    assert_difference('Brasserie.count', -1) do
      delete :destroy, id: @brasseries
    end

    assert_redirected_to brasseries_path
  end
end
