class AddQueueAndDependentJobIdToDelayedJobs < ActiveRecord::Migration
  def self.up
    add_column :delayed_jobs, :queue, :string
    add_column :delayed_jobs, :dependent_job_id, :integer, :default => 0
  end

  def self.down
    remove_column :delayed_jobs, :dependent_job_id
    remove_column :delayed_jobs, :queue
  end
end
