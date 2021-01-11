require 'active_record/migration/app_generator'
class CreateOrUpdateSleepConsentMailingsQmq9hw < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'sleep'
    self.table_name = 'sleep_consent_mailings'
    self.fields = %i[select_record_from_player_contact_email select_record_from_addresses sent_when]
    self.table_comment = 'Dynamicmodel: Sleep Consent Mailing'
    self.fields_comments = {"sent_when":"When was it sent?"}
    self.no_master_association = false


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
