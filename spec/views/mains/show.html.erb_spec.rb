require 'spec_helper'

describe "mains/show" do
  before(:each) do
    @main = assign(:main, stub_model(Main,
      :hero_image => "Hero Image",
      :hero_title => "Hero Title",
      :stratum_1_image => "Stratum 1 Image",
      :stratum_1_title => "Stratum 1 Title",
      :stratum_1_copy => "MyText",
      :stratum_1_cta => "Stratum 1 Cta",
      :stratum_1_link => "Stratum 1 Link",
      :practice_area_1_image => "Practice Area 1 Image",
      :practice_area_1_title => "Practice Area 1 Title",
      :practice_area_1_copy => "MyText",
      :practice_area_1_link => "Practice Area 1 Link",
      :practice_area_2_image => "Practice Area 2 Image",
      :practice_area_2_title => "Practice Area 2 Title",
      :practice_area_2_copy => "MyText",
      :practice_area_2_link => "Practice Area 2 Link",
      :practice_area_3_image => "Practice Area 3 Image",
      :practice_area_3_title => "Practice Area 3 Title",
      :practice_area_3_copy => "MyText",
      :practice_area_3_link => "Practice Area 3 Link",
      :stratum_2_image => "Stratum 2 Image",
      :stratum_2_title => "Stratum 2 Title",
      :stratum_2_copy => "MyText",
      :stratum_2_cta => "Stratum 2 Cta",
      :stratum_2_link => "Stratum 2 Link"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Hero Image/)
    expect(rendered).to match(/Hero Title/)
    expect(rendered).to match(/Stratum 1 Image/)
    expect(rendered).to match(/Stratum 1 Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Stratum 1 Cta/)
    expect(rendered).to match(/Stratum 1 Link/)
    expect(rendered).to match(/Practice Area 1 Image/)
    expect(rendered).to match(/Practice Area 1 Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Practice Area 1 Link/)
    expect(rendered).to match(/Practice Area 2 Image/)
    expect(rendered).to match(/Practice Area 2 Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Practice Area 2 Link/)
    expect(rendered).to match(/Practice Area 3 Image/)
    expect(rendered).to match(/Practice Area 3 Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Practice Area 3 Link/)
    expect(rendered).to match(/Stratum 2 Image/)
    expect(rendered).to match(/Stratum 2 Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Stratum 2 Cta/)
    expect(rendered).to match(/Stratum 2 Link/)
  end
end
