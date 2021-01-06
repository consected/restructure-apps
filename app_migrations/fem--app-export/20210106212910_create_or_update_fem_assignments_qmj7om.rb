require 'active_record/migration/app_generator'
class CreateOrUpdateFemAssignmentsQmj7om < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'fem'
    self.table_name = 'fem_assignments'
    self.fields = %i[fem_id]
    self.table_comment = 'Externalidentifier: Fem Assignments'
    self.fields_comments = {}
    self.no_master_association = false


    create_or_update_external_identifier_tables :fem_id, :bigint
    create_external_identifier_trigger :fem_id
  end
end
