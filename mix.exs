defmodule Excron.MixProject do
  use Mix.Project

  def project do
    [
      app: :excron,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Excron.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:crontab, "~> 1.1"},
      {:timex, "~> 3.7"}
    ]
  end
end
