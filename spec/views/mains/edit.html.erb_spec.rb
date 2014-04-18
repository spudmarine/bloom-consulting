require 'spec_helper'

describe "mains/edit" do
  before(:each) do
    @main = assign(:main, stub_model(Main,
      :hero_image => "MyString",
      :hero_title => "MyString",
      :stratum_1_image => "MyString",
      :stratum_1_title => "MyString",
      :stratum_1_copy => "MyText",
      :stratum_1_cta => "MyString",
      :stratum_1_link => "MyString",
      :practice_area_1_image => "MyString",
      :practice_area_1_title => "MyString",
      :practice_area_1_copy => "MyText",
      :practice_area_1_link => "MyString",
      :practice_area_2_image => "MyString",
      :practice_area_2_title => "MyString",
      :practice_area_2_copy => "MyText",
      :practice_area_2_link => "MyString",
      :practice_area_3_image => "MyString",
      :practice_area_3_title => "MyString",
      :practice_area_3_copy => "MyText",
      :practice_area_3_link => "MyString",
      :stratum_2_image => "MyString",
      :stratum_2_title => "MyString",
      :stratum_2_copy => "MyText",
      :stratum_2_cta => "MyString",
      :stratum_2_link => "MyString"
    ))
  end

  it "renders the edit main form" do
    render

    assert_select "form[action=?][method=?]", main_path(@main), "post" do
      assert_select "input#main_hero_image[name=?]", "main[hero_image]"
      assert_select "input#main_hero_title[name=?]", "main[hero_title]"
      assert_select "input#main_stratum_1_image[name=?]", "main[stratum_1_image]"
      assert_select "input#main_stratum_1_title[name=?]", "main[stratum_1_title]"
      assert_select "textarea#main_stratum_1_copy[name=?]", "main[stratum_1_copy]"
      assert_select "input#main_stratum_1_cta[name=?]", "main[stratum_1_cta]"
      assert_select "input#main_stratum_1_link[name=?]", "main[stratum_1_link]"
      assert_select "input#main_practice_area_1_image[name=?]", "main[practice_area_1_image]"
      assert_select "input#main_practice_area_1_title[name=?]", "main[practice_area_1_title]"
      assert_select "textarea#main_practice_area_1_copy[name=?]", "main[practice_area_1_copy]"
      assert_select "input#main_practice_area_1_link[name=?]", "main[practice_area_1_link]"
      assert_select "input#main_practice_area_2_image[name=?]", "main[practice_area_2_image]"
      assert_select "input#main_practice_area_2_title[name=?]", "main[practice_area_2_title]"
      assert_select "textarea#main_practice_area_2_copy[name=?]", "main[practice_area_2_copy]"
      assert_select "input#main_practice_area_2_link[name=?]", "main[practice_area_2_link]"
      assert_select "input#main_practice_area_3_image[name=?]", "main[practice_area_3_image]"
      assert_select "input#main_practice_area_3_title[name=?]", "main[practice_area_3_title]"
      assert_select "textarea#main_practice_area_3_copy[name=?]", "main[practice_area_3_copy]"
      assert_select "input#main_practice_area_3_link[name=?]", "main[practice_area_3_link]"
      assert_select "input#main_stratum_2_image[name=?]", "main[stratum_2_image]"
      assert_select "input#main_stratum_2_title[name=?]", "main[stratum_2_title]"
      assert_select "textarea#main_stratum_2_copy[name=?]", "main[stratum_2_copy]"
      assert_select "input#main_stratum_2_cta[name=?]", "main[stratum_2_cta]"
      assert_select "input#main_stratum_2_link[name=?]", "main[stratum_2_link]"
    end
  end
end
