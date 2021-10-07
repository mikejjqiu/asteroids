void intro() {
  int i = 0;
  while (i<16) {
    image(gif[i],width,height);
    i++;
    println(i);
    if (i == 16) i = 0;
  }
}
