require 'test_helper'

class ComputersControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:computers)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_computer
    assert_difference('Computer.count') do
      post :create, :computer => { :control => '11111', :serial => '11111', :model => '11111'}
    end

    assert_redirected_to computer_path(assigns(:computer))
  end

  def test_should_show_computer
    get :show, :id => computers(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => computers(:one).id
    assert_response :success
  end

  def test_should_update_computer
    put :update, :id => computers(:one).id, :computer => { }
    assert_redirected_to computer_path(assigns(:computer))
  end

  def test_should_destroy_computer
    assert_difference('Computer.count', -1) do
      delete :destroy, :id => computers(:one).id
    end

    assert_redirected_to computers_path
  end
end
