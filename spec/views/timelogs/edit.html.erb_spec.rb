require 'rails_helper'

RSpec.describe "timelogs/edit", type: :view do
  before(:each) do
    @timelog = assign(:timelog, Timelog.create!(
      :log_type => "MyString",
      :user => nil
    ))
  end

  it "renders the edit timelog form" do
    render

    assert_select "form[action=?][method=?]", timelog_path(@timelog), "post" do

      assert_select "input[name=?]", "timelog[log_type]"

      assert_select "input[name=?]", "timelog[user_id]"
    end
  end
end
