require 'rails_helper'

RSpec.describe "trainings/edit", type: :view do
  before(:each) do
    @training = assign(:training, Training.create!(
      :description => "MyText",
      :duration => 1
    ))
  end

  it "renders the edit training form" do
    render

    assert_select "form[action=?][method=?]", training_path(@training), "post" do

      assert_select "textarea#training_description[name=?]", "training[description]"

      assert_select "input#training_duration[name=?]", "training[duration]"
    end
  end
end
