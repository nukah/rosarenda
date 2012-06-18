class UtilityController < ActionController::Base
  def 404
    @ref = request.refferer
    render 'utility/notfound'
  end
end
  