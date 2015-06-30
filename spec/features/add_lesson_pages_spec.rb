require 'rails_helper'

describe "the add a lesson process" do
  it "adds a new lesson" do
    visit lessons_path
    click_on 'add new lesson'
    fill_in 'Name', :with => 'choosing a stall'
    fill_in 'Content', :with => 'look under the door for feet'
    click_on 'Create Lesson'
    expect(page).to have_content 'Lessons'
  end
end
