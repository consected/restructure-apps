require 'active_record/migration/app_generator'
class CreateOrUpdatePartnerSleepIdNumbersQmow87 < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'study_info'
    self.table_name = 'partner_sleep_id_numbers'
    self.fields = %i[partner_sleep_id]
    self.table_comment = 'Externalidentifier: Partner Sleep Id Numbers'
    self.fields_comments = {}
    self.no_master_association = false


    create_or_update_external_identifier_tables :partner_sleep_id, :bigint
    create_external_identifier_trigger :partner_sleep_id
  end
end
