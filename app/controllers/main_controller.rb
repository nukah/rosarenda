require 'digest'

class MainController < ApplicationController
  def index
    redirect_to '/objects'
  end

  def subscribe
    email = params[:email].to_s
    @record = Subscriber.new(:email => email)
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
