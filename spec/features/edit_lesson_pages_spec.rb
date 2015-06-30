require 'rails_helper'

describe "the edit a lesson process" do
  it "edits a lesson" do
    lesson = Lesson.create(:name => 'Popping off', :content => 'hella bad')
    visit lesson_path(lesson)
    click_on 'Edit'
    fill_in 'Name', :with => 'Breaking in'
    click_on 'Update Lesson'
    expect(page).to have_content 'Breaking'
  end
end
