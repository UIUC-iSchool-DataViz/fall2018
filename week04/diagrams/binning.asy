settings.outformat = "svg";
import is590lib;

unitsize(1.0cm);
srand(123456);

// Make our bottom edge


void draw_binbox(int N) {

  draw((0,0)--(10,0));
  real xdist = 10.0 / N;
  // We do N+1 here so that we get both sides
  for (int i = 0; i < N + 1; ++i){
    draw((xdist * i, 0)--(xdist*i,2));
  }
  label("$0.0$", (0.0, 1.0), W);
  label("$1.0$", (10.0, 1.0), E);
}

draw_binbox(5);
shipout("binning_1.svg");
