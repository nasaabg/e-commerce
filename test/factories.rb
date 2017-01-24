FactoryGirl.define do
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
