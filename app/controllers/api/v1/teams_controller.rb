module Api
  module V1
    class TeamsController < ApplicationController

      def index
        teams = Team.order('created_at DESC')

        render json: {status: 'SUCCESS', message: 'Loaded teams', data: teams}, status: :ok
      end

      def show
        team = Team.find_by(number: params[:id])
        if team.nil?
          raise ActionController::RoutingError.new('Not Found')
        end
        render json: {status: 'SUCCESS', message: 'Loaded team', data: team}, status: :ok
      end

      def create
        team = Team.new(team_params)

        if Team.find_by(number: team_params[:number]).nil?
          if team.save
            render json: {status: 'SUCCESS', message: 'Saved team', data: team}, status: :ok
          else
            render json: {status: 'ERROR', message: 'Team not saved',
                          data: team.errors}, status: :unprocessable_entity
          end
        else
          team = Team.find_by(number: team_params[:number])
          if team.update_attributes(team_params)
            render json: {status: 'SUCCESS', message: 'Updated team', data: team}, status: :ok
          else
            render json: {status: 'ERROR', message: 'Team not updated',
                          data: team.errors}, status: :unprocessable_entity
          end
        end
      end

      def destroy
        team = Team.find_by(number: params[:id])
        if team.nil?
          raise ActionController::RoutingError.new('Not Found')
        end
        team.destroy
        render json: {status: 'SUCCESS', message: 'Deleted team', data: team}, status: :ok

      end

      def updates
        team = Team.find_by(number: params[:id])
        if team.nil?
          raise ActionController::RoutingError.new('Not Found')
        end
        if team.update_attributes(team_params) && Team.find_by(number: team_params[:number]).nil?
          render json: {status: 'SUCCESS', message: 'Updated team', data: team}, status: :ok
        else
          render json: {status: 'ERROR', message: 'Team not updated',
                        data: team.errors}, status: :unprocessable_entity
        end
      end

      private def team_params
        params.permit(:name, :number, :notes, :objective_score, :consistency, :driver_skill, :autonomous, :issues, :defence, :move_cargo, :cargo_max, :cargo_pickup, :move_hatch, :hatch_max, :hatch_pickup, :climb_level, :climb_notes, :sandstorm_mode, :sandstorm_notes)
      end
    end
  end
end