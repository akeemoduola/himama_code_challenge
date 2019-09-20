require 'rails_helper'

RSpec.describe "timelogs/show", type: :view do
  before(:each) do
    @timelog = assign(:timelog, Timelog.create!(
      :log_type => "Log Type",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Log Type/)
    expect(rendered).to match(//)
  end
end
