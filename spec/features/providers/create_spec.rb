require "rails_helper"

feature "create provider" do
  scenario "with valid parameters" do
    given_i_am_on_the_provider_index_page
    and_i_click_the_add_provider_button
    and_i_enter_valid_parameters
    when_i_click_the_create_button
    then_i_am_redirected_to_the_provider_index_page
    and_the_new_provider_is_listed
  end

  def given_i_am_on_the_provider_index_page
    provider_index_page.load
  end

  def and_i_click_the_add_provider_button
    provider_index_page.add_provider_button.click
  end

  def and_i_enter_valid_parameters
    provider_new_page.name.set "Bishop Auckland College"
    provider_new_page.address_1.set "Address line 1"
    provider_new_page.address_2.set "Address line 2"
    provider_new_page.address_3.set "Address line 3"
    provider_new_page.postcode.set "L1 1AA"
  end

  def when_i_click_the_create_button
    provider_new_page.submit_button.click
  end

  def then_i_am_redirected_to_the_provider_index_page
    expect(provider_index_page).to be_displayed
  end

  def and_the_new_provider_is_listed
    expect(provider_index_page.providers.last).to have_content("Bishop Auckland College")
  end

  def provider_index_page
    @provider_index_page ||= PageObjects::Provider::Index.new
  end

  def provider_new_page
    @provider_new_page ||= PageObjects::Provider::New.new
  end
end
