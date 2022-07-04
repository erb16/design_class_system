require "entry"
require "diary"
require "diary_phonebook"
require "diary_todo_list"
require "diary_todo"

RSpec.describe "integration" do
  context "after adding some entries" do
    it "lists out the entries added" do
    diary = Diary.new
    entry = Entry.new("new entry")
    diary.add(entry)
    expect(diary.all).to eq [entry]
    end
  end

  context "after adding some entries" do
    it "lists out the phone numbers in the entries added" do
    diary = Diary.new
    phonebook = PhoneBook.new
    entry = Entry.new("new entry 07770000000")
    phonebook.extract_numbers(entry.new_entry)
    diary.add(entry)
    expect(diary.numbers).to eq "07770000000"
    end
  end
end
