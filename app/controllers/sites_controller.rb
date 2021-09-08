class SitesController < ApplicationController

    def create
        @city = City.find(params[:city_id])
        @site = Site.new(site_params)
        
        # a site belongs to a city; make the association
        @site.city = @city

        if @site.save
            redirect_to city_path(@city)
        else
            render 'cities/show'
        end
    end

    def destroy
        @site = Site.find(params[:id])
        @site.destroy

        redirect_to city_path(@site.city)
    end


    private

    def site_params
        params.require(:site).permit(:name, :image_url, :rating)
    end
end
