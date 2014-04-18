require 'spec_helper'

describe "mains/index" do
  before(:each) do
    assign(:mains, [
      stub_model(Main,
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
      ),
      stub_model(Main,
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
      )
    ])
  end

  it "renders a list of mains" do
    render
    assert_select "tr>td", :text => "Hero Image".to_s, :count => 2
    assert_select "tr>td", :text => "Hero Title".to_s, :count => 2
    assert_select "tr>td", :text => "Stratum 1 Image".to_s, :count => 2
    assert_select "tr>td", :text => "Stratum 1 Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Stratum 1 Cta".to_s, :count => 2
    assert_select "tr>td", :text => "Stratum 1 Link".to_s, :count => 2
    assert_select "tr>td", :text => "Practice Area 1 Image".to_s, :count => 2
    assert_select "tr>td", :text => "Practice Area 1 Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Practice Area 1 Link".to_s, :count => 2
    assert_select "tr>td", :text => "Practice Area 2 Image".to_s, :count => 2
    assert_select "tr>td", :text => "Practice Area 2 Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Practice Area 2 Link".to_s, :count => 2
    assert_select "tr>td", :text => "Practice Area 3 Image".to_s, :count => 2
    assert_select "tr>td", :text => "Practice Area 3 Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Practice Area 3 Link".to_s, :count => 2
    assert_select "tr>td", :text => "Stratum 2 Image".to_s, :count => 2
    assert_select "tr>td", :text => "Stratum 2 Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Stratum 2 Cta".to_s, :count => 2
    assert_select "tr>td", :text => "Stratum 2 Link".to_s, :count => 2
  end
end
