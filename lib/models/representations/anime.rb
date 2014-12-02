require 'representable/json'

module Representations
  class Anime < Representable::Decorator
    include Representable::JSON

    property :slug
  end
end
