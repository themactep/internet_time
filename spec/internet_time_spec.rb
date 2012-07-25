require 'spec_helper'

describe Time do
  describe "#internet" do
    context "outside DST" do
      context "for a fixed time in" do
        context "CET" do
          subject { Time.parse "Fri Nov 30 12:00:00 +0100 2012" }

          its(:beats) { should be 500 }
          its(:to_beats) { should eq "@500" }
        end

        context "UTC" do
          subject { Time.parse "Fri Nov 30 11:00:00 UTC 2012" }

          its(:beats) { should be 500 }
          its(:to_beats) { should eq "@500" }
        end

        context "another timezone" do
          subject { Time.parse "Fri Nov 30 06:00:00 EST 2001" }

          its(:beats) { should be 500 }
          its(:to_beats) { should eq "@500" }
        end
      end
    end

    context "during DST" do
      context "for a fixed time in" do
        context "CET" do
          subject { Time.parse "Tue Jul 24 12:00:00 +0100 2012" }

          its(:beats) { should be 500 }
          its(:to_beats) { should eq "@500" }
        end

        context "UTC" do
          subject { Time.parse "Tue Jul 24 11:00:00 UTC 2012" }

          its(:beats) { should be 500 }
          its(:to_beats) { should eq "@500" }
        end

        context "another timezone" do
          subject { Time.parse "Tue Jul 24 06:00:00 EST 2012" }

          its(:beats) { should be 500 }
          its(:to_beats) { should eq "@500" }
        end
      end
    end
  end
end
