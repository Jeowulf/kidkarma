class StaticPagesController < ApplicationController
  before_action :signed_in_kid
  before_action :correct_kid, only: [:show, :edit, :update, :destroy]
  before_action :set_scoop, only: [:show, :edit, :update, :destroy]
  attr_accessor :votes
  attr_accessor :color
  attr_accessor :scoops
  attr_accessor :scoop

  def home
    @scoops = Scoop.all.paginate(page: params[:page], per_page: 30).order(created_at: :desc)
    @scoops.each do |scoop|
    grey = 0
    green = 0
    blue = 0
    purple = 0
    gold = 0
      @votes = Vote.where(:scoop_id => scoop.id)
      for x in 0..@votes.length-1
        if @votes[x][:color] == 'grey'
          grey += 1
          puts "grey = "
          puts grey
        end
        if @votes[x][:color] == 'green'
          green += 1

        end
        if @votes[x][:color] == 'blue'
          blue += 1

        end
        if @votes[x][:color] == 'purple'
          purple += 1

        end
        if @votes[x][:color] == 'gold'
          gold += 1
        end
      end
      if grey >= green && grey >= blue && grey >= purple && grey >= gold
        @vote = 'grey'
      elsif green >= grey && green >= blue && green >= purple && green >= gold
        @vote = 'green'
      elsif blue >= green && blue >= grey && blue >= purple && blue >= gold
        @vote = 'blue'
      elsif purple >= green && purple >= blue && purple >= grey && purple >= gold
        @vote = 'purple'
      elsif gold >= green && gold >= blue && gold >= purple && gold >= grey
        @vote = 'gold'
      end
      scoop.color = @vote
    end
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















