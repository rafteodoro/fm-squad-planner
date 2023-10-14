# frozen_string_literal: true

# Helper methods for the Posmaps controller.
module PosmapsHelper
  def playable_positions(posmap)
    array = []
    array << 'GK' if posmap.gk >= 12
    array << 'SW' if posmap.sw >= 12
    array << 'DL' if posmap.dr >= 12
    array << 'DC' if posmap.dc >= 12
    array << 'DR' if posmap.dl >= 12
    array << 'WBL' if posmap.wbl >= 12
    array << 'WBR' if posmap.wbr >= 12
    array << 'DM' if posmap.dm >= 12
    array << 'ML' if posmap.ml >= 12
    array << 'MC' if posmap.mc >= 12
    array << 'MR' if posmap.mr >= 12
    array << 'AML' if posmap.aml >= 12
    array << 'AMC' if posmap.amc >= 12
    array << 'AMR' if posmap.amr >= 12
    array << 'ST' if posmap.st >= 12

    array << 'No playable positions, edit the position map.' if array.empty?

    array
  end
end
