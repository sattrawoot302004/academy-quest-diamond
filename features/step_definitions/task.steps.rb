DELETE_BUTTON_MAPPING = {
  "lerning ruby" => "delete-task-button-1",
  "todolist" => "delete-task-button-2",
  "write rspec" => "delete-task-button-3",
  "deploy" => "delete-task-button-4"
}

CHECKBOX_MAPPING = {
  "lerning ruby" => "complete-checkbox-1",
  "todolist" => "complete-checkbox-2",
  "write rspec" => "complete-checkbox-3",
  "deploy" => "complete-checkbox-4"
}

TITLE_MAPPPING = {
   "lerning ruby" => "task-title-1",
  "todolist" => "task-title-2",
  "write rspec" => "task-title-3",
  "deploy" => "task-title-4"
}

Given("I should at todo list page") do
  visit root_path
  expect(page).to have_current_path(root_path)
end

When("I fill text {string}") do |value|
 find('[data-testid="task-title-input"]').set(value)
end

When("I click create button") do
  find('[data-testid="create-task-button"]').click
end

Then("I shoud see {string} content") do |content|
   expect(page).to have_content(content)
end

Given("website contain all necessary data") do
  Rails.application.load_seed
end

When("I click delete {string} button") do |text|
find("[data-testid='#{DELETE_BUTTON_MAPPING[text]}']").click
end

Then("I shoud don't see {string} content") do |content|
  expect(page).not_to have_content(content)
end

When("I click check {string} box") do |text|
  find("[data-testid='#{CHECKBOX_MAPPING[text]}']").click
  sleep 0.1
end

Then("I shoud see title checked {string} content") do |text|
  expect(page).to have_css("[data-testid='#{TITLE_MAPPPING[text]}'].line-through")
end

When("I shoud see content {string}") do |content|
   expect(page).to have_content(content)
end
