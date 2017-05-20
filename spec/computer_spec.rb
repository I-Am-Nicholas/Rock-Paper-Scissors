require './app/models/computer'

describe Computer do

  it 'returns one element of the array' do
    expect(Computer.new.selection).to be_an_instance_of(Symbol)
  end

end
