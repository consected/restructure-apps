require 'active_record/migration/app_generator'
class CreateOrUpdateStudyPageSectionsQmol6d < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'study_info'
    self.table_name = 'study_page_sections'
    self.fields = %i[title content position_number block_width extra_classes]
    self.table_comment = 'Dynamicmodel: Page Section'
    self.fields_comments = {"title":"Title","content":"Content","position_number":"Position","block_width":"Width","extra_classes":"Extra CSS classes"}
    self.no_master_association = true


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
