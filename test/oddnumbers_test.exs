defmodule OddnumbersTest do
  use ExUnit.Case
  doctest Oddnumbers

  test "greets the world" do
    assert Oddnumbers.hello() == :world
  end
end
