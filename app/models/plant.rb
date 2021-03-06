class Plant < ApplicationRecord
  has_many :comments
  belongs_to :user
  validates :nickname, :plant_species, :age, :description, :location, :image_url, :watering_schedule, presence: true

  before_save do
    self.plant_species = plant_species.titleize
  end

end
