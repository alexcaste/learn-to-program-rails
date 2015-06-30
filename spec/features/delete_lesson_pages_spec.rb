require 'rails_helper'

describe "the delete a lesson process" do
  it "deletes a lesson" do
    lesson = Lesson.create(:name => 'dogging it', :content => 'Poop')
    visit lesson_path(lesson)
    click_on 'Delete'
    expect(page).to have_content 'Lessons'
  end
end
