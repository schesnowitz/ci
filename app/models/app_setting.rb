class AppSetting < ApplicationRecord


 validates_presence_of :tab_name, :theme_name


  private

  NAVBAR_COLOR = %w(
    primary
    light
    dark
  )

  FRONT_END_COLOR = %w(
    aqua
    blue
    green
    orange
    pink
    purple
    red
    tan
    turquoise
    yellow
  )

  APP_THEME = %w(  
    default
    cerulean
    darkly
    litera
    materia
    sandstone
    slate
    superhero
    cosmo
    flatly
    lumen
    minty
    simplex
    solar
    united
    cyborg
    journal
    lux
    pulse
    sketchy
    spacelab
    yeti
  )
end
