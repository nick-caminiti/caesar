require './caesar'

describe '#caesar_cipher' do
  it 'returns the correct letter at a shift of 1' do
    expect(caesar_cipher('a', 1)).to eql('b')
  end

  it 'returns the correct letter at a shift of 5' do
    expect(caesar_cipher('a', 5)).to eql('f')
  end
  
  it 'returns the correct letter at a shift of 1 when wrapping alphabet' do
    expect(caesar_cipher('z',1)).to eql('a')
  end

  it 'returns the correct letter at a shift of 1 when uppercase' do
    expect(caesar_cipher('A', 1)).to eql('B')
  end

  it 'returns the correct letter at a shift of 1 when uppercase and wrapping' do
    expect(caesar_cipher('Z', 1)).to eql('A')
  end
  
  it 'returns the correct letter with a negative shift' do
    expect(caesar_cipher('b', -1)).to eql('a')
  end
end