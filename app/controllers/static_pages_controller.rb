class StaticPagesController < ApplicationController
  before_action :signed_in_kid
  before_action :correct_kid, only: [:show, :edit, :update, :destroy]
  before_action :set_scoop, only: [:show, :edit, :update, :destroy]

  def home
    @scoops = Scoop.all.paginate(page: params[:page], per_page: 30).order(created_at: :desc)
  end

  def index
    @scoop = Scoop.find(params[:id])
  end

  def about
  end
  def scoop_params
    params.require(:scoop).permit(:headline, :story, :id)
  end
end
