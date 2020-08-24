#
# Karaat vs prijs per zuiverheid in scatter plot diagram
ggplot(data=diamonds, aes(x=carat, y=price)) + 
  geom_point(aes(color=clarity)) + labs(title="Diamonds Are forever", subtitle="Karaat vs Prijs", x="Karaat", y="Prijs ($)", color="Zuiverheid")
