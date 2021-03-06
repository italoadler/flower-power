String xrwImg = "./data/xrw.jpg";
PImage photo;

List<Bloom> blooms;

FlowerSystem fs;
GCXRWDataInjector dataInjector;

int c = color(24, 42, 45);

void setup() {
  size(1000, 800);
  background(255, 255, 255, 2);

  // Create FlowerSystem and inject data to it.
  fs = new FlowerSystem();
  dataInjector = new GCXRWDataInjector(null, loadImage(xrwImg), fs);
  dataInjector.injectData();
}

void draw() {
  fs.move();
  fs.draw();
}
