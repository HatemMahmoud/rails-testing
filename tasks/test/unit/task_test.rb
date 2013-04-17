require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  def setup
    @task = tasks(:milk)
  end
  
  test 'valid with a name' do
    assert @task.valid?, 'Task was not valid'
  end
  
  test 'invalid without a name' do
    @task.name = nil
    assert !@task.valid?, 'Name is not being validated'
  end
end
