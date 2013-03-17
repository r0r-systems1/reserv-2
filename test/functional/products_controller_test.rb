require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
    @update = {
      :title => 'Lorem Ipsum',
      :description => 'Wibbles are fun!',
      :event_type => 'Workshop',
      :fam_price => 23,
      :num_days =>3,
      :pens_price =>25,
      :quote = 'This is my quote',
      :quote_auth => 'Me',
      :quote_ref =>'them',
      :title => 'Some other title',
      :venue =>  'home',
      :youth_price => 15,
      :image_url => 'lorem.jpg',
      :price => 19.95
}
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { address: @product.address, adult_price: @product.adult_price, contact: @product.contact, description: @product.description, event_date: @product.event_date, event_time: @product.event_time, event_type: @product.event_type, fam_price: @product.fam_price, image_url: @product.image_url, num_days: @product.num_days, pens_price: @product.pens_price, quote: @product.quote, quote_auth: @product.quote_auth, quote_ref: @product.quote_ref, title: @product.title, venue: @product.venue, youth_price: @product.youth_price }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    put :update, id: @product, product: { address: @product.address, adult_price: @product.adult_price, contact: @product.contact, description: @product.description, event_date: @product.event_date, event_time: @product.event_time, event_type: @product.event_type, fam_price: @product.fam_price, image_url: @product.image_url, num_days: @product.num_days, pens_price: @product.pens_price, quote: @product.quote, quote_auth: @product.quote_auth, quote_ref: @product.quote_ref, title: @product.title, venue: @product.venue, youth_price: @product.youth_price }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
