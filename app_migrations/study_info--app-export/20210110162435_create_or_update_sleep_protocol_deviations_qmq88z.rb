require 'active_record/migration/app_generator'
class CreateOrUpdateSleepProtocolDeviationsQmq88z < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'study_info'
    self.table_name = 'sleep_protocol_deviations'
    self.fields = %i[deviation_occurred_when deviation_discovered_when select_severity deviation_description corrective_action_description]
    self.table_comment = 'Dynamicmodel: Protocol Deviation'
    self.fields_comments = {"deviation_occurred_when":"Date event occurred","deviation_discovered_when":"Date event was discovered","select_severity":"Select severity of the event","deviation_description":"Describe in detail the event that occurred. If necessary, upload additional files after saving this form.","corrective_action_description":"Describe in detail any corrective action taken. If necessary, upload additional files after saving this form."}
    self.no_master_association = false


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
