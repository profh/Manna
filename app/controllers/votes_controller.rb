class VotesController < ApplicationController
  before_action :set_vote, only: [:show, :edit, :update, :destroy]

  def index
    @vote_yes = Vote.yes
    @vote_no = Vote.no
  end

  def show
  end

  def new
    @vote = Vote.new
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vote
      @vote = Vote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vote_params
      params.require(:vote).permit(:deacon_id, :decision, :case_id)
    end
end
