require 'rails_helper'

describe "adding lessons" do
  it "adds a new lesson" do
    visit lessons_path
    click_on 'New Lesson'
    fill_in 'Name', :with => 'Ruby'
    fill_in 'Text', :with => 'lorem ipsum'
    click_on 'Create Lesson'
    expect(page).to have_content 'Ruby'
  end

  # it "gives error when no name is entered" do
  #   visit new_lesson_path
  #   click_on 'Create Lesson'
  #   expect(page).to have_content 'errors'
  # end
end
