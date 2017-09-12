# Generated via
#  `rails generate hyrax:work Thesis`
module Hyrax
  class ThesisForm < Hyrax::Forms::WorkForm
    self.model_class = ::Thesis
    self.terms += [:resource_type]
  end
end
