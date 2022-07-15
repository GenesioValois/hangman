defmodule HangmanImplGameTest do
  use ExUnit.Case
  alias Hangman.Impl.Game

  test "new game returns structure" do
    game = Game.new_game()

    assert game.turns_left == 7
    assert game.game_state == :initializing
    assert length(game.letters) > 0
  end

  test "new game returns correct structure" do
    game = Game.new_game("correct")

    assert game.turns_left == 7
    assert game.game_state == :initializing
    assert game.letters == ["c", "o", "r", "r", "e", "c", "t"]
  end
end
