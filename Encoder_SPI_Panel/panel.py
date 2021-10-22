#!python3
from kikit.panelize import Panel, fromMm, wxPointMM, Origin, fromDegrees, findBoundingBox
import shapely
from shapely.geometry import box
import pcbnew
import sys

startX = fromMm(50)
startY = fromMm(50)

frameThicknessMm = 5
frameThickness = fromMm(frameThicknessMm)
spacing = fromMm(3)
tabWidth = fromMm(4)

netRenamePattern="B{n}-{orig}"
refRenamePattern="B{n}-{orig}"
netRenamer = lambda x, y: netRenamePattern.format(n=x, orig=y)
refRenamer = lambda x, y: refRenamePattern.format(n=x, orig=y)



panel = Panel()

# size1, cuts = panel.makeTightGrid("../Encoder_SPI_MA730/Encoder_SPI_MA730.kicad_pcb", 1, 1, pcbnew.wxPoint(startX, startY), spacing, spacing, 
#               spacing, 0, 0, sourceArea=None, tolerance=fromMm(100), 
#               verTabWidth=tabWidth, horTabWidth=1, verTabCount=1, horTabCount=1,
#               rotation=0)
size1 = panel.appendBoard("../Encoder_AEAT_8800_Q24/Encoder_AEAT_8800_Q24.kicad_pcb", pcbnew.wxPoint(startX, startY), origin=Origin.TopLeft, tolerance=fromMm(50), rotationAngle=fromDegrees(90), netRenamer=netRenamer, refRenamer=refRenamer)
size2 = panel.appendBoard("../Encoder_SPI_TLE5012B/Encoder_SPI_TLE5012B.kicad_pcb", pcbnew.wxPoint(size1.x + size1.width + spacing, startY), origin=Origin.TopLeft, tolerance=fromMm(50), rotationAngle=fromDegrees(90), netRenamer=netRenamer, refRenamer=refRenamer)
size3 = panel.appendBoard("../Encoder_SPI_MA730/Encoder_SPI_MA730.kicad_pcb", pcbnew.wxPoint(size2.x + size2.width + spacing, startY), origin=Origin.TopLeft, tolerance=fromMm(50), rotationAngle=fromDegrees(90), netRenamer=netRenamer, refRenamer=refRenamer)
size4 = panel.appendBoard("../Encoder_SPI_MA730/Encoder_SPI_MA730.kicad_pcb", pcbnew.wxPoint(size3.x + size3.width + spacing, startY), origin=Origin.TopLeft, tolerance=fromMm(50), rotationAngle=fromDegrees(90), netRenamer=netRenamer, refRenamer=refRenamer)
size5 = panel.appendBoard("../Encoder/Encoder.kicad_pcb", pcbnew.wxPoint(size4.x + size4.width + spacing, startY), origin=Origin.TopLeft, tolerance=fromMm(50), rotationAngle=fromDegrees(90), netRenamer=netRenamer, refRenamer=refRenamer)
size6 = panel.appendBoard("../Encoder_SPI/Encoder.kicad_pcb", pcbnew.wxPoint(size5.x + size5.width + spacing, startY), origin=Origin.TopLeft, tolerance=fromMm(50), rotationAngle=fromDegrees(90), netRenamer=netRenamer, refRenamer=refRenamer)
minx, miny, maxx, maxy = panel.boardSubstrate.bounds()

tabs, cuts = panel.layerToTabs("Eco1.User", fromMm(4))
panel.appendSubstrate(tabs)
panel.makeMouseBites(cuts, diameter=fromMm(0.5), spacing=fromMm(0.9), offset=fromMm(-0.25))

gapFiller = box(size2.x, size1.y-spacing, size6.x + size6.width, size2.y-spacing)
panel.appendSubstrate(gapFiller)

topRail = box(minx, maxy + spacing, maxx, maxy + spacing + frameThickness)
bottomRail = box(minx, miny - spacing, maxx, miny - spacing - frameThickness)
panel.appendSubstrate(topRail)
panel.appendSubstrate(bottomRail)


panel.addMillFillets(fromMm(1))
panel.copperFillNonBoardAreas()
panel.addFiducials(horizontalOffset=fromMm(10), verticalOffset=fromMm(2.5), copperDiameter=fromMm(1), openingDiameter=fromMm(1))
panel.addTooling(horizontalOffset=fromMm(5), verticalOffset=fromMm(2.5), diameter=fromMm(1.5))

panel.save("Encoder_SPI_Panel_v1_1.kicad_pcb")


# size1 = panel.appendBoard("./i2c_jst_multi_for_kikit.kicad_pcb", pcbnew.wxPoint(startX, startY), origin=Origin.Center, tolerance=fromMm(50))
# panel.boardSubstrate.boundary
# minx, miny, maxx, maxy = panel.boardSubstrate.bounds()
# # topRail = box(minx, maxy + spacing - fromMm(0.001), maxx, maxy + spacing + frameThickness)
# # bottomRail = box(minx, miny - spacing + fromMm(0.001), maxx, miny - spacing - frameThickness)
# # gapFiller = box(minx, maxy, maxx-fromMm(18), maxy+spacing)
# # panel.appendSubstrate(topRail)
# # panel.appendSubstrate(bottomRail)
# # panel.appendSubstrate(gapFiller)
# #panel.makeRailsTb(frameThickness)
# tabs, cuts = panel.layerToTabs("Eco1.User", fromMm(4))
# panel.appendSubstrate(tabs)
# panel.makeMouseBites(cuts, diameter=fromMm(0.5), spacing=fromMm(0.9), offset=fromMm(-0.25))
# panel.addMillFillets(fromMm(1))
# #panel.copperFillNonBoardAreas()
# panel.addFiducials(horizontalOffset=fromMm(10), verticalOffset=fromMm(2.5), copperDiameter=fromMm(1), openingDiameter=fromMm(1))
# panel.addTooling(horizontalOffset=fromMm(5), verticalOffset=fromMm(2.5), diameter=fromMm(1.5))
# panel.save("i2c_jst_multi_panel.kicad_pcb")