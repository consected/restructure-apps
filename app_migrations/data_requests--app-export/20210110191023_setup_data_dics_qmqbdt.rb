require 'active_record/migration/app_generator'
class SetupDataDicsQmqbdt < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change

    execute <<~ENDSQL
      CREATE TABLE data_requests.q1_datadic (
        id serial,
        variable_name character varying,
        domain text,
        field_type_rc text,
        field_type_sa text,
        field_label text,
        field_attributes text,
        field_note text,
        text_valid_type text,
        text_valid_min text,
        text_valid_max text,
        required_field text,
        field_attr_array text[],
        source text,
        owner text,
        classification text,
        display text
      );
      
            
      CREATE TABLE data_requests.q2_datadic (
          id serial,
          variable_name character varying,
          domain text,
          field_type_rc text,
          field_type_sa text,
          field_label text,
          field_attributes text,
          field_note text,
          text_valid_type text,
          text_valid_min text,
          text_valid_max text,
          required_field text,
          field_attr_array text[],
          source text,
          owner text,
          classification text,
          display text
      );
      
        
    ENDSQL
  end
end
