# Excron

[![Codacy Badge](https://app.codacy.com/project/badge/Grade/06e5f6f673f44bc6bc2846c1038d6602)](https://www.codacy.com/gh/kchrismucheke/excron/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=kchrismucheke/excron&amp;utm_campaign=Badge_Grade)

A cron-like library to run jobs in Elixir.

    - Easy config
    - Tiny and readable
    - Cluster support with each job running in only one node

## Installation

    ````elixir
        def deps.do 
        [
            {:excron, [github: "kchrismucheke/excron"]}
        ]
        end
    ````

## Usage

In application.ex, include Ex.Worker in your supervisiton tree

    ````elixir
        {Excron.Worker, ex_cron_config()}
    ````

Then write your configuration

      ````elixir
        def ex_cron_config()
        [
            # runs `Foo.Bar.perform/0` every second
            %{cron: "* * * * * *", module: Foo.Bar},
            # runs `Foo.Bar.custom/0` every 5 minutes
            %{cron: "* */5 * * * *", module: Foo.Bar, function: :custom},
            # runs `IO.puts/1` with "hello world" every day at 1:30
            %{cron: "0 30 1 * * *", module: IO, function: :puts, args: ["hello world"]},
        ]
        end
      ````

Please note Cron expressions are evaluated over UTC time..
### To Do

    - Publish to hexdocs
