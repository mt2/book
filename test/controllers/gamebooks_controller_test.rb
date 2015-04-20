require 'test_helper'

class GamebooksControllerTest < ActionController::TestCase
  setup do
    @gamebook = gamebooks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gamebooks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gamebook" do
    assert_difference('Gamebook.count') do
      post :create, gamebook: { isbn: @gamebook.isbn, price: @gamebook.price, title: @gamebook.title }
    end

    assert_redirected_to gamebook_path(assigns(:gamebook))
  end

  test "should show gamebook" do
    get :show, id: @gamebook
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gamebook
    assert_response :success
  end

  test "should update gamebook" do
    patch :update, id: @gamebook, gamebook: { isbn: @gamebook.isbn, price: @gamebook.price, title: @gamebook.title }
    assert_redirected_to gamebook_path(assigns(:gamebook))
  end

  test "should destroy gamebook" do
    assert_difference('Gamebook.count', -1) do
      delete :destroy, id: @gamebook
    end

    assert_redirected_to gamebooks_path
  end
end
