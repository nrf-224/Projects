class AddNewProduct < ActiveRecord::Migration
	def change
	Product.create {
		:title => 'Sea', 
		:description => 'This is Sea pizza', 
		:price => 300, 
		:size => 30, 
		:is_spicy => false, 
		:is_veg => false, 
		:is_best_offer => true, 
		:path_to_image => '/images/sea.png' } 
	end
end
