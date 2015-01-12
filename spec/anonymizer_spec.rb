require 'spec_helper'

describe Anonymizer do
  describe '#anonymize' do
    let(:input) { 'Franz Kafka[a] (3 July 1883 – 3 June 1924) was a German-language writer of novels and short stories, regarded by critics as one of the most influential authors of the 20th century.' }
    let(:output) { Anonymizer.anonymize(input) }

    it 'anonymizes the input' do
      expect(output).to eq '**blocked**[a] (3 July 1883 – 3 June 1924) was a German-language writer of novels and short stories, regarded by critics as one of the most influential authors of the 20th century.'
    end
  end
end
