require 'post_repository'

RSpec.describe PostRepository do
    it "returns an array of posts with a specific tag" do
        post_repository = PostRepository.new 
        posts = post_repository.find_by_tag('coding')
        expect(posts[0].id).to eq '1'
        expect(posts[2].id).to eq '3'
        expect(posts[0].title).to eq 'How to use Git'
        expect(posts[1].title).to eq 'Ruby classes'
    end
end