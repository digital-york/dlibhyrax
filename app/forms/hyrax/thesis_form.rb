# Generated via
#  `rails generate hyrax:work Thesis`
module Hyrax
  class ThesisForm < Hyrax::Forms::WorkForm
    self.model_class = ::Thesis
    #self.terms += [:resource_type]

    self.terms = []

    self.terms += [:title,
                   :creator,
                   :date_of_award,
                   :department_resource_ids,
                   :advisor_string,
                   :qualification_level,
                   :qualification_name_resource_ids,
                   :abstract,
                   :keyword,
                   :language,
                   :rights_holder,
                   :awarding_institution_resource_ids,
                   :license,
                   :subject_resource_ids]
    self.terms -= [:contributor, :description, :creator_string, :advisor_resource_ids, :rights_statement]

    #self.required_fields = []
    self.required_fields = [:title, :creator, :date_of_award, :department_resource_ids]
  end
end
