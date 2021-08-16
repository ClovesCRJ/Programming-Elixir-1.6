defmodule Sequence.MixProject do
  use Mix.Project

  def project do
    [
      app: :sequence,
      version: "0.3.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      mod:                { Sequence.Application, [] },
      env:                [ initial_number: 123 ],
      registered:         [ Sequence.Server ],
      extra_applications: [ :logger ],
    ]
  end

  defp deps do
    [
      {:distillery, "~> 1.5", runtime: false},
    ]
  end
end
