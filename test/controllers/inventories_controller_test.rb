require 'test_helper'

class InventoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inventory = inventories(:one)
  end

  test 'should get index' do
    get inventories_url
    assert_response :success
  end

  test 'should get new' do
    get new_inventory_url
    assert_response :success
  end

  test 'should create inventory' do
    assert_difference('Inventory.count') do
      post inventories_url, params: { inventory: { Name: @inventory.Name } }
    end

    assert_redirected_to inventory_url(Inventory.last)
  end

  test 'should show inventory' do
    get inventory_url(@inventory)
    assert_response :success
  end

  test 'should get edit' do
    get edit_inventory_url(@inventory)
    assert_response :success
  end

  test 'should update inventory' do
    patch inventory_url(@inventory), params: { inventory: { Name: @inventory.Name } }
    assert_redirected_to inventory_url(@inventory)
  end

  test 'should destroy inventory' do
    assert_difference('Inventory.count', -1) do
      delete inventory_url(@inventory)
    end

    assert_redirected_to inventories_url
  end
end
