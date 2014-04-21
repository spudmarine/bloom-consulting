require 'spec_helper'

describe "practiceareas/show" do
  before(:each) do
    @practicearea = assign(:practicearea, stub_model(Practicearea,
      :hero_image => "Hero Image",
      :hero_title => "Hero Title",
      :hero_copy => "MyText",
      :pa1_title => "Pa1 Title",
      :pa1_copy => "MyText",
      :pa2_title => "Pa2 Title",
      :pa2_copy => "MyText",
      :pa3_title => "Pa3 Title",
      :pa3_copy => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Hero Image/)
    expect(rendered).to match(/Hero Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Pa1 Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Pa2 Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Pa3 Title/)
    expect(rendered).to match(/MyText/)
  end
end
