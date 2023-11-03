#SR - small-rec
#LSR - left-small-rec
#RSR - right-small-rec
#BR - big - rec 
#LBR - left-big-rec
#RBR - right-big-rec

fun nordiske-flagg(small-rec, SR-height, LSR-lenght, RSR-lenght, big-rec, BR-height, LBR-lenght, RBR-lenght, cross-colour, cross-dimention):
   frame(
    overlay-align("left", "top", rectangle(LSR-lenght, SR-height, "solid", small-rec),
      overlay-align("left", "bottom", rectangle(LSR-lenght, SR-height, "solid", small-rec),
        overlay-align("left", "top", rectangle(LBR-lenght, BR-height, "solid", big-rec),
          overlay-align("left", "bottom", rectangle(LBR-lenght, BR-height, "solid", big-rec),
            overlay-align("right", "top", rectangle(RSR-lenght, SR-height, "solid", small-rec),
              overlay-align("right", "bottom", rectangle(RSR-lenght, SR-height, "solid", small-rec),
                overlay-align("right", "top", rectangle(RBR-lenght, BR-height, "solid", big-rec),
                  overlay-align("right", "bottom", rectangle(RBR-lenght, BR-height, "solid", big-rec), 
                    rectangle((cross-dimention + LBR-lenght + RBR-lenght), (cross-dimention + (BR-height * 2)), "solid", cross-colour))))))))))
end

norges-flagg = nordiske-flagg("red", 60, 60, 120, "white", 70, 70, 130, "dark-blue", 20)
norges-flagg

danmarks-flagg = nordiske-flagg("red", 0, 0, 0, "red", 120, 120, 210, "white", 40)
danmarks-flagg

finlands-flagg = nordiske-flagg("white", 0, 0, 0, "white", 40, 50, 100, "dark-blue", 30)
finlands-flagg

islands-flagg = nordiske-flagg("blue", 70, 70, 140, "white", 80, 80, 150, "red", 20)
islands-flagg

sveriges-flagg = nordiske-flagg("blue", 0, 0 , 0, "blue", 40, 50, 90, "yellow", 20)
sveriges-flagg

faeroyenes-flagg = nordiske-flagg("white", 60, 60, 120, "blue", 70, 70, 130, "red", 20)
faeroyenes-flagg
