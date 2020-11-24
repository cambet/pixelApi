require 'test_helper'

class PixelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pixel = pixels(:one)
  end

  test "should get index" do
    get pixels_url, as: :json
    assert_response :success
  end

  test "should create pixel" do
    assert_difference('Pixel.count') do
      post pixels_url, params: { pixel: { converted: @pixel.converted, converted_at: @pixel.converted_at, provider_id: @pixel.provider_id } }, as: :json
    end

    assert_response 201
  end

  test "should show pixel" do
    get pixel_url(@pixel), as: :json
    assert_response :success
  end

  test "should update pixel" do
    patch pixel_url(@pixel), params: { pixel: { converted: @pixel.converted, converted_at: @pixel.converted_at, provider_id: @pixel.provider_id } }, as: :json
    assert_response 200
  end

  test "should destroy pixel" do
    assert_difference('Pixel.count', -1) do
      delete pixel_url(@pixel), as: :json
    end

    assert_response 204
  end
end
