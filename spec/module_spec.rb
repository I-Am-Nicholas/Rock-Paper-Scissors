describe RPSHelpers do
  subject { Class.new.include(described_class).new }

  it 'returns array element as a symbol' do
    allow(subject).to receive(:tools) {['a']}
    expect(subject.player_choice).to equal(:a)
  end

  it 'can accept a message from tools()' do
    expect(subject).to respond_to{:tools}
  end

  it 'instantiates a new instance of game' do
    expect(subject.new_game).to be_an_instance_of(Game)
  end
end
