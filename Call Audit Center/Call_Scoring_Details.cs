//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Call_Audit_Center
{
    using System;
    using System.Collections.Generic;
    
    public partial class Call_Scoring_Details
    {
        public long Call_Score_ID { get; set; }
        public Nullable<long> Call_ID { get; set; }
        public Nullable<byte> Question_ID { get; set; }
        public string Answer { get; set; }
        public Nullable<double> Score { get; set; }
    
        public virtual Call_Details Call_Details { get; set; }
        public virtual Question_Details Question_Details { get; set; }
    }
}
