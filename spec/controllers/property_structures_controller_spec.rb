require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe PropertyStructuresController do

  # This should return the minimal set of attributes required to create a valid
  # PropertyStructure. As you add validations to PropertyStructure, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PropertyStructuresController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all property_structures as @property_structures" do
      property_structure = PropertyStructure.create! valid_attributes
      get :index, {}, valid_session
      assigns(:property_structures).should eq([property_structure])
    end
  end

  describe "GET show" do
    it "assigns the requested property_structure as @property_structure" do
      property_structure = PropertyStructure.create! valid_attributes
      get :show, {:id => property_structure.to_param}, valid_session
      assigns(:property_structure).should eq(property_structure)
    end
  end

  describe "GET new" do
    it "assigns a new property_structure as @property_structure" do
      get :new, {}, valid_session
      assigns(:property_structure).should be_a_new(PropertyStructure)
    end
  end

  describe "GET edit" do
    it "assigns the requested property_structure as @property_structure" do
      property_structure = PropertyStructure.create! valid_attributes
      get :edit, {:id => property_structure.to_param}, valid_session
      assigns(:property_structure).should eq(property_structure)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new PropertyStructure" do
        expect {
          post :create, {:property_structure => valid_attributes}, valid_session
        }.to change(PropertyStructure, :count).by(1)
      end

      it "assigns a newly created property_structure as @property_structure" do
        post :create, {:property_structure => valid_attributes}, valid_session
        assigns(:property_structure).should be_a(PropertyStructure)
        assigns(:property_structure).should be_persisted
      end

      it "redirects to the created property_structure" do
        post :create, {:property_structure => valid_attributes}, valid_session
        response.should redirect_to(PropertyStructure.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved property_structure as @property_structure" do
        # Trigger the behavior that occurs when invalid params are submitted
        PropertyStructure.any_instance.stub(:save).and_return(false)
        post :create, {:property_structure => {}}, valid_session
        assigns(:property_structure).should be_a_new(PropertyStructure)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        PropertyStructure.any_instance.stub(:save).and_return(false)
        post :create, {:property_structure => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested property_structure" do
        property_structure = PropertyStructure.create! valid_attributes
        # Assuming there are no other property_structures in the database, this
        # specifies that the PropertyStructure created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        PropertyStructure.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => property_structure.to_param, :property_structure => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested property_structure as @property_structure" do
        property_structure = PropertyStructure.create! valid_attributes
        put :update, {:id => property_structure.to_param, :property_structure => valid_attributes}, valid_session
        assigns(:property_structure).should eq(property_structure)
      end

      it "redirects to the property_structure" do
        property_structure = PropertyStructure.create! valid_attributes
        put :update, {:id => property_structure.to_param, :property_structure => valid_attributes}, valid_session
        response.should redirect_to(property_structure)
      end
    end

    describe "with invalid params" do
      it "assigns the property_structure as @property_structure" do
        property_structure = PropertyStructure.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PropertyStructure.any_instance.stub(:save).and_return(false)
        put :update, {:id => property_structure.to_param, :property_structure => {}}, valid_session
        assigns(:property_structure).should eq(property_structure)
      end

      it "re-renders the 'edit' template" do
        property_structure = PropertyStructure.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PropertyStructure.any_instance.stub(:save).and_return(false)
        put :update, {:id => property_structure.to_param, :property_structure => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested property_structure" do
      property_structure = PropertyStructure.create! valid_attributes
      expect {
        delete :destroy, {:id => property_structure.to_param}, valid_session
      }.to change(PropertyStructure, :count).by(-1)
    end

    it "redirects to the property_structures list" do
      property_structure = PropertyStructure.create! valid_attributes
      delete :destroy, {:id => property_structure.to_param}, valid_session
      response.should redirect_to(property_structures_url)
    end
  end

end
