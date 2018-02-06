module Response
  def response_json_login(token,userdata, status = :ok)
    render json:{token:token,userdata:userdata}, status: status
  end
end