describe TweetSearch do
  context 'performs search' do
    it 'returns tweets if a valid search query is passed' do
      expect(TweetSearch.new('hello').search.first['text']).not_to be_nil
    end

    it 'returns nil if a invalid search query is passed' do
      expect(TweetSearch.new('-``.').search).to be_nil
    end
  end
end
