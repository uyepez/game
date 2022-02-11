/// @description ajste de tamaño
//if (browser_height != height || browser_width != width )
  //  {
    width = min(base_width, browser_width);
    height = min(base_height, browser_height);
    scale_canvas(base_width, base_height, width, height, true);
  //  }
