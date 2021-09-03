class Ex3Controller < ApplicationController
	def checkUserId(id)
		return true if User.find(id) rescue false
	end

	def createpost
		@msg_ok = true
		@user_id_ok = true

		if (!params.has_key?(:msg) or params[:msg] == nil)
			@msg_ok = false
		end

		if (!params.has_key?(:user_id) or !checkUserId(params[:user_id].to_i))
			@user_id_ok = false
		end

		if (@msg_ok and @user_id_ok)
			@msg = params[:msg]
			@user_id = params[:user_id].to_i
			@user = User.find(@user_id)

			@post = Post.create(msg: @msg, user_id: @user_id)
			puts "----Post Created----"
			puts "user_id: #{@user_id}"
			puts "msg: #{@msg}"
			puts "--------------------"
		end

		puts "msg_ok: #{@msg_ok}"
		puts "user_id_ok: #{@user_id_ok}"
	end

	def readpost
		@user_id_ok = true

		if (!params.has_key?(:user_id) or !checkUserId(params[:user_id].to_i))
			@user_id_ok = false
		end

		if (@user_id_ok)
			@user_id = params[:user_id].to_i
			@user = User.find(@user_id)
			@user_posts = @user.posts

			puts "----Reading Posts----"
			puts "user_id: #{@user_id}"
			puts "total_post: #{@user_posts.length}"
			puts "---------------------"
		end

		puts "user_id_ok: #{@user_id_ok}"
	end

end
