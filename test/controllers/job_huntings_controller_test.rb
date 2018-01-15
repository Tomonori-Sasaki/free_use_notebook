require 'test_helper'

class JobHuntingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_hunting = job_huntings(:one)
  end

  test "should get index" do
    get job_huntings_url
    assert_response :success
  end

  test "should get new" do
    get new_job_hunting_url
    assert_response :success
  end

  test "should create job_hunting" do
    assert_difference('JobHunting.count') do
      post job_huntings_url, params: { job_hunting: { content: @job_hunting.content, name: @job_hunting.name, rank: @job_hunting.rank, type: @job_hunting.type } }
    end

    assert_redirected_to job_hunting_url(JobHunting.last)
  end

  test "should show job_hunting" do
    get job_hunting_url(@job_hunting)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_hunting_url(@job_hunting)
    assert_response :success
  end

  test "should update job_hunting" do
    patch job_hunting_url(@job_hunting), params: { job_hunting: { content: @job_hunting.content, name: @job_hunting.name, rank: @job_hunting.rank, type: @job_hunting.type } }
    assert_redirected_to job_hunting_url(@job_hunting)
  end

  test "should destroy job_hunting" do
    assert_difference('JobHunting.count', -1) do
      delete job_hunting_url(@job_hunting)
    end

    assert_redirected_to job_huntings_url
  end
end
