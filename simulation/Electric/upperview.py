import math
import agros2d as a2d

ENERGY_TOLERANCE = 1e-9

# problem
problem = a2d.problem(clear = True)
problem.coordinate_type = "planar"
problem.mesh_type = "triangle"

# electrostatic
electrostatic = a2d.field("electrostatic")
electrostatic.analysis_type = "steadystate"
electrostatic.matrix_solver = "mumps"
electrostatic.number_of_refinements = 0
electrostatic.polynomial_order = 2
electrostatic.solver = "linear"


# boundaries
electrostatic.add_boundary("Source", "electrostatic_potential", {"electrostatic_potential" : 24})
electrostatic.add_boundary("Ground", "electrostatic_potential", {"electrostatic_potential" : 0})
electrostatic.add_boundary("Border", "electrostatic_surface_charge_density", {"electrostatic_surface_charge_density" : 0})

# materials
electrostatic.add_material("Air", {"electrostatic_permittivity" : 1, "electrostatic_charge_density" : 0})
electrostatic.add_material("Antena", {"electrostatic_permittivity" : 1, "electrostatic_charge_density" : 1})

# geometry
geometry = a2d.geometry

geometry.add_circle(0, 0, 2, boundaries = {"electrostatic" : "Source"})
geometry.add_circle(0, 0, 0.01, boundaries = {"electrostatic" : "Ground"})


geometry.add_label(0.879551, 0.764057, materials = {"electrostatic" : "Air"})
geometry.add_label(0, 0, materials = {"electrostatic" : "Antena"})

a2d.view.zoom_best_fit()
problem.solve()