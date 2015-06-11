class StaticPagesController < ApplicationController
  before_action :signed_in_kid
  before_action :correct_kid, only: [:show, :edit, :update, :destroy]
  before_action :set_scoop, only: [:show, :edit, :update, :destroy]

  def home
    @scoops = Scoop.all.order(created_at: :desc)
  end



  def about
  end
end
