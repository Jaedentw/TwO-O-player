class Game

  def initialize 
    @p1 = Player.new
    @p2 = Player.new
    @turn
  end
  
  def switch
    if(@turn == 'Player 1')
      @turn = 'Player 2'
    else
      @turn = 'Player 1'
    end
  end

  def start
    until (@p1.lives == 0 || @p2.lives == 0)

      switch()
      puts '---- NEW TURN ----'
      q = Question.new(@turn)

      if (q.answer == q.playerAnswer.to_i)
       
        puts "Correct! That was the Answer!\nP1: #{@p1.lives}/3 P2: #{@p2.lives}/3\n"

      else

        if(@turn == 'Player 1')
          @p1.lives = @p1.lives - 1
        else
          @p2.lives -= 1
        end

        message = "Incorrect! #{@turn} you lose a life :( \nP1: #{@p1.lives}/3 P2: #{@p2.lives}/3 \n"

        if(@p1.lives == 0 || @p2.lives == 0)
        switch()
        puts message + "#{@turn} you win!\n==== GAME OVER ====\n"
        else
          puts message
        end

      end
    end
 
  end
  
end

