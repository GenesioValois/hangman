defmodule Dictionary do
  alias Dictionary.Runtime.Server

  @spec random_word() :: Sting.t()
  defdelegate random_word(), to: Server
end
