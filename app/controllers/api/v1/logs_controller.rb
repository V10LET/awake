class Api::V1::LogsController < ApplicationController
    include ActiveModel::Serialization

    def create
        me = try_get_user
        if me == nil
            render json: {message: 'Something went wrong, please try again.'}
        else
            log_data = log_params
            log_data[:user] = me
            @log = Log.create(log_data)
            render json: { log: LogSerializer.new(@log) }, status: :created
        end
    end

    def show
        @log = Log.find_by_id(params[:id])
        render json: @log
    end

    def update
        me = try_get_user
        log = Log.find_by_id(params[:id])
        if me == nil
            render json: {message: 'Something went wrong, please try again.'}
        else
            if log == nil
                render json: {message: 'MEEEEEEP.'}
            else
                log_data = log_params
                log_data[:user] = me
                @log = log.update(log_data)
                render json: @log, status: :created
            end
        end
    end

    private

    def log_params
        params.require(:log).permit(
            :mental_rating, :mental_note,
            :emotional_rating, :emotional_note,
            :physical_rating, :physical_note,
            :spiritual_rating, :spiritual_note
        )
    end

end
