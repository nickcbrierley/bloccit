require 'rails_helper'

RSpec.describe Sponsoredpost, type: :model do
  let(:topic) { Topic.create!(name: RandomData.random_sentence, description: RandomData.random_paragraph) }
  let(:sponsoredpost) { topic.sponsoredposts.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph, price: 100) }

  it { should belong_to(:topic) }

  context "attributes" do

    it "should respond to title" do
      expect(sponsoredpost).to respond_to(:title)
    end

    it "should respond to body" do
      expect(sponsoredpost).to respond_to(:body)
    end

    it "should respond to price" do
      expect(sponsoredpost).to respond_to(:price)
    end
  end
end
