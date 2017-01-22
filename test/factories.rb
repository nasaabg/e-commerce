FactoryGirl.define do
	factory :category do
		name "Cars"
	end

	factory :product do
		name "Skoda"
		description "This is description"
		category
  end
end
