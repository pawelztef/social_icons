require_dependency "social_links/application_controller"

module SocialLinks
  class SocialModulesController < ApplicationController
    before_action :set_social_module, only: [:index, :show, :edit, :update, :destroy]

    def index
    end

    def show
    end

    def new
    end

    def edit
    end

    def create
      @social_module = SocialModule.new(social_module_params)

      if @social_module.save
        redirect_to @social_module, notice: 'Social module was successfully created.'
      else
        render :new
      end
    end

    def update
      if @social_module.update(social_module_params)
        redirect_to edit_social_module_path(@social_module), notice: 'Social module was successfully updated.' 
      else
        render :edit
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
      params.require(:social_module).permit(links_attributes: SocialLink.attribute_names.map(&:to_sym).push(:_destroy))
    end
  end
end
