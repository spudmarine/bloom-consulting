require 'spec_helper'

describe "practiceareas/edit" do
  before(:each) do
    @practicearea = assign(:practicearea, stub_model(Practicearea,
      :hero_image => "MyString",
      :hero_title => "MyString",
      :hero_copy => "MyText",
      :pa1_title => "MyString",
      :pa1_copy => "MyText",
      :pa2_title => "MyString",
      :pa2_copy => "MyText",
      :pa3_title => "MyString",
      :pa3_copy => "MyText"
    ))
  end

  it "renders the edit practicearea form" do
    render

    assert_select "form[action=?][method=?]", practicearea_path(@practicearea), "post" do
      assert_select "input#practicearea_hero_image[name=?]", "practicearea[hero_image]"
      assert_select "input#practicearea_hero_title[name=?]", "practicearea[hero_title]"
      assert_select "textarea#practicearea_hero_copy[name=?]", "practicearea[hero_copy]"
      assert_select "input#practicearea_pa1_title[name=?]", "practicearea[pa1_title]"
      assert_select "textarea#practicearea_pa1_copy[name=?]", "practicearea[pa1_copy]"
      assert_select "input#practicearea_pa2_title[name=?]", "practicearea[pa2_title]"
      assert_select "textarea#practicearea_pa2_copy[name=?]", "practicearea[pa2_copy]"
      assert_select "input#practicearea_pa3_title[name=?]", "practicearea[pa3_title]"
      assert_select "textarea#practicearea_pa3_copy[name=?]", "practicearea[pa3_copy]"
    end
  end
end
