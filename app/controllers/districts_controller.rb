class DistrictsController < ApplicationController
  before_action :district_params, only: %i[top_matches]

  # GET api/pageload
  def index
    # simplistic one-for-all get endpoint

    # just get names of table entries
    activities = Activity.all.map(&:name)
    districts = District.all(&:barris)
    criteria = Criteria.all(&:name)

    # answer with json (no error handling)
    render json: {
      activities:,
      districts:,
      criteria:
    }
  end

  # POST api/top_matches
  def top_matches

    # get the parameters from the form
    json_data = params
    p json_data

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
