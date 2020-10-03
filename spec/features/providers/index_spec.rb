require "rails_helper"

feature "list providers" do
  scenario "visit the provider list page" do
    given_providers_exist
    when_i_visit_the_provider_index_page
    then_the_providers_are_listed
  end

  def given_providers_exist
    provider_one
    provider_two
  end

  def when_i_visit_the_provider_index_page
    provider_index_page.load
  end

  def then_the_providers_are_listed
    expect(provider_index_page).to have_providers(count: 2)
  end

  def provider_index_page
    @provider_index_page ||= PageObjects::Provider::Index.new
  end

  def provider_one
    @provider_one ||= create(:provider)
  end

  def provider_two
    @provider_two ||= create(:provider)
  end
end
