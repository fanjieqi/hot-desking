require 'rails_helper'

RSpec.describe "seats/edit", type: :view do
  before(:each) do
    @seat = assign(:seat, Seat.create!())
  end

  it "renders the edit seat form" do
    render

    assert_select "form[action=?][method=?]", seat_path(@seat), "post" do
    end
  end
end
