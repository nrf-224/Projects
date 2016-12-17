class CreateBarbers < ActiveRecord::Migration[5.0]
  def change
  		create_table :barber do |t|
  		t.text :name

  		t.timestamps
  		end

  	Barber.create :name => 'Jessie Pinkman'
  	Barber.create :name => 'Walter White'
  	Barber.create :name => 'Gus Fring'
  end
end
