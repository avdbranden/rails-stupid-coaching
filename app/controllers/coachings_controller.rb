class CoachingsController < ApplicationController
  def answer
    query = params[:query]
    @response = "I don't care, get dressed and go to work!"
    @response = "Silly question, get dressed and go to work!" if query.end_with?("?")
    @response = "#{@response} I can feel your motivation!" if query.upcase
    @response = nil if query == "I am going to work right now!"
  end

  def ask
  end
end
