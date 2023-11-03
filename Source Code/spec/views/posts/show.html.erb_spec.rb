require 'rails_helper'

RSpec.describe "posts/show", type: :view do
  before(:each) do
    assign(:post, Post.create!(
      headline: "Headline",
      content: "MyText",
      topic: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Headline/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end