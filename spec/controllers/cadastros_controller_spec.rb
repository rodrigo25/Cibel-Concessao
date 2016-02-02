require 'rails_helper'

RSpec.describe CadastrosController, type: :controller do

  describe "GET #concessao" do
    it "returns http success" do
      get :concessao
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #renovacao" do
    it "returns http success" do
      get :renovacao
      expect(response).to have_http_status(:success)
    end
  end

end
