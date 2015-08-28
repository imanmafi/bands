require "spec_helper"

describe(Band) do
  it { should have_and_belong_to_many(:venues) }

  it("titlecases the first letter of each word") do
    band = Band.create({name: "crystal castles"})
    expect(band.name).to eq("Crystal Castles")
  end
end