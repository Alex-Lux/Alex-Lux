require_relative 'repository.rb'
class View

def initialize(repository)
  @repository = repository
end

  # List task => to be done in the VIEW
  def list_tasks
  @repository.all.each do |task|
    puts "[#task.done ? '*' : ''] #{{task_descritpion}}"
  end

  def get_task_description
    puts "What do you need to to ?"
print ">"

  end

  # Add a task =>
  def add_a_task

  end

  # Mark task as done
  def mark_task

  end

  # Remove a task




end


