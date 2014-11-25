require 'test_helper'

class IncomeItemsControllerTest < ActionController::TestCase
  setup do
    @income_item = income_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:income_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create income_item" do
    assert_difference('IncomeItem.count') do
      post :create, income_item: { date: @income_item.date, income_category_id: @income_item.income_category_id, money: @income_item.money }
    end

    assert_redirected_to income_item_path(assigns(:income_item))
  end

  test "should show income_item" do
    get :show, id: @income_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @income_item
    assert_response :success
  end

  test "should update income_item" do
    patch :update, id: @income_item, income_item: { date: @income_item.date, income_category_id: @income_item.income_category_id, money: @income_item.money }
    assert_redirected_to income_item_path(assigns(:income_item))
  end

  test "should destroy income_item" do
    assert_difference('IncomeItem.count', -1) do
      delete :destroy, id: @income_item
    end

    assert_redirected_to income_items_path
  end
end
