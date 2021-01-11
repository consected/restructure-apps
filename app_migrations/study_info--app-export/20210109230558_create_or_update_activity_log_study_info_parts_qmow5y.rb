require 'active_record/migration/app_generator'
class CreateOrUpdateActivityLogStudyInfoPartsQmow5y < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.belongs_to_model = 'study_info_part'
    self.schema = 'study_info'
    self.table_name = 'activity_log_study_info_parts'
    self.fields = %i[title description default_layout slug tag_select_allow_roles_access footer disabled position_number extra_classes notes]
    self.table_comment = 'Activitylog: Study Info Page'
    self.fields_comments = {}
    self.no_master_association = false

    
    create_or_update_activity_log_tables
    create_activity_log_trigger
  end
end
