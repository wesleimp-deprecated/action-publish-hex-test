defmodule ActionPublishHexTest.MixProject do
  use Mix.Project

  def project do
    [
      app: :action_publish_hex_test,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: "Github action-publish-hex test",
      package: [
        maintainers: ["wesleimp"],
        licenses: ["MIT"],
        links: %{"GitHub" => "https://github.com/wesleimp/action-publish-hex"}
      ]
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
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
