class Api::V1::TimedLogsController < ApplicationController
    def index
        @tl = TimedLog.all
        render json: @tl
    end


end
