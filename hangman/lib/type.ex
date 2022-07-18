defmodule Hangman.Type do
  @type state :: :initializing | :won | :lost | :good_guess | :bad_guess | :already_used
  @type tally :: %{
          turns_lef: integer,
          game_state: state,
          letters: list(String.t()),
          used: MapSet.t()
        }
end
