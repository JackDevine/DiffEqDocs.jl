using Documenter,DiffEqDevTools,DiffEqBase,FiniteElementDiffEq,
      DiffEqProblemLibrary, StokesDiffEq

makedocs(modules=[DiffEqDevTools,DiffEqBase,FiniteElementDiffEq,
                  StokesDiffEq,OrdinaryDiffEq,DiffEqProblemLibrary],
         doctest=false, clean=true,
         format =:html,
         sitename="DifferentialEquations.jl",
         authors="Chris Rackauckas",
         pages = Any[
         "Home" => "index.md",
         "Tutorials" => Any[
         "tutorials/ode_example.md",
         "tutorials/sde_example.md",
         "tutorials/dae_example.md",
         "tutorials/fempoisson_example.md",
         "tutorials/femheat_example.md",
         "tutorials/femstochastic_example.md"
         ],
         "Basics" => Any[
           "basics/overview.md",
           "basics/common_solver_opts.md",
           "basics/solution.md",
           "basics/plot.md"
         ],
         "Problem Types" => Any[
           "problems/ODEProblem.md",
           "problems/SDEProblem.md",
           "problems/FEMProblem.md",
           "problems/StokesProblem.md"
         ],
         "Solver Options" => Any[
           "solvers/ode_solve.md",
           "solvers/sde_solve.md",
           "solvers/dae_solve.md",
           "solvers/fempoisson_solve.md",
           "solvers/femheat_solve.md",
           "solvers/fdmstokes_solve.md"
         ],
         "Manual" => Any[
           "man/performance_overloads.md",
           "man/callback_functions.md",
           "man/mesh.md",
           "man/output_specification.md",
           "man/conditional_dependencies.md",
           "man/progress_bar.md"
         ],
         "Add-Ons" => Any[
            "addons/parameter_estimation.md",
            "addons/sensitivity.md",
            "addons/parameterized_functions.md",
            "addons/dev_and_test.md"
         ]
         ])

deploydocs(
   repo = "github.com/JuliaDiffEq/DiffEqDocs.jl.git",
   target = "build",
   osname = "linux",
   julia = "0.5",
   deps = nothing,
   make = nothing)
