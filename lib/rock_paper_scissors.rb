class String

  define_method(:rock_paper_scissors) do |opponent|

    player   = self.downcase
    opponent = opponent.downcase

    if player == "rock"
      if opponent == "scissors"
        true
      elsif opponent == "paper"
        false
      elsif opponent == self
        "tie"
      end
    elsif player == "scissors"
      if opponent == "rock"
        false
      elsif opponent == "paper"
        true
      elsif opponent == "scissors"
        "tie"
      end
    elsif player == "paper"
      if opponent == "rock"
        true
      elsif opponent == "scissors"
        false
      elsif opponent == "paper"
        "tie"
      end
    end
  end
end
