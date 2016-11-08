class Species{
int id;
String name;
String specie;
int qty;
color colour;

Species(int id,String name, String specie,int qty){
this.id=id;
this.name=name;
this.specie= specie;
this.qty=qty;
colour = color(random(0, 255), random(0, 255), random(0, 255));

}



}