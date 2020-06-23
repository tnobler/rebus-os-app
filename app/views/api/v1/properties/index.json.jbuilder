# frozen_string_literal: true

json.array! @properties, partial: 'api/v1/properties/property', as: :property
