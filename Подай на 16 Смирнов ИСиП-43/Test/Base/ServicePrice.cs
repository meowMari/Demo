//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Test.Base
{
    using System;
    using System.Collections.Generic;
    
    public partial class ServicePrice
    {
        public int ID { get; set; }
        public string Service { get; set; }
        public string Image { get; set; }
        public string Time { get; set; }
        public string Price { get; set; }
        public string Discount { get; set; }
        public string ImagePath
        {
            get
            {
                if (Image.Length > 0)
                {
                    return @".." + Image.ToString();
                }
                else
                {
                    return @"..\agents\service.png";
                }
            }
        }
    }
}
