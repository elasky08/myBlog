class NamepickerController < ApplicationController
  def index
    @names = params[:names]
    @array = @names.to_s.split(",")
    if @names.nil?
      @dd = ""
    else
      @dd = @array[rand(0..@array.length-1)]
    end
  end

end
