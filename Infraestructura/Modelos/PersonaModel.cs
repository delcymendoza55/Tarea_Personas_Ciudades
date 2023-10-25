using System;

namespace Infraestructura.Modelos
{
    public class PersonaModel
    {
        public int ID { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Direccion { get; set; }
        public string Email { get; set; }
        public string Celular { get; set; }
        public int Edad { get; set; }
        public int CiudadID { get; set; }
    }
}
