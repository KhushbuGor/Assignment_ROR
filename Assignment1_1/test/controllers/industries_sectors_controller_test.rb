require "test_helper"

class IndustriesSectorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @industries_sector = industries_sectors(:one)
  end

  test "should get index" do
    get industries_sectors_url
    assert_response :success
  end

  test "should get new" do
    get new_industries_sector_url
    assert_response :success
  end

  test "should create industries_sector" do
    assert_difference("IndustriesSector.count") do
      post industries_sectors_url, params: { industries_sector: {  } }
    end

    assert_redirected_to industries_sector_url(IndustriesSector.last)
  end

  test "should show industries_sector" do
    get industries_sector_url(@industries_sector)
    assert_response :success
  end

  test "should get edit" do
    get edit_industries_sector_url(@industries_sector)
    assert_response :success
  end

  test "should update industries_sector" do
    patch industries_sector_url(@industries_sector), params: { industries_sector: {  } }
    assert_redirected_to industries_sector_url(@industries_sector)
  end

  test "should destroy industries_sector" do
    assert_difference("IndustriesSector.count", -1) do
      delete industries_sector_url(@industries_sector)
    end

    assert_redirected_to industries_sectors_url
  end
end
