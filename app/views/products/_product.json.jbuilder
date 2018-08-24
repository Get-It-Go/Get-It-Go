json.extract! product, :id, :name, :content, :status, :image, :price, :address_num, :address_text, :address_text2, :user_id, :category, :created_at, :updated_at
json.url product_url(product, format: :json)
