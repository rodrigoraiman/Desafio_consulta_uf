require 'test_helper'

class ValuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @value = values(:one)
  end

  test "should get index" do
    get values_url, as: :json
    assert_response :success
  end

  test "should create value" do
    assert_difference('Value.count') do
      post values_url, params: { value: { date: @value.date, value: @value.value } }, as: :json
    end

    assert_response 201
  end

  test "should show value" do
    get value_url(@value), as: :json
    assert_response :success
  end

  test "should update value" do
    patch value_url(@value), params: { value: { date: @value.date, value: @value.value } }, as: :json
    assert_response 200
  end

  test "should destroy value" do
    assert_difference('Value.count', -1) do
      delete value_url(@value), as: :json
    end

    assert_response 204
  end
end
