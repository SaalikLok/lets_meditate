require "rspec"
require "lets_meditate/timer"

describe Timer do
  describe "#countdown" do
    context "for 30 seconds" do
      timer = Timer.new(0.5)
      start_time = Time.now

      it "waits the given number of seconds (30)" do
        timer.countdown
        expect(Time.now).to eq start_time + 30
      end

      it "calls #play_sound" do
        expect(timer.countdown).to receive(:play_sound)
      end
    end
  end
end
