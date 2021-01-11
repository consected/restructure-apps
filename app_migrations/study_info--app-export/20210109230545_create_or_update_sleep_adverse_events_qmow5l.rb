require 'active_record/migration/app_generator'
class CreateOrUpdateSleepAdverseEventsQmow5l < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'study_info'
    self.table_name = 'sleep_adverse_events'
    self.fields = %i[select_problem_type event_occurred_when event_discovered_when event_description corrective_action_description select_expectedness select_severity select_relatedness select_location]
    self.table_comment = 'Dynamicmodel: Adverse Event'
    self.fields_comments = {"select_problem_type":"Select type of event:\n\u003cb\u003eadverse event\u003c/b\u003e - caused potential harm to subject \u003cspan class=\"glyphicon glyphicon-question-sign\" data-toggle=\"popover\" data-trigger=\"click hover\" data-content=\"Adverse event means any untoward or unfavorable medical occurrence in a human subject, including any abnormal sign (for example, abnormal physical exam or laboratory finding), symptom, or disease, temporally associated with the subject’s participation in the research, whether or not considered related to the subject’s participation in the research (modified from the definition of adverse events in the 1996 International Conference on Harmonization E-6 Guidelines for Good Clinical Practice).\" data-original-title=\"\" title=\"\"\u003e\u003c/span\u003e\n\u003cb\u003eother event\u003c/b\u003e - other unanticipated problem that may increase risk of harm","event_occurred_when":"Date event occurred","event_discovered_when":"Date event was discovered","select_expectedness":"Was this event expected? If unsure, leave blank.\nAn event may be considered to be \u003cb\u003eexpected\u003c/b\u003e if it is described in the consent forms.","select_severity":"Select severity of the event","select_location":"Select where the event was experienced.\n\u003cb\u003einternal\u003c/b\u003e - sites that are relying on ReStructure IRB for review of research\n\u003cb\u003eexternal\u003c/b\u003e - sites not relying on ReStructure IRB for review of research","select_relatedness":"Select whether the event is related to the assessment\n\u003cb\u003erelated\u003c/b\u003e - the event highly likely to be related to participation\n\u003cb\u003epossibly related\u003c/b\u003e - the event is more likely than not related to participation\n\u003cb\u003eunrelated\u003c/b\u003e - the event is highly unlikely to be related to participation","event_description":"Describe in detail the event that occurred. If necessary, upload additional files after saving this form.","corrective_action_description":"Describe in detail any corrective action taken. If necessary, upload additional files after saving this form."}
    self.no_master_association = false


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
