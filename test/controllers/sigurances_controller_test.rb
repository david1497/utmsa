require 'test_helper'

class SigurancesControllerTest < ActionController::TestCase
  setup do
    @sigurance = sigurances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sigurances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sigurance" do
    assert_difference('Sigurance.count') do
      post :create, sigurance: { content: @sigurance.content, email: @sigurance.email, nume: @sigurance.nume, prenume: @sigurance.prenume, tel: @sigurance.tel }
    end

    assert_redirected_to sigurance_path(assigns(:sigurance))
  end

  test "should show sigurance" do
    get :show, id: @sigurance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sigurance
    assert_response :success
  end

  test "should update sigurance" do
    patch :update, id: @sigurance, sigurance: { content: @sigurance.content, email: @sigurance.email, nume: @sigurance.nume, prenume: @sigurance.prenume, tel: @sigurance.tel }
    assert_redirected_to sigurance_path(assigns(:sigurance))
  end

  test "should destroy sigurance" do
    assert_difference('Sigurance.count', -1) do
      delete :destroy, id: @sigurance
    end

    assert_redirected_to sigurances_path
  end
end
