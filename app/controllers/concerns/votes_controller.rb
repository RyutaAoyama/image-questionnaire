class VotesController < ApplicationController


  def create
    @vote = Vote.new(enquet_id: params[:enquet_id])
    @vote.save
    redirect_to("/enquets/#{params[:enquet_id]}")
  end

end
