# frozen_string_literal: true

module Api
  module V1
    class ClubsController < ApplicationController
      before_action :set_club, only: %i[show update destroy]

      # GET /clubs
      def index
        @clubs = Club.all

        render json: @clubs
      end

      # GET /clubs/1
      def show
        render json: @club
      end

      # POST /clubs
      def create
        @club = Club.new(club_params)

        if @club.save
          render json: @club, status: :created, location: @club
        else
          render json: @club.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /clubs/1
      def update
        if @club.update(club_params)
          render json: @club
        else
          render json: @club.errors, status: :unprocessable_entity
        end
      end

      # DELETE /clubs/1
      def destroy
        @club.destroy
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_club
        @club = Club.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def club_params
        params.fetch(:club, {}).permit!
      end
    end
  end
end
