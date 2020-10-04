module PageObjects
  module Provider
    class New < SitePrism::Page
      element :name, "input#provider-name-field"
      element :address_1, "input#provider-address-1-field"
      element :address_2, "input#provider-address-2-field"
      element :address_3, "input#provider-address-3-field"
      element :postcode, "input#provider-postcode-field"
      element :submit_button, "input.govuk-button"
    end
  end
end
