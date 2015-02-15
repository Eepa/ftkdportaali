require 'rails_helper'

RSpec.describe "trainings/index", type: :view do
  before(:each) do
    assign(:trainings, [
      Training.create!(
        :description => "MyText",
        :duration => 1
      ),
      Training.create!(
        :description => "MyText",
        :duration => 1
      )
    ])
  end

  it "renders a list of trainings" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
