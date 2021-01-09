require 'active_record/migration/app_generator'
class CreateOrUpdateStudyInfoPartsQmol6f < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'study_info'
    self.table_name = 'study_info_parts'
    self.fields = %i[study_info_id]
    self.table_comment = 'Externalidentifier: Study Info Parts'
    self.fields_comments = {"study_info_id":"Library Name"}
    self.no_master_association = false


    create_or_update_external_identifier_tables :study_info_id, :string
    create_external_identifier_trigger :study_info_id
  end
end
