require 'rails_helper'

RSpec.describe SponsoredPost, type: :model do
  let(:topic) { Topic.create!(name: name, description: description) }
  let(:sponsored_post) { topic.sponsored_posts.create!(title: title, body: body) }

  it { is_expected.to belong_to(:topic) }

  describe "attributes" do
    it "has title and body attributes" do
      expect(sponsored_post).to have_attributes(title: sponsored_post.title, body: sponsored_post.body)
    end
  end
end
