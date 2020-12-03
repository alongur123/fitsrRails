module Api
    module V1
        class UsersController < ApplicationController
            def index
                user = User.order('created_at DESC');
                render json: {status: 'Success', data: user}, status: :ok;
            end

            def show                
                begin
                    user = User.find(params[:id]);                
                    render json: {status: 'Success', data: user}, status: :ok;                
                rescue
                    render :status => 404, json: {data: 'error', status: 'Not Found'}
                end
            end

            def create
                user = User.new(user_params)
                
                if user.save
                    render json: {status: 'Success', data: user}, status: :ok;
                else
                    render json: {status: 'ERROR', data: user.errors}, status: :unprocessable_entity;
                end
            end

            def destroy
                user = User.find(params[:id]);
                user.destroy
                render json: {status: 'Success', data: user}, status: :ok;

            end

            def update
                user = User.find(params[:id]);
                if user.update_attributes(user_params)
                    render json: {status: 'Success', data: user}
                else
                    render json: {status: 'ERROR', data: user.errors}, status: :unprocessable_entity;
                end
            end

            private
            def user_params
                params.permit(:first_name, :last_name, :email)
            end
        end
    end
end