require "rails_helper"

RSpec.feature "User can view projects" do
  scenario "with the project details" do
    project = FactoryBot.create(:project, name: "Vidual Studio Code")

    visit "/"
    click_link "Vidual Studio Code"
    expect(page.current_url).to eq project_url(project)
  end
end