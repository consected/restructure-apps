require 'active_record/migration/app_generator'
class CreateOrUpdateFemAddressesQmj7oi < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'fem'
    self.table_name = 'fem_addresses'
    self.fields = %i[country street street2 street3 city state zip postal_code region source rank rec_type tracker_history_id]
    self.table_comment = 'Dynamicmodel: Address'
    self.fields_comments = {}
    self.no_master_association = false


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
