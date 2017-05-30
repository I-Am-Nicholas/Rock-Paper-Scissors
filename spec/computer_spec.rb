require './app/models/computer'

describe Computer do

  it 'returns one element from the arsenal' do
    expect(Computer.selection).to be_an_instance_of(Symbol)
  end

  it 'returns the entire arsenal' do
    expect(Computer.arsenal).to be_an_instance_of(Array)
  end

end
