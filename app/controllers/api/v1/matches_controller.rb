module Api
  module V1
    class MatchesController < ApplicationController

      def index
        matches = Match.order('created_at DESC')

        render json: {status: 'SUCCESS', message: 'Loaded matches', data: matches}, status: :ok
      end

      def show
        match = Match.find_by(number: params[:id])
        if match.nil?
          raise ActionController::RoutingError.new('Not Found')
        end
        render json: {status: 'SUCCESS', message: 'Loaded matches', data: match}, status: :ok
      end

      def create
        match = Match.new(match_params)

        if Match.find_by(number: match_params[:number]).nil?
          if match.save
            render json: {status: 'SUCCESS', message: 'Saved match', data: match}, status: :ok
          else
            render json: {status: 'ERROR', message: 'Match not saved',
                          data: match.errors}, status: :unprocessable_entity
          end
        else
          match = Match.find_by(number: match_params[:number])
          if match.update_attributes(match_params)
            render json: {status: 'SUCCESS', message: 'Updated match', data: match}, status: :ok
          else
            render json: {status: 'ERROR', message: 'Match not updated',
                          data: match.errors}, status: :unprocessable_entity
          end
        end
      end

      def destroy
        match = Match.find_by(number: params[:id])
        if match.nil?
          raise ActionController::RoutingError.new('Not Found')
        end
        match.destroy
        render json: {status: 'SUCCESS', message: 'Deleted match', data: match}, status: :ok

      end

      def updates
        match = Match.find_by(number: params[:id])
        if match.nil?
          raise ActionController::RoutingError.new('Not Found')
        end
        if match.update_attributes(match_params) && Match.find_by(number: match_params[:number]).nil?
          render json: {status: 'SUCCESS', message: 'Updated match', data: match}, status: :ok
        else
          render json: {status: 'ERROR', message: 'Match not updated',
                        data: match.errors}, status: :unprocessable_entity
        end
      end

      private def match_params
        params.permit(:number, :number, :blue_alliance_1, :blue_alliance_2, :blue_alliance_3, :red_alliance_1, :red_alliance_2, :red_alliance_3, :red_score, :blue_score, :blue_ranking_points, :red_ranking_points, :winning_alliance)
      end
    end
  end
end