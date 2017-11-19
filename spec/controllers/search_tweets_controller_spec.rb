describe SearchTweetsController, type: :controller do
  context 'performs search' do
    context 'with `q` parameter present' do
      it 'assigns the @results with tweets if the `q` is valid' do
        get(:index, {q: 'hello'})
        expect(assigns(:results).first['text']).not_to be_nil
      end

      it 'assigns the @results with nil if the `q` is valid' do
        get(:index, {q: '-``.'})
        expect(assigns(:results)).to be_nil
      end
    end

    context 'with `q` parameter blank / invalid' do
      it 'assigns the @results with `[]` if the `q` is invalid' do
        get(:index)
        expect(assigns(:results)).to eq([])
      end
    end
  end
end
