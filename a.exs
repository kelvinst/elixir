ExUnit.start()

defmodule A do
  use ExUnit.Case

  test "gt" do
    assert 2 > 2
  end

  test "nu" do
    assert 1 = 2
  end

  test "str" do
    assert "oi" = "hi"
  end

  test "error" do
    assert %ArgumentError{message: "hi"} == %RuntimeError{message: "hi"}
  end

  test "pin" do
    a = 1
    assert %{a: ^a} = %{a: 2}
  end

  test "this" do
    assert %{a: 1} == %{a: 2}
  end

  test "and this" do
    assert %{a: 1} == %{a: 2, b: 2}
  end

  test "that" do
    assert %{a: 1} = %{a: 2}
  end

  test "and that" do
    assert %{a: 1} = %{a: 2, b: 2}
  end
end
