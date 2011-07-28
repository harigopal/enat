require "rspec"

require_relative '../lib/enat'

class DummyClass
  include Enat
end

describe DummyClass do
  it { should respond_to(:every).with(1).argument }

  context "when supplied interval is zero" do
    it "should raise error" do
      expect {
        subject.every("foo") { }
      }.to raise_error(Enat::EnatError, "Interval must be non-zero")
    end
  end
end