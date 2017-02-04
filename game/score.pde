class Score
{
    float xpos=260;
    float ypos=height;
    
    Score(float x,float y)
    {
      this.xpos=x;
      this.ypos=y;
    }
    
    void goUp()
    {
      
      if (ypos> (300) )
      {
        fill(#FFF812);
        textSize(60);
        text("YOUR SCORE: ", xpos,ypos);
        
        text(fscore, xpos+300,ypos);
        text("THANKS FOR PLAYING",xpos,ypos+70);
        ypos--;
      }
      fill(#FFF812);
      textSize(60);
      text("YOUR SCORE: ", xpos,ypos);
      text(fscore, xpos+300,ypos);
      text("THANKS FOR PLAYING",xpos,ypos+70);
    }
}