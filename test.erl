% Erlang OTP

return_cat(Pid, Name, Color, Description) ->
  gen_server::call({order, Pid, Name, Color, Description})
