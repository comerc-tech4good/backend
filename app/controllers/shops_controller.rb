class ShopsController < ApplicationController
  def test
    render json: {
      test: "Test"
    }
  end
end
