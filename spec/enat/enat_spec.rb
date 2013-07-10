require_relative '../spec_helper'

class DummyClass
  include Enat

  def test_method
    every 1.second do |i|
      break if i >= 5
      repeatable_task
    end
  end

  def repeatable_task
  end
end

describe DummyClass do
  it { should respond_to(:every).with(1).argument }

  context 'when supplied interval cannot be converted to a Float value' do
    it 'raises an error' do
      expect {
        subject.every(Object.new) {}
      }.to raise_error(Enat::InvalidIntervalError)
    end
  end

  context 'when supplied interval is zero' do
    it 'raises an error' do
      expect {
        subject.every('foo') {}
      }.to raise_error(Enat::ZeroIntervalError)
    end
  end

  it 'works' do
    subject.stub :sleep
    subject.should_receive(:repeatable_task).exactly(5).times
    subject.test_method
  end
end