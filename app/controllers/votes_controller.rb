class VotesController < ApplicationController
  before_action :set_vote, only: [:show, :edit, :update, :destroy]

  def index
    @votes = Vote.all
  end

  def show
  end

  def new
    @vote = Vote.new
  end

  def edit
  end

  def create
    @vote = Vote.new(vote_params)

    if @vote.save
      redirect_to votes_path, notice: "Successfully created vote."
    else
      render action: 'new'
    end
  end

  def update
    if @vote.update(vote_params)
      redirect_to votes_path, notice: "Successfully updated vote."
    else
      render action: 'edit'
    end
  end


  def destroy
    @vote.destroy
    redirect_to votes_path, notice: "Successfully removed vote: #{@vote.decision} for #{@vote.case.subject} from the system."
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
