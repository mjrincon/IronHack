require_relative("../lib/task.rb")

RSpec.describe Task do
	before :each do

	 @task = Task.new("wash my dog")
	end
		it "make a task incomplete" do

				expect(@task.make_incomplete!).to eq(false)
	end
end