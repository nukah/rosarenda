require 'digest'

class MainController < ApplicationController
  def index
    redirect_to '/objects'
  end
  
  def subscribe
    email = params[:email].to_s
    digest = Digest::SHA256.hexdigest(email.to_s + rand(10**15).to_s)
    @record = Subscriber.new(:email => email, :code => digest.to_s)
    if @record.save
      render
    end
  end

  def unsubscribe
    confirm = params[:code].to_s
    @sub = Subscriber.where(:code => confirm).first
        
    if @sub.present?
      @sub.delete and render
    else
      render 'main/invalid' if not @sub
    end  
  end
end
