module Xray
  class XrayController < ApplicationController
    def data
      tables = ActiveRecord::Base.connection.tables - ['schema_migrations']
      @models = tables.map { |t| t.classify.constantize }
    end
  end
end
