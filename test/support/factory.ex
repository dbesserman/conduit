defmodule Conduit.Factory do
  use ExMachina

  def user_factory do
    %{
      email: "dave@dave.da",
      username: "Dave",
      hashed_password: "dadave",
      bio: "I like tennis",
      image: "https://i.stack.imgur.com/xHWG8.jpg"
    }
  end
end
