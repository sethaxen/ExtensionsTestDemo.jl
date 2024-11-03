# ExtensionsTestDemo

[![Build Status](https://github.com/sethaxen/ExtensionsTestDemo.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/sethaxen/ExtensionsTestDemo.jl/actions/workflows/CI.yml?query=branch%3Amain)

Demo of change of extension behavior in Julia v1.11.
Package defines an extension that depends on StatsBase and Random.
StatsBase also depends on Random.
In Julia v1.10, loading StatsBase and the package loaded also the extension, since Random was implicitly loaded by StatsBase.
In Julia v1.11, one must also explicitly load Random to load the extension.