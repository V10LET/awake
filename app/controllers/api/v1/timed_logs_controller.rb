class Api::V1::TimedLogsController < ApplicationController
    def index
        @tl = TimedLog.all
        render json: @tl
    end

    def create
        me = try_get_user
        if me == nil
            render json: {message: 'Something went wrong, please try again.'}
        else
            timed_log_data = timed_log_params
            timed_log_data[:user] = me
            @timed_log = TimedLog.create(timed_log_data)
            render json: { timed_log: TimedLogSerializer.new(@timed_log) }, status: :created
        end
    end

    def show
        @timed_log = TimedLog.find_by_id(params[:id])
        render json: @timed_log
    end

    private

    def timed_log_params
        params.require(:timed_log).permit(:time)
    end
end
