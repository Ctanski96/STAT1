library("ggplot2")
parti = read.csv2(file = "Labb/Parti-utf.csv")
head(parti)


p = ggplot(parti) + aes(x = Parti, y = Procent) + geom_bar(stat = "identity")
p + theme_bw ()
p + scale_y_continuous (breaks = seq(from = 0, to = 50, by = 5))
p + coord_flip () + aes(x = reorder(Parti, +Procent), y = Procent, fill = Parti) + scale_y_continuous (breaks = seq(from = 0, to = 50, by = 5)) + theme_bw()

