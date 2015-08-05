class String

  define_method(:rock_paper_scissors) do |opponent|

    player   = self.downcase
    opponent = opponent.downcase

    if player == "rock"
      if opponent == "scissors"
        true
      end
    end
  end
end
