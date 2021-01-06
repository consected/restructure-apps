require 'active_record/migration/app_generator'
class CreateOrUpdateRcFemCifsQmj7ok < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'fem'
    self.table_name = 'rc_fem_cifs'
    self.fields = %i[record_id redcap_survey_identifier fem_contact_info_timestamp first_name last_name email cell_number other_phone_number hear_about___1 hear_about___10 hear_about___11 hear_about___12 hear_about___2 hear_about___3 hear_about___4 hear_about___5 hear_about___6 hear_about___7 hear_about___8 hear_about___9 hear_about_wives_group hear_about_event hear_about_other relationship_to_other___1 relationship_to_other___2 relationship_to_other___3 relationship_to_other___4 relationship_to_other___5 relationship_to_other___6 relationship_to_other___7 relationship_to_other___8 relationship_to_other___9 relationship_to_other___10 relationship_to_other___11 relationship_other comments fem_contact_info_complete]
    self.table_comment = 'Dynamicmodel: Red Cap Cif'
    self.fields_comments = {}
    self.no_master_association = false


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
