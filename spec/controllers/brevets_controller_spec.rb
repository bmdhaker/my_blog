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

describe BrevetsController do

  # This should return the minimal set of attributes required to create a valid
  # Brevet. As you add validations to Brevet, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # BrevetsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all brevets as @brevets" do
      brevet = Brevet.create! valid_attributes
      get :index, {}, valid_session
      assigns(:brevets).should eq([brevet])
    end
  end

  describe "GET show" do
    it "assigns the requested brevet as @brevet" do
      brevet = Brevet.create! valid_attributes
      get :show, {:id => brevet.to_param}, valid_session
      assigns(:brevet).should eq(brevet)
    end
  end

  describe "GET new" do
    it "assigns a new brevet as @brevet" do
      get :new, {}, valid_session
      assigns(:brevet).should be_a_new(Brevet)
    end
  end

  describe "GET edit" do
    it "assigns the requested brevet as @brevet" do
      brevet = Brevet.create! valid_attributes
      get :edit, {:id => brevet.to_param}, valid_session
      assigns(:brevet).should eq(brevet)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Brevet" do
        expect {
          post :create, {:brevet => valid_attributes}, valid_session
        }.to change(Brevet, :count).by(1)
      end

      it "assigns a newly created brevet as @brevet" do
        post :create, {:brevet => valid_attributes}, valid_session
        assigns(:brevet).should be_a(Brevet)
        assigns(:brevet).should be_persisted
      end

      it "redirects to the created brevet" do
        post :create, {:brevet => valid_attributes}, valid_session
        response.should redirect_to(Brevet.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved brevet as @brevet" do
        # Trigger the behavior that occurs when invalid params are submitted
        Brevet.any_instance.stub(:save).and_return(false)
        post :create, {:brevet => { "name" => "invalid value" }}, valid_session
        assigns(:brevet).should be_a_new(Brevet)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Brevet.any_instance.stub(:save).and_return(false)
        post :create, {:brevet => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested brevet" do
        brevet = Brevet.create! valid_attributes
        # Assuming there are no other brevets in the database, this
        # specifies that the Brevet created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Brevet.any_instance.should_receive(:update).with({ "name" => "MyString" })
        put :update, {:id => brevet.to_param, :brevet => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested brevet as @brevet" do
        brevet = Brevet.create! valid_attributes
        put :update, {:id => brevet.to_param, :brevet => valid_attributes}, valid_session
        assigns(:brevet).should eq(brevet)
      end

      it "redirects to the brevet" do
        brevet = Brevet.create! valid_attributes
        put :update, {:id => brevet.to_param, :brevet => valid_attributes}, valid_session
        response.should redirect_to(brevet)
      end
    end

    describe "with invalid params" do
      it "assigns the brevet as @brevet" do
        brevet = Brevet.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Brevet.any_instance.stub(:save).and_return(false)
        put :update, {:id => brevet.to_param, :brevet => { "name" => "invalid value" }}, valid_session
        assigns(:brevet).should eq(brevet)
      end

      it "re-renders the 'edit' template" do
        brevet = Brevet.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Brevet.any_instance.stub(:save).and_return(false)
        put :update, {:id => brevet.to_param, :brevet => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested brevet" do
      brevet = Brevet.create! valid_attributes
      expect {
        delete :destroy, {:id => brevet.to_param}, valid_session
      }.to change(Brevet, :count).by(-1)
    end

    it "redirects to the brevets list" do
      brevet = Brevet.create! valid_attributes
      delete :destroy, {:id => brevet.to_param}, valid_session
      response.should redirect_to(brevets_url)
    end
  end

end
