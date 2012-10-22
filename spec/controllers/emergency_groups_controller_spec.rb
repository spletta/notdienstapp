require File.dirname(__FILE__) + '/../spec_helper'

describe EmergencyGroupsController do
  fixtures :all
  render_views

  it "index action should render index template" do
    get :index
    response.should render_template(:index)
  end

  it "show action should render show template" do
    get :show, :id => EmergencyGroup.first
    response.should render_template(:show)
  end

  it "new action should render new template" do
    get :new
    response.should render_template(:new)
  end

  it "create action should render new template when model is invalid" do
    EmergencyGroup.any_instance.stubs(:valid?).returns(false)
    post :create
    response.should render_template(:new)
  end

  it "create action should redirect when model is valid" do
    EmergencyGroup.any_instance.stubs(:valid?).returns(true)
    post :create
    response.should redirect_to(emergency_group_url(assigns[:emergency_group]))
  end

  it "edit action should render edit template" do
    get :edit, :id => EmergencyGroup.first
    response.should render_template(:edit)
  end

  it "update action should render edit template when model is invalid" do
    EmergencyGroup.any_instance.stubs(:valid?).returns(false)
    put :update, :id => EmergencyGroup.first
    response.should render_template(:edit)
  end

  it "update action should redirect when model is valid" do
    EmergencyGroup.any_instance.stubs(:valid?).returns(true)
    put :update, :id => EmergencyGroup.first
    response.should redirect_to(emergency_group_url(assigns[:emergency_group]))
  end

  it "destroy action should destroy model and redirect to index action" do
    emergency_group = EmergencyGroup.first
    delete :destroy, :id => emergency_group
    response.should redirect_to(emergency_groups_url)
    EmergencyGroup.exists?(emergency_group.id).should be_false
  end
end
