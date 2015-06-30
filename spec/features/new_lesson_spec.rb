require 'rails_helper'

describe "adding lessons" do
  chapter = Chapter.create({ :name => 'chapter1'})
  section = chapter.sections.create({ :name => 'test'})

  # it "adds a new lesson" do
  #   visit chapters_path
  #   within("div") do
  #     click_on 'Add Lesson'
  #   end
  #   fill_in 'Name', :with => 'Ruby'
  #   fill_in 'Text', :with => 'lorem ipsum'
  #   fill_in 'Number', :with => '1'
  #   click_on 'Create Lesson'
  #   expect(page).to have_content 'Ruby'
  # end
  #
  # it "gives error when no name is entered" do
  #   visit new_chapter_section_lesson_path(chapter, section)
  #   click_on 'Create Lesson'
  #   expect(page).to have_content 'errors'
  # end
end
