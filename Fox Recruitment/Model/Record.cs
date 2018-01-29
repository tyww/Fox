using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    public class Record//记录表
    {
        public Record() { }
        public Record(int reecord, DateTime time, int resumeID, int nID)
        {
            Reecord = reecord;
            Time = time;
            ResumeID = resumeID;
            NID = nID;
        }

        public int Reecord { get; set; }        
        public DateTime Time { get; set; }    //投递时间  
        public int ResumeID { get; set; }     //简历ID  
        public int NID { get; set; }          
    }
}
