require('rspec')
require('leetspeak')
require('pry')

describe('String#leetspeak') do
  it("returns a string as is when no Leetspeak rules apply") do
    expect(("happy").leetspeak()).to(eq("happy"))
  end
end

describe("String#leetspeak") do
  it("replaces the letter e in a string with the number 3") do
    expect(("joe").leetspeak()).to(eq("j03"))
  end
end

describe("String#leetspeak") do
  it("replaces the letter o in a string with the number 0") do
    expect(("bob").leetspeak()).to(eq("b0b"))
  end
end

describe("String#leetspeak") do
  it("replaces the letter I in a string with the number 1") do
    expect(("I like Ike").leetspeak()).to(eq("1 lik3 1k3"))
  end
end

it('replaces every "s" in a string with a "z"') do
   expect("roses".leetspeak).to(eq("r0z3z"))
 end


describe("String#leetspeak") do
  it("replaces the letter o with 0 and e with 3 in a sentence with multiple strings") do
    expect(("jason james").leetspeak()).to(eq("jas0n jam3s"))
  end
end
