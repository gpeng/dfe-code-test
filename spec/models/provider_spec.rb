require "rails_helper"

describe Provider do
  describe "validations" do
    before do
      subject.valid?
    end

    context "name is provided" do
      subject { build(:provider, name: "Big School") }
      it { is_expected.to be_valid }
    end

    context "name is not provided" do
      it "is invalid" do
        expect_presence_validation_of(:name, "You must provide a name")
      end
    end

    context "address_1 is provided" do
      subject { build(:provider, address_1: "Address Line 1") }
      it { is_expected.to be_valid }
    end

    context "address_1 is not provided" do
      it "is invalid" do
        expect_presence_validation_of(:address_1, "You must provide the first address line")
      end
    end


    context "postcode is provided" do
      subject { build(:provider, postcode: "L1 1AA") }
      it { is_expected.to be_valid }
    end

    context "postcode is not provided" do
      it "is invalid" do
        expect_presence_validation_of(:postcode, "You must provide a postcode")
      end
    end

    def expect_presence_validation_of(field_name, failure_message)
      expect(subject.errors[field_name.to_sym])
        .to include(failure_message)
    end
  end
end
