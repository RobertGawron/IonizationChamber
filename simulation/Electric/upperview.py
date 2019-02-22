import math
import agros2d as a2d


def initProblem():
    problem = a2d.problem(clear = True)
    problem.coordinate_type = "planar"
    problem.mesh_type = "triangle"    
    
    return problem


def initSimulatedField():
    electrostatic = a2d.field("electrostatic")
    electrostatic.analysis_type = "steadystate"
    electrostatic.matrix_solver = "mumps"
    electrostatic.number_of_refinements = 1
    electrostatic.polynomial_order = 2
    electrostatic.adaptivity_type = "disabled"
    electrostatic.solver = "linear"
    
    return electrostatic 


def setBoundaries(field):
    field.add_boundary("Source", "electrostatic_potential", {"electrostatic_potential" : 20})
    field.add_boundary("Ground", "electrostatic_potential", {"electrostatic_potential" : 0})
    field.add_boundary("Border", "electrostatic_surface_charge_density", {"electrostatic_surface_charge_density" : 0})


def setMaterials(field):
    field.add_material("Air", {"electrostatic_permittivity" : 1, "electrostatic_charge_density" : 0})
    field.add_material("Antena", {"electrostatic_permittivity" : 10, "electrostatic_charge_density" : 0})


class ElectrodeShape:
    def __init__(self, **kwds):
        self.__dict__.update(kwds)


def addElectrodeToSimulation(electrode, boundary, material):
    a2d.geometry.add_rect(electrode.x, electrode.y, electrode.dx, electrode.dy, boundaries = {"electrostatic" : boundary})     
    
    labelx = electrode.x + (electrode.dx / 2)
    labely = electrode.y + (electrode.dy / 2)       
    a2d.geometry.add_label(labelx, labely, materials = {"electrostatic" : material})


def main():
    problem = problemToSolve = initProblem()

    field = initSimulatedField()
    setBoundaries(field)
    setMaterials(field)

    
    chamberHeight = 1.0
    chamberLength = 4.0
    copperPlateThickness =0.01
    
    electrodeLeft   = ElectrodeShape(x = 0,             y = 0,             dx = -copperPlateThickness, dy = chamberHeight) 
    electrodeRight  = ElectrodeShape(x = chamberLength, y = 0,             dx = copperPlateThickness,  dy = chamberHeight)    
    electrodeTop    = ElectrodeShape(x = 0,             y = chamberHeight, dx = chamberLength,         dy = copperPlateThickness)
    
    addElectrodeToSimulation(electrodeLeft, "Ground", "Antena")
    addElectrodeToSimulation(electrodeRight, "Ground", "Antena")
    addElectrodeToSimulation(electrodeTop, "Ground", "Antena")
        
    guardWidth = 0.2
    guardDistance = 0.2
    boardDistance = 0.2
    
    xoffset = 0.0
    electrodeBottom1 = ElectrodeShape(x=xoffset, y=0, dx=boardDistance, dy=-copperPlateThickness)
    
    xoffset+=boardDistance
    electrodeBottom2 = ElectrodeShape(x=xoffset, y=0, dx=guardDistance, dy=-copperPlateThickness)
    
    xoffset+=guardDistance
    electrodeBottom3 = ElectrodeShape(x=xoffset, y=0, dx=guardWidth, dy=-copperPlateThickness)
    
    xoffset+=guardWidth
    electrodeBottom4 = ElectrodeShape(x=xoffset, y=0, dx=guardDistance, dy=-copperPlateThickness)
    
    
    # middle
    xoffset+=guardDistance
    electrodeBottom5 = ElectrodeShape(x=xoffset, y=0, dx=(chamberLength-2*xoffset), dy=-copperPlateThickness)


    xoffset+=(chamberLength-2*xoffset)
    electrodeBottom6 = ElectrodeShape(x=xoffset, y=0, dx=guardDistance, dy=-copperPlateThickness)
    
    xoffset+=guardDistance
    electrodeBottom7 = ElectrodeShape(x=xoffset, y=0, dx=guardWidth, dy=-copperPlateThickness)
    
    xoffset+=guardWidth
    electrodeBottom8 = ElectrodeShape(x=xoffset, y=0, dx=guardDistance, dy=-copperPlateThickness)
    
    xoffset+=guardDistance
    electrodeBottom9 = ElectrodeShape(x=xoffset, y=0, dx=boardDistance, dy=-copperPlateThickness)
    

    addElectrodeToSimulation(electrodeBottom1, "Ground", "Antena") # electrode A
    addElectrodeToSimulation(electrodeBottom2, "Border", "Air")
    addElectrodeToSimulation(electrodeBottom3, "Source", "Antena")
    addElectrodeToSimulation(electrodeBottom4, "Border", "Air")
    addElectrodeToSimulation(electrodeBottom5, "Source", "Antena") # electrode B
    addElectrodeToSimulation(electrodeBottom6, "Border", "Air")
    addElectrodeToSimulation(electrodeBottom7, "Source", "Antena")
    addElectrodeToSimulation(electrodeBottom8, "Border", "Air")
    
    addElectrodeToSimulation(electrodeBottom9, "Ground", "Antena") # electrode A
    
    
    a2d.geometry.add_label(0.1, 0.1, materials = {"electrostatic" : "Air"})
    
    a2d.view.zoom_best_fit()
    problem.solve()


if __name__ == "__main__":
    main()
