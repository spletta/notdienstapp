module EventsHelper

  COLOR_TO_BSCLASS = {
    'Weiss' =>   '', 
    'Blau' =>    'btn-primary',
    'Hellblau' =>'btn-info',
    'Gruen' =>   'btn-success',
    'Gelb' =>    'btn-warning',
    'Rot' =>     'btn-danger',
    'Grau' =>    'btn-inverse'
  }

  def bs_button_for_color(c)
    COLOR_TO_BSCLASS.fetch(c, nil)
  end
end
