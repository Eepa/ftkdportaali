require 'rails_helper'

RSpec.describe "trainings/new", type: :view do
  before(:each) do
    assign(:training, Training.new(
      :description => "MyText",
      :duration => 1
    ))
  end

  it "renders new training form" do
    render

    assert_select "form[action=?][method=?]", trainings_path, "post" do

      assert_select "textarea#training_description[name=?]", "training[description]"

      assert_select "input#training_duration[name=?]", "training[duration]"
    end
  end
end
