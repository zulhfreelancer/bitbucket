# encoding: utf-8

module BitBucket
  class Repos::Commit < API

    def get_one(user_name, repo_name, short_hash)
      _update_user_repo_params(user_name, repo_name)
      _validate_user_repo_params(user, repo) unless user? && repo?
      normalize! params
      
      path = "/2.0/repositories/#{user}/#{repo.downcase}/commit/#{short_hash}"
      response = get_request(path, params)
      return response 
    end
    
  end
end
