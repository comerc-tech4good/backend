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
      criteria:
    }
  end

  # POST api/top_matches
  def top_matches

    # get the parameters from the form
    puts params

    # for now only top3 matches
    top_x = 3

    top_matches = match(top_x)

    render json: {
      matches: top_matches
    }
  end

  def match(top_n)
    # priority: amount_of_same_type > Price_Rent > Annual_Income > Price_Buy > PopDensity

    # Get all of same type
    matching = District.where()
  end
end
