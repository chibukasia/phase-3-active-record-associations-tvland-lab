class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    @actors_list = []
    self.actors.each do |actor|
        full_name = "#{actor.first_name} #{actor.last_name}"
        @actors_list << full_name
    end
    @actors_list
  end
end