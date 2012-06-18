class UtilityController < ActionController::Base
  def 404_error
    @ref = request.refferer
    render 'utility/notfound'
  end
end
  