module Xray
  module ApplicationHelper
    def display(value)
      if value.nil?
        "NULL"
      elsif value.is_a? Date
        value.strftime("%l:%M %P").strip
      elsif value.is_a?(Time)
        value.localtime.strftime("%l:%M:%S %P")
      elsif value.is_a?(DateTime) || value.is_a?(ActiveSupport::TimeWithZone)
        value.strftime("%D ") + value.localtime.strftime("%l:%M:%S %P").strip
      else
        value.to_s[0..20]
      end
    end
  end
end
