require 'active_record/migration/app_generator'
class CreateOrUpdateSleepProtocolDeviationsQmow5m < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'study_info'
    self.table_name = 'sleep_protocol_deviations'
    self.fields = %i[]
    self.table_comment = 'Dynamicmodel: Protocol Deviation'
    self.fields_comments = {}
    self.no_master_association = false


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
