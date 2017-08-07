class Task

  # List task => to be done in the VIEW
  # Add a task =>
  # Mark task as done
  # Remove a task

  def initialize(description)
    @description = description
    @done = false
  end

  def mark_as_done!
    @done = true
  end
end


