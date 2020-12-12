using System;

namespace Jello
{
    public class ImportException : Exception
    {
        public ImportException(string message, Exception ex)
            : base(message, ex)
        {
        }
    }
}
