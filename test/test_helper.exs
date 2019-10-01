ExUnit.start()

defmodule MyTestHelper do
  use ExUnit.Case

  defmacro parses_to(expression, expected) do
    quote do
      test "Expression \"#{unquote(expression) |> String.slice(0, 230)}\"" do
        assert unquote(expected) === unquote(expression) |> Poison.decode!()
      end
    end
  end
end
