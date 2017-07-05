module Inthebag::Cell
  class FormError < Inthebag::Cell::Master

    def field error
      error.to_s.split(".").last.humanize
    end

    def error_message message
      return t(message) if message.instance_of? Symbol

      if message.is_a?(String)
        message.gsub!(" ", "_")
        message.downcase!
      end

      t(message.split(".").last.to_sym)
    end

  end
end