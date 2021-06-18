defmodule HtmlSanitizeEx.Mixfile do
  use Mix.Project

  def project do
    [
      app: :suexcxine_html_sanitize_ex,
      version: "1.4.0",
      elixir: "~> 1.0",
      description: "HTML sanitizer for Elixir",
      source_url: "https://github.com/suexcxine/html_sanitize_ex",
      package: [
        name: "suexcxine_html_sanitize_ex",
        maintainers: ["René Föhring", "suexcxine"],
        licenses: ["MIT"],
        links: %{
          "GitHub" => "https://github.com/suexcxine/html_sanitize_ex"
        }
      ],
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger, :mochiweb]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:mochiweb, "~> 2.15"}
    ]
  end
end
