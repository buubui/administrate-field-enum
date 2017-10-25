require 'administrate/field/base'
require 'rails'

module Administrate
  module Field
    class Enum < Administrate::Field::Base
      def to_s
        data.humanize unless data.nil?
      end

      def include_blank
        options.fetch(:include_blank, false)
      end

      def as_radio
        options.fetch(:as_radio, false)
      end

      class Engine < ::Rails::Engine
      end
    end
  end
end
