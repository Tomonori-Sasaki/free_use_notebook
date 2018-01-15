require 'test_helper'

class ProgrammingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @programming = programmings(:one)
  end

  test "should get index" do
    get programmings_url
    assert_response :success
  end

  test "should get new" do
    get new_programming_url
    assert_response :success
  end

  test "should create programming" do
    assert_difference('Programming.count') do
      post programmings_url, params: { programming: { content: @programming.content, name: @programming.name, rank: @programming.rank } }
    end

    assert_redirected_to programming_url(Programming.last)
  end

  test "should show programming" do
    get programming_url(@programming)
    assert_response :success
  end

  test "should get edit" do
    get edit_programming_url(@programming)
    assert_response :success
  end

  test "should update programming" do
    patch programming_url(@programming), params: { programming: { content: @programming.content, name: @programming.name, rank: @programming.rank } }
    assert_redirected_to programming_url(@programming)
  end

  test "should destroy programming" do
    assert_difference('Programming.count', -1) do
      delete programming_url(@programming)
    end

    assert_redirected_to programmings_url
  end
end
