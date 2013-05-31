require 'test_helper'

class AutomatonsControllerTest < ActionController::TestCase
  setup do
    @automaton = automatons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:automatons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create automaton" do
    assert_difference('Automaton.count') do
      post :create, automaton: { pos00: @automaton.pos00, pos01: @automaton.pos01, pos02: @automaton.pos02, pos10: @automaton.pos10, pos11: @automaton.pos11, pos12: @automaton.pos12, pos20: @automaton.pos20, pos21: @automaton.pos21, pos22: @automaton.pos22 }
    end

    assert_redirected_to automaton_path(assigns(:automaton))
  end

  test "should show automaton" do
    get :show, id: @automaton
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @automaton
    assert_response :success
  end

  test "should update automaton" do
    put :update, id: @automaton, automaton: { pos00: @automaton.pos00, pos01: @automaton.pos01, pos02: @automaton.pos02, pos10: @automaton.pos10, pos11: @automaton.pos11, pos12: @automaton.pos12, pos20: @automaton.pos20, pos21: @automaton.pos21, pos22: @automaton.pos22 }
    assert_redirected_to automaton_path(assigns(:automaton))
  end

  test "should destroy automaton" do
    assert_difference('Automaton.count', -1) do
      delete :destroy, id: @automaton
    end

    assert_redirected_to automatons_path
  end
end
