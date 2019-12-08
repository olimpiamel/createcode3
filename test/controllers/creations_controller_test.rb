require 'test_helper'

class CreationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @creation = creations(:one)
  end

  test "should get index" do
    get creations_url
    assert_response :success
  end

  test "should get new" do
    get new_creation_url
    assert_response :success
  end

  test "should create creation" do
    assert_difference('Creation.count') do
      post creations_url, params: { creation: { destination: @creation.destination, origin: @creation.origin, title: @creation.title, totran: @creation.totran, translated: @creation.translated, user_alias: @creation.user_alias } }
    end

    assert_redirected_to creation_url(Creation.last)
  end

  test "should show creation" do
    get creation_url(@creation)
    assert_response :success
  end

  test "should get edit" do
    get edit_creation_url(@creation)
    assert_response :success
  end

  test "should update creation" do
    patch creation_url(@creation), params: { creation: { destination: @creation.destination, origin: @creation.origin, title: @creation.title, totran: @creation.totran, translated: @creation.translated, user_alias: @creation.user_alias } }
    assert_redirected_to creation_url(@creation)
  end

  test "should destroy creation" do
    assert_difference('Creation.count', -1) do
      delete creation_url(@creation)
    end

    assert_redirected_to creations_url
  end
end
