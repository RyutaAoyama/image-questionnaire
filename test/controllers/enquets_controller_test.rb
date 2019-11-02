require 'test_helper'

class EnquetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enquet = enquets(:one)
  end

  test "should get index" do
    get enquets_url
    assert_response :success
  end

  test "should get new" do
    get new_enquet_url
    assert_response :success
  end

  test "should create enquet" do
    assert_difference('Enquet.count') do
      post enquets_url, params: { enquet: {  } }
    end

    assert_redirected_to enquet_url(Enquet.last)
  end

  test "should show enquet" do
    get enquet_url(@enquet)
    assert_response :success
  end

  test "should get edit" do
    get edit_enquet_url(@enquet)
    assert_response :success
  end

  test "should update enquet" do
    patch enquet_url(@enquet), params: { enquet: {  } }
    assert_redirected_to enquet_url(@enquet)
  end

  test "should destroy enquet" do
    assert_difference('Enquet.count', -1) do
      delete enquet_url(@enquet)
    end

    assert_redirected_to enquets_url
  end
end
