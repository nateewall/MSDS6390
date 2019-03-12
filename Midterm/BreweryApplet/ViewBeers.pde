class ViewBeers extends PApplet
{
  private Controller control;
  private ArrayList<Beers> beers;
  private int margin, nX, nY, linethickness;
  public ViewBeers(Controller _control)
  {
    control = _control;
    beers = new ArrayList<Beers>();
  }

  public void settings()
  {
    int height=400;
    int width=700;
    int margin=20;
    int nX, nY;
    int linethickness=3;
    this.size(width, height);
    
  }
  
  
  public void draw()
  {
    this.background(89, 147, 242);
    getBar();
  }
  
  public void updateBeers(ArrayList<Beers> _beers)
  {
    beers = _beers;
  }
  
  private void getBar(){
    if(!beers.isEmpty())
    {
      strokeWeight( linethickness ); //bar border thickness   
      int beerLength=beers.size();
      float horzstep=(width-2*margin)/(beerLength); //evenly space the bars
      float barwidth=0.6*horzstep;
      float[] Y = new float[beerLength];
      float[] abvs = new float[beerLength];
      String[] label = new String[beerLength];
      int i = 0;
      for(Beers b: beers)
      {
        Y[i]=height-2*margin; 
        label[i] = b.getBeerName();
        try{
          float abv = b.getAbv();
          abvs[i] = ((400-2*20)/15)*abv;
        }
        catch(Exception e){abvs[i] = 400-2*20;}
        
        if(Y[i]>(height-2*margin-abvs[i])) {
          if(Y[i]-30>0){Y[i]-=30;} else{Y[i]=height-2*margin-abvs[i];} //grow each bar
        }
    
        if((nX>(margin+0.5*horzstep-0.5*barwidth+horzstep*i))&(nX<(margin+0.5*horzstep-0.5*barwidth+horzstep*i+barwidth))&(nY>margin)&nY<(margin+abvs[i])){
          fill(0);
          text("Beer Name: " + label[i],300, height - 20 ); //label each bar
          text("ABV: " + (abvs[i]/(400-2*20)/15) , 300, height - 8);
        } else {
          fill(255);
        }
        
        rect(margin+0.5*horzstep-0.5*barwidth+horzstep*i,margin,barwidth,abvs[i] ); //draw each bar
        fill(0);
        
        i++;
      }
      //printArray(Y);
      //printArray(abvs);
      //printArray(label);
      
    }
  }
  
  void mouseClicked() {
    nX = mouseX;
    nY = mouseY;
  } 
  
}
