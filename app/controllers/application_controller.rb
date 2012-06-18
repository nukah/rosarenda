class ApplicationController < ActionController::Base
  protect_from_forgery
  def render_404
    respond_to do |type| 
      type.html { render :template => "utility/notfound", :layout => 'application', :status => 404, :locals => {:ref => request.referrer } } 
      type.all  { render :nothing => true, :status => 404 } 
    end
    true
  end
end
