require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  test 'valid with a name' do
    task = FactoryGirl.create(:task)
    assert task.valid?, 'Task was not valid'
  end
  
  test 'invalid without a name' do
    task = FactoryGirl.build(:task, name: nil)
    assert !task.valid?, 'Name is not being validated'
  end
  
  test 'has a unique name in project' do
    task1 = FactoryGirl.create(:task)
    project = task1.project
    task2 = FactoryGirl.build(:task, project: project, name: task1.name)
    assert !task2.valid?, 'Name is not unique in project'
    task3 = FactoryGirl.build(:task, project: FactoryGirl.create(:project), name: task1.name)
    assert task3.valid?
  end
end
