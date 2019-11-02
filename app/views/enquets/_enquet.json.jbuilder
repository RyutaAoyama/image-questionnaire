# frozen_string_literal: true

json.extract! enquet, :id, :created_at, :updated_at
json.url enquet_url(enquet, format: :json)
