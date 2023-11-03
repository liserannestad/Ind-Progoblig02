fun nordiske-flagg(flagg :: String) -> Image:
  if flagg == "Norge":
    frame(
    overlay-align("left", "top", square(60, "solid", "red"),
      overlay-align("left", "bottom", square(60, "solid", "red"),
        overlay-align("left", "top", square(70, "solid", "white"),
          overlay-align("left", "bottom", square(70, "solid", "white"),
            overlay-align("right", "top", rectangle(120, 60, "solid", "red"),
              overlay-align("right", "bottom", rectangle(120, 60, "solid", "red"),
                overlay-align("right", "top", rectangle(130, 70, "solid", "white"),
                  overlay-align("right", "bottom", rectangle(130, 70, "solid", "white"), 
                      rectangle(220, 160, "solid", "darkblue"))))))))))
  else if flagg == "Danmark":
    frame(
    overlay-align("left", "top", square(120, "solid", "red"),
      overlay-align("left", "bottom", square(120, "solid", "red"),
        overlay-align("right", "top", rectangle(210, 120, "solid", "red"),
          overlay-align("right", "bottom", rectangle(210, 120, "solid", "red"), 
              rectangle(370, 280, "solid", "white"))))))
  else if flagg == "Sverige":
    frame(
    overlay-align("left", "top", rectangle(50, 40, "solid", "blue"),
      overlay-align("left", "bottom", rectangle(50, 40, "solid", "blue"),
        overlay-align("right", "top", rectangle(90, 40, "solid", "blue"),
          overlay-align("right", "bottom", rectangle(90, 40, "solid", "blue"),
              rectangle(160, 100, "solid", "yellow"))))))
  else if flagg == "Finland":
    frame(
    overlay-align("left", "top", rectangle(50, 40, "solid", "white"),
      overlay-align("left", "bottom", rectangle(50, 40, "solid", "white"),
        overlay-align("right", "top", rectangle(100, 40, "solid", "white"),
          overlay-align("right", "bottom", rectangle(100, 40, "solid", "white"), 
              rectangle(180, 110, "solid", "darkblue"))))))
  else if flagg == "Island":
    frame(
    overlay-align("left", "top", square(70, "solid", "blue"),
      overlay-align("left", "bottom", square(70, "solid", "blue"),
        overlay-align("left", "top", square(80, "solid", "white"),
          overlay-align("left", "bottom", square(80, "solid", "white"),
            overlay-align("right", "top", rectangle(140, 70, "solid", "blue"),
              overlay-align("right", "bottom", rectangle(140, 70, "solid", "blue"),
                overlay-align("right", "top", rectangle(150, 80, "solid", "white"),
                  overlay-align("right", "bottom", rectangle(150, 80, "solid", "white"), 
                      rectangle(250, 180, "solid", "red"))))))))))    
  else if flagg == "Færøyene":
    frame(
    overlay-align("left", "top", square(60, "solid", "white"),
      overlay-align("left", "bottom", square(60, "solid", "white"),
        overlay-align("left", "top", square(70, "solid", "blue"),
          overlay-align("left", "bottom", square(70, "solid", "blue"),
            overlay-align("right", "top", rectangle(120, 60, "solid", "white"),
            overlay-align("right", "bottom", rectangle(120, 60, "solid", "white"),
                overlay-align("right", "top", rectangle(130, 70, "solid", "blue"),
                  overlay-align("right", "bottom", rectangle(130, 70, "solid", "blue"), 
                      rectangle(220, 160, "solid", "red"))))))))))
  end
end

nordiske-flagg("Norge")
nordiske-flagg("Sverige")
nordiske-flagg("Danmark")
nordiske-flagg("Finland")
nordiske-flagg("Island")
nordiske-flagg("Færøyene")
