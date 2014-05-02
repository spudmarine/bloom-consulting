class ReAddNewFieldsToPracticeAreas < ActiveRecord::Migration
  def change
    add_column :practiceareas, :marketing_services_title, :string
    add_column :practiceareas, :marketing_services_copy, :text
    add_column :practiceareas, :sales_services_title, :string
    add_column :practiceareas, :sales_services_copy, :text
    add_column :practiceareas, :channel_services_title, :string
    add_column :practiceareas, :channel_services_copy, :text
    add_column :practiceareas, :bi_services_title, :string
    add_column :practiceareas, :bi_services_copy, :text
    add_column :practiceareas, :pm_process_groups_title, :string
    add_column :practiceareas, :pm_process_groups_copy, :text
    add_column :practiceareas, :pm_knowledge_title, :string
    add_column :practiceareas, :pm_knowledge_copy, :text
    add_column :practiceareas, :pm_deliverables_title, :string
    add_column :practiceareas, :pm_deliverables_copy, :text
  end
end
