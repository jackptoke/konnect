class InterpretersController < ApplicationController
    before_action :set_interpreter, only: [:show, :edit, :update, :destroy]
    def index
    end
    def show
    end

    private

    def set_interpreter
        if interpreter_signed_in?
            @interpreter = Interpreter.find(current_interpreter.id)
        else
            redirect_to interpreter_session_path
        end
    end
end
