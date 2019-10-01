defmodule T1.MixProject do
  use Mix.Project

  def project,
    do: [
      app: :t1,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]

  def application, do: [extra_applications: [:logger]]
  defp deps, do: [{:poison, "~> 4.0"}]
end
