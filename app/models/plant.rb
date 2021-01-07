class Plant < ApplicationRecord
    has_many :user_plants

    def find_note
        @note_plants = self.user_plants.filter {|user_plant| user_plant.notes != []}
        @note_plants.collect {|note_plant| note_plant.notes }.flatten
      end
end
