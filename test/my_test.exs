defmodule MyTest do
  import MyTestHelper, only: [parses_to: 2]
  use ExUnit.Case, async: true

  @external_resource Path.join([__DIR__, "input.json"])

  with {:ok, body} <- File.read(Path.join([__DIR__, "input.json"])),
       {:ok, json} <- Poison.decode(body) do
    Enum.each(json, fn {expression, result} ->

      @expression expression
      @result result
      @expression |> parses_to(@result)

      # parses_to(expression, result)

      # quote do
      #   parses_to(unquote(expression), unquote(result))
      # end

    end)
  end
end
