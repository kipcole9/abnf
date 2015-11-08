defmodule ABNF.GeneratorTest do
  use ExUnit.Case
  alias ABNF.Generator

  test "generating a dquote" do
    assert "\"" = Generator.generate({:dquote, "\"", []})
  end

  test "generating a bit" do
    assert "0" = Generator.generate({:bit, "0", []})
    assert "1" = Generator.generate({:bit, "1", []})
  end

  test "generating a crlf" do
    assert "\r\n" = Generator.generate({:crlf, "\r\n", [
      {:cr, "\r", []},
      {:lf, "\n", []},
    ]})
  end
end