//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CCHCMS.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Appointment
    {
        public long Id { get; set; }
        public string Name { get; set; }
        public long DoctorId { get; set; }
        public Nullable<long> PatientId { get; set; }
        public Nullable<System.DateTime> AppointDate { get; set; }
        public System.DateTime RequesteDate { get; set; }
        public System.DateTime RequestedOn { get; set; }
    
        public virtual DoctorPatient DoctorPatient { get; set; }
        public virtual User User { get; set; }
    }
}
