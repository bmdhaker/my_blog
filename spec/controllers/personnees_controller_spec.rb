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

describe PersonneesController do

  # This should return the minimal set of attributes required to create a valid
  # Personnee. As you add validations to Personnee, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PersonneesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all personnees as @personnees" do
      personnee = Personnee.create! valid_attributes
      get :index, {}, valid_session
      assigns(:personnees).should eq([personnee])
    end
  end

  describe "GET show" do
    it "assigns the requested personnee as @personnee" do
      personnee = Personnee.create! valid_attributes
      get :show, {:id => personnee.to_param}, valid_session
      assigns(:personnee).should eq(personnee)
    end
  end

  describe "GET new" do
    it "assigns a new personnee as @personnee" do
      get :new, {}, valid_session
      assigns(:personnee).should be_a_new(Personnee)
    end
  end

  describe "GET edit" do
    it "assigns the requested personnee as @personnee" do
      personnee = Personnee.create! valid_attributes
      get :edit, {:id => personnee.to_param}, valid_session
      assigns(:personnee).should eq(personnee)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Personnee" do
        expect {
          post :create, {:personnee => valid_attributes}, valid_session
        }.to change(Personnee, :count).by(1)
      end

      it "assigns a newly created personnee as @personnee" do
        post :create, {:personnee => valid_attributes}, valid_session
        assigns(:personnee).should be_a(Personnee)
        assigns(:personnee).should be_persisted
      end

      it "redirects to the created personnee" do
        post :create, {:personnee => valid_attributes}, valid_session
        response.should redirect_to(Personnee.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved personnee as @personnee" do
        # Trigger the behavior that occurs when invalid params are submitted
        Personnee.any_instance.stub(:save).and_return(false)
        post :create, {:personnee => { "name" => "invalid value" }}, valid_session
        assigns(:personnee).should be_a_new(Personnee)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Personnee.any_instance.stub(:save).and_return(false)
        post :create, {:personnee => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested personnee" do
        personnee = Personnee.create! valid_attributes
        # Assuming there are no other personnees in the database, this
        # specifies that the Personnee created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Personnee.any_instance.should_receive(:update).with({ "name" => "MyString" })
        put :update, {:id => personnee.to_param, :personnee => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested personnee as @personnee" do
        personnee = Personnee.create! valid_attributes
        put :update, {:id => personnee.to_param, :personnee => valid_attributes}, valid_session
        assigns(:personnee).should eq(personnee)
      end

      it "redirects to the personnee" do
        personnee = Personnee.create! valid_attributes
        put :update, {:id => personnee.to_param, :personnee => valid_attributes}, valid_session
        response.should redirect_to(personnee)
      end
    end

    describe "with invalid params" do
      it "assigns the personnee as @personnee" do
        personnee = Personnee.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Personnee.any_instance.stub(:save).and_return(false)
        put :update, {:id => personnee.to_param, :personnee => { "name" => "invalid value" }}, valid_session
        assigns(:personnee).should eq(personnee)
      end

      it "re-renders the 'edit' template" do
        personnee = Personnee.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Personnee.any_instance.stub(:save).and_return(false)
        put :update, {:id => personnee.to_param, :personnee => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested personnee" do
      personnee = Personnee.create! valid_attributes
      expect {
        delete :destroy, {:id => personnee.to_param}, valid_session
      }.to change(Personnee, :count).by(-1)
    end

    it "redirects to the personnees list" do
      personnee = Personnee.create! valid_attributes
      delete :destroy, {:id => personnee.to_param}, valid_session
      response.should redirect_to(personnees_url)
    end
  end

end
