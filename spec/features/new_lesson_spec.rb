require 'rails_helper'

describe "adding lessons" do
  section = Section.create({ :name => 'test'})

  it "adds a new lesson" do
    visit section_lessons_path(section)
    click_on 'New Lesson'
    fill_in 'Name', :with => 'Ruby'
    fill_in 'Text', :with => 'lorem ipsum'
    fill_in 'Number', :with => '1'
    click_on 'Create Lesson'
    expect(page).to have_content 'Ruby'
  end

  it "gives error when no name is entered" do
    visit new_section_lesson_path(section)
    click_on 'Create Lesson'
    expect(page).to have_content 'errors'
  end
end
