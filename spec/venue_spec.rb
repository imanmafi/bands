require "spec_helper"

describe(Venue) do
  it { should have_and_belong_to_many(:bands) }

  it("titlecases the first letter of each word") do
    venue = Venue.create({name: "aalto lounge"})
    expect(venue.name).to eq("Aalto Lounge")
  end
end