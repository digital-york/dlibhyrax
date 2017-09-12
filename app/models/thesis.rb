# Generated via
#  `rails generate hyrax:work Thesis`
class Thesis < Dlibhydra::Thesis
  include ::Hyrax::WorkBehavior

  self.indexer = ThesisIndexer
  # Change this to restrict which works can be added as a child.
  # self.valid_child_concerns = []
  validates :title, presence: { message: 'Your thesis must have a title.' }

  self.human_readable_type = 'Thesis'

  class ThesisIndexer < Hyrax::WorkIndexer
    include Dlibhydra::IndexesThesis
  end

  def self.indexer
    ThesisIndexer
  end

  # This must be included at the end, because it finalizes the metadata
  # schema (by adding accepts_nested_attributes)
  include ::Hyrax::BasicMetadata
end
