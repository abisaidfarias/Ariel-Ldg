//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace IzyMarketingMailerLog
{
    using System;
    using System.Collections.Generic;
    
    public partial class EmailTestings
    {
        public long Id { get; set; }
        public string Email { get; set; }
        public long ListEmailTestingId { get; set; }
        public System.DateTime CreatedDate { get; set; }
    
        public virtual ListEmailTestings ListEmailTestings { get; set; }
    }
}
