  
// The following short CSV file called "mammals.csv" is parsed 
// in the code below. It must be in the project's "data" folder.
//
// id,species,name
// 0,Capra hircus,Goat
// 1,Panthera pardus,Leopard
// 2,Equus zebra,Zebra
Table table;
ArrayList<Species> species_array = new ArrayList<Species>();
void setup() {
  size(500,500);
  table = loadTable("mammals.csv", "header");

  println(table.getRowCount() + " total rows in table"); 

  for (TableRow row : table.rows()) {
    
    int id = row.getInt("id");
    String species = row.getString("species");
    String name = row.getString("name");
    int quantity= row.getInt("quantity");
    // Create a new species object
    Species specie= new Species(id,name,species,quantity);
    species_array.add(specie);
    println(name + " (" + species + ") has an ID of " + id);
  }
  
  for(int i=0;i< species_array.size();i++){
    println(species_array.get(i).name + " is a " +species_array.get(i).specie);
  }
     float gap= (float)width/species_array.size();
  for(int i=0;i< species_array.size();i++){
   Species speciex =species_array.get(i);
   
 
   float x=map(i,0,species_array.size(),0,width);
   float h=map(speciex.qty,0,40,0,-height);
  fill(speciex.colour);
         rect(x,height,gap,h);
   fill(255,0,0);
   textAlign(CENTER);
   text(speciex.name, x, height - 10);
  }
  

}

void draw(){
  

ellipse(width/2,height/2,50,50);

}