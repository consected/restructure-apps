require 'active_record/migration/app_generator'
class CreateOrUpdateSleepAssignmentsQmow5u < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'study_info'
    self.table_name = 'sleep_assignments'
    self.fields = %i[sleep_id]
    self.table_comment = 'Externalidentifier: Sleep Assignments'
    self.fields_comments = {}
    self.no_master_association = false


    create_or_update_external_identifier_tables :sleep_id, :bigint
    create_external_identifier_trigger :sleep_id
  end
end
