require 'test_helper'

class InventoryFoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inventory_food = inventory_foods(:one)
  end

  test 'should get index' do
    get inventory_foods_url
    assert_response :success
  end

  test 'should get new' do
    get new_inventory_food_url
    assert_response :success
  end

  test 'should create inventory_food' do
    assert_difference('InventoryFood.count') do
      post inventory_foods_url,
           params: { inventory_food: { food_id: @inventory_food.food_id, inventory_id: @inventory_food.inventory_id,
                                       quantity: @inventory_food.quantity } }
    end

    assert_redirected_to inventory_food_url(InventoryFood.last)
  end

  test 'should show inventory_food' do
    get inventory_food_url(@inventory_food)
    assert_response :success
  end

  test 'should get edit' do
    get edit_inventory_food_url(@inventory_food)
    assert_response :success
  end

  test 'should update inventory_food' do
    patch inventory_food_url(@inventory_food),
          params: { inventory_food: { food_id: @inventory_food.food_id, inventory_id: @inventory_food.inventory_id,
                                      quantity: @inventory_food.quantity } }
    assert_redirected_to inventory_food_url(@inventory_food)
  end

  test 'should destroy inventory_food' do
    assert_difference('InventoryFood.count', -1) do
      delete inventory_food_url(@inventory_food)
    end

    assert_redirected_to inventory_foods_url
  end
end
