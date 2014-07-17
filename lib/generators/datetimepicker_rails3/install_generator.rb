require 'securerandom'

module DatetimepickerRails
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates3/inputs", __FILE__)

      desc "Creates the Simple form custom fields definition for date, datetime and time pickers."

      def copy_datetime_picker
        template "datetime_picker_input.rb", "app/inputs/datetime_picker_input.rb" unless
            File.exist?('app/inputs/datetime_picker_input.rb')
      end

      def copy_date_picker
        template "date_picker_input.rb", "app/inputs/date_picker_input.rb" unless
            File.exist?('app/inputs/date_picker_input.rb')
      end

      def copy_time_picker
        template "time_picker_input.rb", "app/inputs/time_picker_input.rb" unless
            File.exist?('app/inputs/time_picker_input.rb')
      end
    end
  end
end