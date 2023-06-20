class DistrictsController < ApplicationController

  # GET api/pageload
  def index
    # simplistic one-for-all get endpoint

    # just get names of table entries
    activities = Activity.all.map(&:name)
    districts = Ditrict.all(&:name)
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
    # for now only top3 matches
    top_x = 3

    # priorities: Price >


  end


end
