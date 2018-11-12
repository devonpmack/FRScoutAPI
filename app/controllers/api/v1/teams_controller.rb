module Api
  module V1
    class TeamsController < ApplicationController
      def index
        teams = Team.order('created_at DESC')

        render json: {status: 'SUCCESS', message: 'Loaded teams', data: teams}, status: :ok
      end

      def show
        team = Team.find(params[:id])
        render json: {status: 'SUCCESS', message: 'Loaded team', data: team}, status: :ok
      end

      def create
        team = Team.new(article_params)

        if team.save
          render json: {status: 'SUCCESS', message: 'Saved team', data: team}, status: :ok
        else
          render json: {status: 'ERROR', message: 'Team not saved',
                        data: team.errors}, status: :unprocessable_entity
        end
      end

      def destroy
        team = Team.find(params[:id])
        team.destroy
        render json: {status: 'SUCCESS', message: 'Deleted team', data: team}, status: :ok

      end

      def update
        team = Team.find(params[:id])
        if team.update_attributes(article_params)
          render json: {status: 'SUCCESS', message: 'Updated team', data: team}, status: :ok
        else
          render json: {status: 'ERROR', message: 'Team not updated',
                        data: team.errors}, status: :unprocessable_entity
        end
      end

      private def article_params
        params.permit(:name, :notes)
      end
    end
  end
end