require "rails_helper"

describe Trainee do
  describe "#newest_first" do
    let(:first) { create(:trainee, created_at: 1.minute.ago) }
    let(:second) { create(:trainee, created_at: 1.day.ago) }
    let(:third) { create(:trainee, created_at: 1.week.ago) }

    before do
      third
      second
      first
    end

    subject { described_class.newest_first }

    it { is_expected.to contain_exactly(first, second, third) }
  end
end
