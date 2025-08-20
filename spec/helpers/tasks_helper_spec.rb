require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the TasksHelper. For example:
#
# describe TasksHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe TasksHelper, type: :helper do
    describe "#task_complete_class" do
    let(:completed_task) { double("Task", completed: true) }
    let(:incomplete_task) { double("Task", completed: false) }

    it "returns the correct class for completed task" do
      expect(helper.task_complete_class(completed_task)).to eq("line-through text-gray-400")
    end

    it "returns nil for incomplete task" do
      expect(helper.task_complete_class(incomplete_task)).to be_nil
    end
  end
end
