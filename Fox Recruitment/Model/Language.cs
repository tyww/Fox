using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    public class Language
    {
        public Language() { }
        public Language(int languageID, int species)
        {
            LanguageID = languageID;
            this.species = species;
        }

        public int LanguageID  {get;set;}
        public int species { get; set; }        //语言种类
    }
}
