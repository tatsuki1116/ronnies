class UshijimasController < ApplicationController
  def top
  end

  def ushijima
  	@event =Event.find(params[:id])
  	@users = @event.
  end
end
