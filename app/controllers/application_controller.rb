class ApplicationController < ActionController::Base

    # After a user signs in take them to the jobs index if they have a valid profile, and otherwise take them to create a profile
    def after_sign_in_path_for(profile)
        if(current_user.profile)
            jobs_path
        else
            new_profile_path || root_path
        end
    end
end
