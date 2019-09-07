class SightingSerializer
  def initialize(sighting_object)
    @sighting = sighting_object
  end

  def to_serialized_json
    # @sighting.to_json(:include =>
    #   {:bird => {:only => [:name, :species]},
    #   :location => {:only => [:latitude, :longitude]}},
    #   :except => [:updated_at]
    #   )
    # end

    options = {
      include: {
        bird: {
          only: [:name, :species]
          },
        location: {
          only: [:name, :species]
          }
        },
      except: [:updated_at]

      }
      @sighting.to_json(options)
    end
end
