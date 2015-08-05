require('rspec')
require('rock_paper_scissors')

describe('String#rock_paper_scissors') do

  it("returns true if self beats argument") do
    expect("rock".rock_paper_scissors("scissors")).to(eq(true))
  end

  it("returns false if self does not beat argument") do
    expect("rock".rock_paper_scissors("paper")).to(eq(false))
  end

  it("returns tie if self is equal to the argument") do
    expect("rock".rock_paper_scissors("rock")).to(eq("tie"))
  end

end
