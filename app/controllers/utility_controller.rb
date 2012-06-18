class UtilityController < ActionController::Base
  def unknown_error
    @ref = request.refferer
    render 'utility/notfound'
  end
end
  