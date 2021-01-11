require 'active_record/migration/app_generator'
class CreateOrUpdateSleepAppointmentsQmq9hu < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'sleep'
    self.table_name = 'sleep_appointments'
    self.fields = %i[visit_start_date visit_end_date interventionist select_status notes]
    self.table_comment = 'Dynamicmodel: Sleep Assessment Details'
    self.fields_comments = {"visit_start_date":"Assessment start date","visit_end_date":"Assessment end date","select_status":"Status","notes":"Additional notes","interventionist":"Assigned Interventionist"}
    self.no_master_association = false


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
