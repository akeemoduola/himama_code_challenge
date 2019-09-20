require 'rails_helper'

RSpec.describe "timelogs/new", type: :view do
  before(:each) do
    assign(:timelog, Timelog.new(
      :log_type => "MyString",
      :user => nil
    ))
  end

  it "renders new timelog form" do
    render

    assert_select "form[action=?][method=?]", timelogs_path, "post" do

      assert_select "input[name=?]", "timelog[log_type]"

      assert_select "input[name=?]", "timelog[user_id]"
    end
  end
end
