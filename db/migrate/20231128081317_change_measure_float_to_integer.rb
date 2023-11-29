class ChangeMeasureFloatToInteger < ActiveRecord::Migration[7.0]
      def up
        change_column :air_quality_measurements, :measure_float, :integer
      end

      def down
        change_column :air_quality_measurements, :measure_float, :float
      end

end
