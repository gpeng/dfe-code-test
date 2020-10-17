require "rails_helper"

describe "providers/_provider_row" do
  let(:provider) { create(:provider) }
  let(:trainee) { build(:trainee) }

  before do
    allow(provider).to receive(:newest_trainee).and_return(double(created_at: Time.new(2020, 4, 1)))
    provider.trainees << trainee
    render partial: "providers/provider_row", locals: { provider: provider }
  end

  it "has a trainee count" do
    expect(rendered).to have_content("2")
  end

  it "displays the newest trainee created at" do
    expect(rendered).to have_content("Last trainee added: 01/04/2020")
  end
end
