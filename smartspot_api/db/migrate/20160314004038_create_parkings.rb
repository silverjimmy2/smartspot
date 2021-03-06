class CreateParkings < ActiveRecord::Migration
	def up
		create_table :parkings do |t|
			t.references(:technician)
			
			t.string('name')
			t.string('address')
			t.string('latitude')
			t.string('longitude')
			t.string('description')
			t.string('key')

			t.timestamps(:null => false)
		end
		add_index(:parkings, 'technician_id')
	end

	def down
		drop_table(:parkings)
	end
end
