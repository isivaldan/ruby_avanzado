require_relative './player.rb'
class Game
  attr_accessor :title, :price  
  def initialize(title, price)
    @title = title
    @price = price
  end
  
  def generate_games
    names = ['Zelda', 'Final Fantasy', 'Mario Kart', 'League of Legends']
    prices = [45_000, 54_000, 43_000, 0]
    names.each_with_index do |name, index|
      puts "INDEX: index"
      puts "NAME: #{name}"
      puts "PRICE: #{prices[index]}"
      games << Game.new(name, prices[index])
      puts "JUEGO: #{game.title} | #{price}"
    end
  end
end