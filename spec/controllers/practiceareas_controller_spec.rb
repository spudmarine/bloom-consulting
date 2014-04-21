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

describe PracticeareasController do

  # This should return the minimal set of attributes required to create a valid
  # Practicearea. As you add validations to Practicearea, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "hero_image" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PracticeareasController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all practiceareas as @practiceareas" do
      practicearea = Practicearea.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:practiceareas)).to eq([practicearea])
    end
  end

  describe "GET show" do
    it "assigns the requested practicearea as @practicearea" do
      practicearea = Practicearea.create! valid_attributes
      get :show, {:id => practicearea.to_param}, valid_session
      expect(assigns(:practicearea)).to eq(practicearea)
    end
  end

  describe "GET new" do
    it "assigns a new practicearea as @practicearea" do
      get :new, {}, valid_session
      expect(assigns(:practicearea)).to be_a_new(Practicearea)
    end
  end

  describe "GET edit" do
    it "assigns the requested practicearea as @practicearea" do
      practicearea = Practicearea.create! valid_attributes
      get :edit, {:id => practicearea.to_param}, valid_session
      expect(assigns(:practicearea)).to eq(practicearea)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Practicearea" do
        expect {
          post :create, {:practicearea => valid_attributes}, valid_session
        }.to change(Practicearea, :count).by(1)
      end

      it "assigns a newly created practicearea as @practicearea" do
        post :create, {:practicearea => valid_attributes}, valid_session
        expect(assigns(:practicearea)).to be_a(Practicearea)
        expect(assigns(:practicearea)).to be_persisted
      end

      it "redirects to the created practicearea" do
        post :create, {:practicearea => valid_attributes}, valid_session
        expect(response).to redirect_to(Practicearea.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved practicearea as @practicearea" do
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Practicearea).to receive(:save).and_return(false)
        post :create, {:practicearea => { "hero_image" => "invalid value" }}, valid_session
        expect(assigns(:practicearea)).to be_a_new(Practicearea)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Practicearea).to receive(:save).and_return(false)
        post :create, {:practicearea => { "hero_image" => "invalid value" }}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested practicearea" do
        practicearea = Practicearea.create! valid_attributes
        # Assuming there are no other practiceareas in the database, this
        # specifies that the Practicearea created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        expect_any_instance_of(Practicearea).to receive(:update).with({ "hero_image" => "MyString" })
        put :update, {:id => practicearea.to_param, :practicearea => { "hero_image" => "MyString" }}, valid_session
      end

      it "assigns the requested practicearea as @practicearea" do
        practicearea = Practicearea.create! valid_attributes
        put :update, {:id => practicearea.to_param, :practicearea => valid_attributes}, valid_session
        expect(assigns(:practicearea)).to eq(practicearea)
      end

      it "redirects to the practicearea" do
        practicearea = Practicearea.create! valid_attributes
        put :update, {:id => practicearea.to_param, :practicearea => valid_attributes}, valid_session
        expect(response).to redirect_to(practicearea)
      end
    end

    describe "with invalid params" do
      it "assigns the practicearea as @practicearea" do
        practicearea = Practicearea.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Practicearea).to receive(:save).and_return(false)
        put :update, {:id => practicearea.to_param, :practicearea => { "hero_image" => "invalid value" }}, valid_session
        expect(assigns(:practicearea)).to eq(practicearea)
      end

      it "re-renders the 'edit' template" do
        practicearea = Practicearea.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Practicearea).to receive(:save).and_return(false)
        put :update, {:id => practicearea.to_param, :practicearea => { "hero_image" => "invalid value" }}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested practicearea" do
      practicearea = Practicearea.create! valid_attributes
      expect {
        delete :destroy, {:id => practicearea.to_param}, valid_session
      }.to change(Practicearea, :count).by(-1)
    end

    it "redirects to the practiceareas list" do
      practicearea = Practicearea.create! valid_attributes
      delete :destroy, {:id => practicearea.to_param}, valid_session
      expect(response).to redirect_to(practiceareas_url)
    end
  end

end
