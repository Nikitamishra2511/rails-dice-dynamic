class DiceController < ApplicationController
  def home
    render("dice/home")
  end

  def roll
    @num_dice = params[:num].to_i
    @sides = params[:sides].to_i
    @rolls = Array.new(@num_dice) { rand(1..@sides) }

    render("dice/roll")
  end
end
