defmodule ExcronTest do
  use ExUnit.Case
  doctest Excron

  test "greets the world" do
    assert Excron.hello() == :world
  end
end
