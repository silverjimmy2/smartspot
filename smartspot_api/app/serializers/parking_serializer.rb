class ParkingSerializer < ActiveModel::Serializer
	attributes :id, :name, :address, :description, :total_spots, :free_spots

	def total_spots
		object.spots.size
	end

	def free_spots
		result = 0
		for spot in object.spots
			unless spot.status
				result = result + 1
			end
		end
		return result
	end
end