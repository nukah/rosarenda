class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :expire 
  def expire 
       response.headers["Cache-Control"] = "no-cache, no-store, must-revalidate"
       response.headers["Pragma"] = "no-cache"
       response.headers["Expires"] = "0"
  end
  def error_404
    respond_to do |type| 
      type.html { render :template => "utility/notfound", :layout => 'application', :status => 404, :locals => { :path => request.referrer } } 
      type.all  { render :nothing => true, :status => 404 } 
    end
    true
  end
end
