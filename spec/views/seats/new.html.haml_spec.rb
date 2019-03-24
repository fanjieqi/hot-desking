require 'rails_helper'

RSpec.describe "seats/new", type: :view do
  before(:each) do
    assign(:seat, Seat.new())
  end

  it "renders new seat form" do
    render

    assert_select "form[action=?][method=?]", seats_path, "post" do
    end
  end
end
