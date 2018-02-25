require 'rails_helper'

RSpec.describe Chapter, type: :model do

  let(:book) { Fabricate(:book) }
  let(:chapter) { Fabricate(:chapter, book: book) }

  it { should belong_to :book }
  it { should have_many :sections }


  it "should have title" do
    chapter.title.should == "Git"
  end

  it "should have book" do
    chapter.book.should == book
  end

  it "should have sections" do
    chapter.sections.any?.should be_truthy
    chapter.sections.count.should == 3
  end

end
