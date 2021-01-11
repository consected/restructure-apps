require 'active_record/migration/app_generator'
class CreateOrUpdateSleepProtocolExceptionsQmow7w < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'study_info'
    self.table_name = 'sleep_protocol_exceptions'
    self.fields = %i[exception_date exception_description risks_and_benefits_notes informed_consent_notes]
    self.table_comment = 'Dynamicmodel: Protocol Exception'
    self.fields_comments = {"exception_date":"Date of exception","exception_description":"Briefly describe the protocol exception","risks_and_benefits_notes":"\u003cb\u003eRisks and potential benefits\u003c/b\u003e\nWhat, if any, impact does the exception to the protocol have on the risks and potential benefits to the subject?","informed_consent_notes":"\u003cb\u003eInformed consent\u003c/b\u003e\nDescribe briefly what subject(s) will be told about the exception to the protocol and the impact of the exception on risks and potential benefits"}
    self.no_master_association = false


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
