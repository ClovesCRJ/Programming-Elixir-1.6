defmodule Issues.MixProject do
  use Mix.Project

  def project do
    [
      app:             :issues,
      escript:         escript_config(),
      version:         "0.1.0",
      name:            "Issues",
      source_url:      "https://github.com/ClovesCRJ/Programming-Elixir-1.6",
      elixir:          "~> 1.12",
      start_permanent: Mix.env() == :prod,
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        coveralls:           :test,
        "coveralls.details": :test,
        "coveralls.post":    :test,
        "coveralls.html":    :test,
      ],
      deps:            deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      { :httpoison,   "~> 1.0.0"              },
      { :poison,      "~> 3.1"                },
      { :excoveralls, "~> 0.5.5", only: :test },
    ]
  end

  defp escript_config do
    [
      main_module: Issues.CLI
    ]
  end
end
