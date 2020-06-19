require 'test_helper'

class PropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @property = properties(:one)
  end

  test "should get index" do
    get properties_url
    assert_response :success
  end

  test "should get new" do
    get new_property_url
    assert_response :success
  end

  test "should create property" do
    assert_difference('Property.count') do
      post properties_url, params: { property: { ae_flood_zone: @property.ae_flood_zone, analysis_year: @property.analysis_year, asking_price: @property.asking_price, broker: @property.broker, city: @property.city, fka: @property.fka, msa: @property.msa, name: @property.name, notes: @property.notes, offer_price: @property.offer_price, price_per_unit: @property.price_per_unit, sales_price: @property.sales_price, state: @property.state, status: @property.status, street_address: @property.street_address, submarket: @property.submarket, unit_count: @property.unit_count, year_built: @property.year_built, zipcode: @property.zipcode } }
    end

    assert_redirected_to property_url(Property.last)
  end

  test "should show property" do
    get property_url(@property)
    assert_response :success
  end

  test "should get edit" do
    get edit_property_url(@property)
    assert_response :success
  end

  test "should update property" do
    patch property_url(@property), params: { property: { ae_flood_zone: @property.ae_flood_zone, analysis_year: @property.analysis_year, asking_price: @property.asking_price, broker: @property.broker, city: @property.city, fka: @property.fka, msa: @property.msa, name: @property.name, notes: @property.notes, offer_price: @property.offer_price, price_per_unit: @property.price_per_unit, sales_price: @property.sales_price, state: @property.state, status: @property.status, street_address: @property.street_address, submarket: @property.submarket, unit_count: @property.unit_count, year_built: @property.year_built, zipcode: @property.zipcode } }
    assert_redirected_to property_url(@property)
  end

  test "should destroy property" do
    assert_difference('Property.count', -1) do
      delete property_url(@property)
    end

    assert_redirected_to properties_url
  end
end
