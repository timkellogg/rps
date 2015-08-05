require('rspec')
require('rock_paper_scissors')

describe('String#rock_paper_scissors') do

  it("returns true if self beats argument") do
    expect("rock".rock_paper_scissors("scissors")).to(eq(true))
  end
end
