require 'rails_helper'

RSpec.describe "timelogs/index", type: :view do
  before(:each) do
    assign(:timelogs, [
      Timelog.create!(
        :log_type => "Log Type",
        :user => nil
      ),
      Timelog.create!(
        :log_type => "Log Type",
        :user => nil
      )
    ])
  end

  it "renders a list of timelogs" do
    render
    assert_select "tr>td", :text => "Log Type".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
