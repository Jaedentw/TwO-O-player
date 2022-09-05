class Question
  attr_accessor :answer, :playerAnswer

  def initialize(player)
    @player = player
    no1 = rand(1..20)
    no2 = rand(1..20)
    puts "#{@player}: What is #{no1} plus #{no2}"
    @answer = no1 + no2
    @playerAnswer = gets.chomp
  end
end