using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Jello.Areas._Related
{
    public class _Issues 
    {
        public int TotalIssues  { get; set; }
        public List<_Issue> Issues { get; set; } = new List<_Issue>();
        public int ParentId { get; set; }
        public string ParentIdName { get; set; }
        public string ParentName { get; set; }
    }

    public class _Issue
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Type { get; set; }
        public string Status { get; set; }
        public string Date { get; set; }
    }
}
