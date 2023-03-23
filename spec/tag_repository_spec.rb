require 'tag_repository'

RSpec.describe TagRepository do
    it "returns an array of tags associated with a specific post" do
        tag_repository = TagRepository.new 

        tags = tag_repository.find_by_post(1)
        expect(tags[0].id).to eq'1'
        expect(tags[0].name).to eq'coding'
        
        tags = tag_repository.find_by_post(2)
        expect(tags[0].id).to eq'1'
        expect(tags[0].name).to eq'coding'
        expect(tags[1].id).to eq'4'
        expect(tags[1].name).to eq'ruby'
        
        tags = tag_repository.find_by_post(7)
        expect(tags[0].id).to eq'5'
        expect(tags[0].name).to eq'sql'
    end
end