require 'test_helper'

class DonatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @donat = donats(:one)
  end

  test "should get index" do
    get donats_url
    assert_response :success
  end

  test "should get new" do
    get new_donat_url
    assert_response :success
  end

  test "should create donat" do
    assert_difference('Donat.count') do
      post donats_url, params: { donat: { description: @donat.description, name: @donat.name, picture_url: @donat.picture_url } }
    end

    assert_redirected_to donat_url(Donat.last)
  end

  test "should show donat" do
    get donat_url(@donat)
    assert_response :success
  end

  test "should get edit" do
    get edit_donat_url(@donat)
    assert_response :success
  end

  test "should update donat" do
    patch donat_url(@donat), params: { donat: { description: @donat.description, name: @donat.name, picture_url: @donat.picture_url } }
    assert_redirected_to donat_url(@donat)
  end

  test "should destroy donat" do
    assert_difference('Donat.count', -1) do
      delete donat_url(@donat)
    end

    assert_redirected_to donats_url
  end
end
