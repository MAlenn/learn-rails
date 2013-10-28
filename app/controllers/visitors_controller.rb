class VisitorsController < ApplicationController
  def new
    Rails.logger.debug 'DEBUG: entering new mwthod'
    @owner = Owner.new
    Rails.logger.debug 'DEBUG: Owner name is ' + @owner.name
    flash.now[:notice] = 'Welcome!'
    if @owner.countdown < 50 then flash.now[:alert] = 'My birthday is soon.' end
    render 'visitors/new'
  end
end