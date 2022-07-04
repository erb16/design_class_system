require "entry"

RSpec.describe Entry do

  describe "#new_entry" do
    context "when a new entry has been added" do
      it "returns entry" do
        entry = Entry.new("new diary entry")
        expect(entry.new_entry).to eq "new diary entry"
      end
    end
  end



end
