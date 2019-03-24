require 'rails_helper'

RSpec.describe "seats/index", type: :view do
  before(:each) do
    assign(:seats, [
      Seat.create!(),
      Seat.create!()
    ])
  end

  it "renders a list of seats" do
    render
  end
end
