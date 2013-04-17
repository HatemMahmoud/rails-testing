require 'test_helper'

class TaskManagementTest < ActionDispatch::IntegrationTest
  # test 'list all tasks' do
    # task = tasks(:milk)
    # get tasks_path
    # assert_response :success
    # assert_select 'li.task', task.name
  # end
  
  test 'creates a new task' do
    visit tasks_path
    click_link 'New Task'
    fill_in 'task_name', with: 'Learn TDD'
    click_button 'Create Task'
    save_and_open_page
    assert page.has_content? 'Task was successfully created.'
    assert page.has_content? 'Learn TDD'
  end
end
