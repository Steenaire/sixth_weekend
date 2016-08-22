# Create a thesaurus application. To create it, you will create two classes, Thesaurus and Entry.
# A Thesaurus will contain many Entries. An Entry contains three primary attributes:
# word, synonymns, and antonyms. Your application should contain the following features:
# 1. The ability to add new words to a Thesaurus.
# 2. The ability to delete a word from a Thesaurus. 
# 3. The ability to look up a word's synonyms.
# 4. The ability to look up a word's antonyms.
# 5. The ability to add a synonym to a word.
# 6. The ability to add an antonym to a word.
#
# Part of the challenge is to determine which functionality belongs in the Thesaurus class,
# and which belongs in the Entry class.
#
# And... test your functionality using RSpec!
require 'rspec'

class Thesaurus

  attr_accessor :entries

  def initialize
    @entries = []
  end

  def add_entry(entry)
    @entries << entry
  end

  def delete_entry(entry)
    @entries -= [entry]
  end

end

class Entry

  attr_reader :word, :definition
  attr_accessor :synonyms, :antonyms

  def initialize(entry_info)
    @word = entry_info[:word]
    @definition = entry_info[:definition]
    @synonyms = entry_info[:synonyms]
    @antonyms = entry_info[:antonyms]
  end

  def add_synonym(synonym)
    @synonyms << synonym
  end

  def add_antonym(antonym)
    @antonyms << antonym
  end

end

RSpec.describe Thesaurus do

  describe '#calculate_change' do

    it 'should return any entries that have been added' do
      thesaurus = Thesaurus.new
      entry1 = Entry.new({word: "jump", definition: "Push oneself off a surface and into the air by using the muscles in one's legs and feet", synonyms: ["leap","spring","vault","hop"], antonyms: []})
      thesaurus.add_entry(entry1)
      thesaurus.entries.first.add_synonym("bound")
      entry2 = Entry.new({word: "release", definition: "Allow or enable to escape from confinement; set free", synonyms: ["free","liberate"], antonyms: ["capture","confine","imprison"]})
      thesaurus.add_entry(entry2)
      expect(thesaurus.entries).to eq([entry1,entry2])
    end

    it 'should not return any entries that have been deleted' do
      thesaurus = Thesaurus.new
      entry1 = Entry.new({word: "jump", definition: "Push oneself off a surface and into the air by using the muscles in one's legs and feet", synonyms: ["leap","spring","vault","hop"], antonyms: []})
      thesaurus.add_entry(entry1)
      thesaurus.entries.first.add_synonym("bound")
      entry2 = Entry.new({word: "release", definition: "Allow or enable to escape from confinement; set free", synonyms: ["free","liberate"], antonyms: ["capture","confine","imprison"]})
      thesaurus.add_entry(entry2)
      thesaurus.delete_entry(entry1)
      expect(thesaurus.entries).to eq([entry2])
    end

    it 'should display all synonyms which have been added' do
      thesaurus = Thesaurus.new
      entry1 = Entry.new({word: "jump", definition: "Push oneself off a surface and into the air by using the muscles in one's legs and feet", synonyms: ["leap","spring","vault","hop"], antonyms: []})
      thesaurus.add_entry(entry1)
      thesaurus.entries.first.add_synonym("bound")
      expect(thesaurus.entries.first.synonyms).to eq(["leap","spring","vault","hop","bound"])
    end

    it 'should display all antonyms which have been added' do
      thesaurus = Thesaurus.new
      entry = Entry.new({word: "release", definition: "Allow or enable to escape from confinement; set free", synonyms: ["free","liberate"], antonyms: ["capture","confine"]})
      thesaurus.add_entry(entry)
      thesaurus.entries.first.add_antonym("imprison")
      expect(thesaurus.entries.first.antonyms).to eq(["capture","confine","imprison"])
    end

  end
end