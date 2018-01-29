using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    public class Post //岗位
    {
        public Post() { }

        public Post(int postID, string station, string description, int nID, string pState)
        {
            PostID = postID;
            this.station = station;
            Description = description;
            NID = nID;
            PState = pState;
        }

        public int PostID { get; set; }         
        public string station { get; set; }        //岗位
        public string Description { get; set; }    //岗位描述
        public int NID { get; set; }
        public string PState { get; set; }//            
    }
}
