require 'rails_helper'

RSpec.describe Training, type: :model do


  it "has the description set correctly" do
    training = Training.new description: "Hyvä treeni", duration: 90, time: "18:30", day: "2015-02-15"

    expect(training.description).to eq("Hyvä treeni")

  end

  it "has the duration set correctly" do
    training = Training.new description: "Hyvä treeni", duration: 90, time: "18:30", day: "2015-02-15"

    expect(training.duration).to eq(90)

  end

  it "has the time set correctly" do
    training = Training.new description: "Hyvä treeni", duration: 90, time: "18:30", day: "2015-02-15"

    expect(training.time.to_s(:time)).to eq("18:30")

  end

  it "has the day set correctly" do
    training = Training.new description: "Hyvä treeni", duration: 90, time: "18:30", day: "2015-02-15"

    expect(training.day.to_s).to eq("2015-02-15")

  end

  it "is not saved with negative duration" do
    training = Training.create description: "Hyvä treeni", duration: -25, time: "18:30", day: "2015-02-15"

    expect(training).not_to be_valid
    expect(Training.count).to eq(0)

  end

  it "is not saved without duration" do
    training = Training.create description: "Hyvä treeni" , time: "18:30", day: "2015-02-15"

    expect(training).not_to be_valid
    expect(Training.count).to eq(0)

  end

  it "is not saved with too short duration" do
    training = Training.create description: "Hyvä treeni" , duration: 29, time: "18:30", day: "2015-02-15"

    expect(training).not_to be_valid
    expect(Training.count).to eq(0)

    end

  it "is not saved with too long duration" do
    training = Training.create description: "Hyvä treeni" , duration: 601, time: "18:30", day: "2015-02-15"

    expect(training).not_to be_valid
    expect(Training.count).to eq(0)

  end


end
