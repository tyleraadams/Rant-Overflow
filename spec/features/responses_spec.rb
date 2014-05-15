require "spec_helper"
describe Response do
  # let!(:rant) { Rant.new(title: "hi", body: "RANTING", responses: [Response.new(body: "comments comments")]) }
  describe "User can view responses of a rant" do
    it "should show comment" do
      rant = Rant.new(title: "hi", body: "RANTING", responses: [Response.new(body: "comments comments")])
      visit rant_path(rant)
      expect(page).to have_content "comments comments"
    end
  end
end
