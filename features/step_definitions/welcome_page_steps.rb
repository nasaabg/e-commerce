Given(/^there's a product named "(.*?)" with "(.*?)" description$/) do |name, desc|
	@product = FactoryGirl.create(:product, name: name, description: desc)
end

When(/^I am on the homepage$/) do
	visit root_path
end

Then(/^I should see the "(.*?)" product$/) do |name|
	@product = Product.find_by_name(name)

	assert page.has_content?(@product.name)
	assert page.has_content?(@product.description)
end

Given(/^there's category named "(.*?)"$/) do |name|
	@product = FactoryGirl.create(:category, name: name)
end

Then(/^I should see the "(.*?)" category$/) do |name|
	@category = Category.find_by_name(name)

	assert page.has_content?(@category.name)
end

Then(/^I should see the "(.*?)" button$/) do |button|
	assert page.has_link?(button)
end
