class CompaniesController < ApplicationController
    get "/companies" do
        Company.all.to_json(include: :games)
    end

    get "/companies/:id" do
        company = Company.find(params[:id])
        company.to_json
    end
end