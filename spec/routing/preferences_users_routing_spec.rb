require "rails_helper"

RSpec.describe PreferencesUsersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/preferences_users").to route_to("preferences_users#index")
    end

    it "routes to #new" do
      expect(get: "/preferences_users/new").to route_to("preferences_users#new")
    end

    it "routes to #show" do
      expect(get: "/preferences_users/1").to route_to("preferences_users#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/preferences_users/1/edit").to route_to("preferences_users#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/preferences_users").to route_to("preferences_users#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/preferences_users/1").to route_to("preferences_users#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/preferences_users/1").to route_to("preferences_users#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/preferences_users/1").to route_to("preferences_users#destroy", id: "1")
    end
  end
end
