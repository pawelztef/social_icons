require_dependency "social_links/application_controller"

module SocialLinks
  class SocialModulesController < ApplicationController
    before_action :set_social_module, only: [:index, :edit, :update, :destroy]

    def index
    end

    def update
      if @social_module.update(social_module_params)
        redirect_to edit_social_module_path(@social_module), notice: 'Social module was successfully updated.' 
      else
        render :index
      end
    end

    def destroy
      @social_module.destroy
      redirect_to social_modules_url, notice: 'Social module was successfully destroyed.'
    end

    private
    def set_social_module
      @social_module = SocialModule.instance
    end

    def social_module_params
      params.require(:social_module).permit(social_links_attributes: SocialLink.attribute_names.map(&:to_sym).push(:_destroy).push(:icon_cache))
    end

  end
end
