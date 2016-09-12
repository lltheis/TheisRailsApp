module ProductsHelper
  def show_products(products)
    if products.length > 0
      render partial: products
    else
      ("<div class='card' role='alert'><h4>Sorry! No products were found. Please search again.</h4></div>").html_safe
    end
  end

  def cache_key_for_products
    count          = Product.count
    max_updated_at = Product.maximum(:updated_at).try(:utc).try(:to_s, :number)
    "products/all-#{count}-#{max_updated_at}"
  end
end

