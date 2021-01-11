require 'active_record/migration/app_generator'
class CreateOrUpdateBwhSleepIdNumbersQmow5w < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'study_info'
    self.table_name = 'bwh_sleep_id_numbers'
    self.fields = %i[bwh_sleep_id]
    self.table_comment = 'Externalidentifier: Bwh Sleep Id Numbers'
    self.fields_comments = {}
    self.no_master_association = false


    create_or_update_external_identifier_tables :bwh_sleep_id, :bigint
    create_external_identifier_trigger :bwh_sleep_id
  end
end
