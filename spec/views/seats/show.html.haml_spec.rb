require 'rails_helper'

RSpec.describe "seats/show", type: :view do
  before(:each) do
    @seat = assign(:seat, Seat.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
