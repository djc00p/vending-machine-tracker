require "rails_helper"

RSpec.describe 'All snacks in the machine' do
  describe "as a visitor" do
    it "should see all available snacks in the machine" do
      owner_1 = Owner.create(name: "James")
      owner_2 = Owner.create(name: "James")
      machine_1 = owner_1.machines.create(location: "some place")
      machine_2 = owner_2.machines.create(location: "new place")
      machine_3 = owner_1.machines.create(location: "everywhere")
      machine_4 = owner_2.machines.create(location: "nowhere")

      visit machine_path(machine)

      expect(current_path).to  eq(machine_path(machine))

      expect(page).to have_content()
    end
  end
end
