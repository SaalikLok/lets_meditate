require "rspec"
require "lets_meditate/timer"

describe Timer do
  describe "#countdown" do
    context "for 30 seconds" do
      let!(:timer) { Timer.new(0.1) }

      it "waits at least the given number of seconds" do
        start_time = Time.now
        timer.countdown

        # testing with 30 seconds here because of an intentional 5 second pause and the bell needs to complete ringing for the method to complete.
        expect(Time.now).to be_within(30).of(start_time)
      end
    end
  end
end
