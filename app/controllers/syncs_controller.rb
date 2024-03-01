class SyncsController < ApplicationController
    def create
      sync = Sync.create(sync_params)
      if sync.valid?
        render json: sync
      else
        render json: sync.errors, status: 422
      end
    end
  
    def destroy
      sync = Sync.find_by(id: params[:id])
  
      if sync
        sync.destroy
        render json: sync
      else
        render json: { error: 'Sync not found' }, status: 404
      end
    end
  
    private
  
    def sync_params
      params.require(:sync).permit(:artist_id, :user_id)
    end
end
