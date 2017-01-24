FactoryGirl.define do
  factory :order do
    subtotal "9.99"
    tax "9.99"
    shipping "9.99"
    total "9.99"
    order_status nil
  end
  factory :order_status do
    name "MyString"
  end
	factory :category do
		name "Cars"
	end

	factory :product do
		name "Skoda"
		description "This is description"
		category
  end
end
