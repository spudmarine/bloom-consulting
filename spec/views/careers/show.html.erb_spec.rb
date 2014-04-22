require 'spec_helper'

describe "careers/show" do
  before(:each) do
    @career = assign(:career, stub_model(Career,
      :hero_image => "Hero Image",
      :hero_title => "Hero Title",
      :hero_copy => "MyText",
      :intro_title => "Intro Title",
      :intro_title => "MyText",
      :cta_title => "Cta Title",
      :cta_copy => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Hero Image/)
    expect(rendered).to match(/Hero Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Intro Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Cta Title/)
    expect(rendered).to match(/MyText/)
  end
end
