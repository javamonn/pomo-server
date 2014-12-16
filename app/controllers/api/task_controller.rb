module Api
  class TaskController < Api::BaseController

    private
      def task_params
        params.require(:task).permit(:description)
      end

      def query_params
        params.permit(:user_id, :description)
      end
  end
end