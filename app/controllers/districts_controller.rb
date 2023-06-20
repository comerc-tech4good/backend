class DistrictsController < ApplicationController
  # GET api/pageload
  def index
    # simplistic one-for-all get endpoint

    # just get names of table entries
    activities = Activity.all.map(&:name)
    criteria = Criterium.all.map(&:name)

    # answer with json (no error handling)
    render json: {
      activities:,
      parameters: criteria
    }
  end

  # POST api/top_matches
  def top_matches

    activity = params[:activities] # (singular)? activity to get matches for
    categories_to_check = params[:parameters].split(",") # array of [alquiler, venta]

    # init hash with response contents
    query_response = {}
    query_response["response"] = []

    # for each category (parameter) like price, get 3 neighborhoods
    categories_to_check.each do |category|

      # get 3 best matches
      matches = lookup(category)

      # create neighborhood entries
      neighborhoods = []
      matches.each do |match|
        to_push = {
          "name": match.barris,
          "info": {
            "alquiler": match.precio_alquiler,
            "venta": match.precio_venta,
            "renta_capita": match.euros_any,
            "poblacio": match.població,
            "densitat_poblacio": match.densitat_neta_habha
          }
        }
        neighborhoods.push(to_push)
      end

      # push neighborhoods into the response - for their given parameters
      query_response['response'] << {"parameter": category, "neighborhood": neighborhoods}
    end

    render json: query_response
  end

  def lookup(activity_type)

    p activity_type

    if ["alquiler", "venta"].include?(activity_type)

      # if we are looking for price, get lowest (ignore nil)
      matches = District.where.not("precio_#{activity_type.downcase}" => nil).order("precio_#{activity_type.downcase}".to_sym).limit(3)
    else
      if activity_type == "renta_capita"
        # edge case of misnaming for renta_capita
        matches = District.where.not("precio_alquiler" => nil).order(euros_any: :desc).limit(3)
      elsif activity_type == "poblacio"
        # edge case poblacio
        activity_type = "població"
        p activity_type
        matches = District.where.not("precio_alquiler" => nil).order(activity_type.downcase.to_sym, :desc).limit(3)
      else
        # if we are looking for anything else, get the highest
        matches = District.where.not("precio_alquiler" => nil).order(activity_type.downcase.to_sym, :desc).limit(3)
      end
    end

    return matches
  end
end
