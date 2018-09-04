require 'rails_helper'

RSpec.describe "universities/index", type: :view do
  before(:each) do
    assign(:universities, [
      University.create!(
        :name => "Name"
      ),
      University.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of universities" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
