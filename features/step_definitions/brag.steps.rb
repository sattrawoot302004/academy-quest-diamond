When("I click button brag document") do
  find("[data-testid='brags-link']").click
end

Then("I should visit in brag page") do
 expect(page).to have_current_path(brags_path)
end
