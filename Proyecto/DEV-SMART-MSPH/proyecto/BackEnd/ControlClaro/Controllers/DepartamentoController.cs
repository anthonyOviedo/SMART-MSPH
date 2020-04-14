using Business.Models;
using Business.Services;
using System;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using static Business.Utilities.Functions;

namespace ControlClaro.Controllers
{
    public class DepartamentoController : ApiController
    {
        #region Definition of Services

        [HttpGet]   
        [Route("api/Departamento/list")]
        public HttpResponseMessage Lista()
        {
            HttpResponseMessage response = new HttpResponseMessage(HttpStatusCode.OK);
            ResponseConfig config = VerifyAuthorization(Request.Headers);
            RestResponse data = new RestResponse();

            try
            {
                using (DepartmentService service = new DepartmentService())
                {
                    var departments = service.Lista();
                    data.result = new { departments };
                    data.status = true;
                }
            }
            catch (Exception ex)
            {
                response.StatusCode = config.isAuthenticated ? HttpStatusCode.BadRequest : HttpStatusCode.Unauthorized;
                data.status = false;
                data.message = ex.Message;
                data.error = NewError(ex, "Lista de departamentos");
            }
            finally
            {
                response.Content = CreateContent(data);
            }

            return response;
        }

        [HttpPost]
        [Route("api/Departamento/add")]
        public HttpResponseMessage addDepartment([FromBody] Departamento department)
        {
            HttpResponseMessage response = new HttpResponseMessage(HttpStatusCode.OK);
            ResponseConfig config = VerifyAuthorization(Request.Headers);
            RestResponse data = new RestResponse();

            try
            {
                VerifyMessage(config.errorMessage);

                using ( DepartmentService service = new DepartmentService())
                {
                    service.addDepartement(department);
                    data.result = null;
                    data.status = true;
                    data.message = "Departamento creado";
                }
            }
            catch (Exception ex)
            {
                response.StatusCode = config.isAuthenticated ? HttpStatusCode.BadRequest : HttpStatusCode.Unauthorized;
                data.status = false;
                data.message = ex.Message;
                data.error = NewError(ex, "Registro de Departamentos");
            }
            finally
            {
                response.Content = CreateContent(data);
            }

            return response;
        }


        [HttpDelete]
        [Route("api/Departamento/delete/{departmentId}")]
        public HttpResponseMessage Eliminar(string departmentId)
        {
            HttpResponseMessage response = new HttpResponseMessage(HttpStatusCode.OK);
            ResponseConfig config = VerifyAuthorization(Request.Headers);
            RestResponse data = new RestResponse();

            try
            {
                VerifyMessage(config.errorMessage);

                using (DepartmentService service = new DepartmentService())
                {
                    service.deleteDepartment(departmentId);
                    data.result = null;
                    data.status = true;
                    data.message = "El Departamento seleccionado se eliminó correctamente";
                }
            }

            catch (Exception ex)
            {
                response.StatusCode = config.isAuthenticated ? HttpStatusCode.BadRequest : HttpStatusCode.Unauthorized;
                data.status = false;
                data.message = ex.Message;
                data.error = NewError(ex, "Eliminar usuario");
            }
            finally
            {
                response.Content = CreateContent(data);
            }

            return response;
        }


        [HttpPost]
        [Route("api/Departamento/update")]
        public HttpResponseMessage updateUser([FromBody] Departamento departamento)
        {
            HttpResponseMessage response = new HttpResponseMessage(HttpStatusCode.OK);
            ResponseConfig config = VerifyAuthorization(Request.Headers);
            RestResponse data = new RestResponse();

            try
            {
                VerifyMessage(config.errorMessage);

                using (DepartmentService service = new DepartmentService())
                {
                    service.updateDepartement(departamento);
                    data.result = null;
                    data.status = true;
                    data.message = "El Registro del usuario se completó correctamente";
                }
            }
            catch (Exception ex)
            {
                response.StatusCode = config.isAuthenticated ? HttpStatusCode.BadRequest : HttpStatusCode.Unauthorized;
                data.status = false;
                data.message = ex.Message;
                data.error = NewError(ex, "Registro del usuario");
            }
            finally
            {
                response.Content = CreateContent(data);
            }

            return response;
        }

        #endregion

        //[HttpDelete]
        //[Route("api/usuario/eliminar/{usuario_Id}/{emp_Id}/{producto_Id}")]
        //public HttpResponseMessage Eliminar(string usuario_Id)
        //{
        //    HttpResponseMessage response = new HttpResponseMessage(HttpStatusCode.OK);
        //    ResponseConfig config = VerifyAuthorization(Request.Headers);
        //    RestResponse data = new RestResponse();

        //    try
        //    {
        //        VerifyMessage(config.errorMessage);

        //        using (UsuarioService service = new UsuarioService())
        //        {
        //            service.Eliminar(usuario_Id);
        //            data.result = null;
        //            data.status = true;
        //            data.message = "El usuario seleccionado se eliminó correctamente";
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        response.StatusCode = config.isAuthenticated ? HttpStatusCode.BadRequest : HttpStatusCode.Unauthorized;
        //        data.status = false;
        //        data.message = ex.Message;
        //        data.error = NewError(ex, "Eliminar usuario");
        //    }
        //    finally
        //    {
        //        response.Content = CreateContent(data);
        //    }

        //    return response;
        //}

        //[HttpPost]
        //[Route("api/usuario/change-password/{newPassword}")]
        //public HttpResponseMessage ChangePassword([FromBody] Usuario usuario, string newPassword)
        //{
        //    HttpResponseMessage response = new HttpResponseMessage(HttpStatusCode.OK);
        //    ResponseConfig config = VerifyAuthorization(Request.Headers);
        //    RestResponse data = new RestResponse();

        //    try
        //    {
        //        VerifyMessage(config.errorMessage);

        //        using (UsuarioService service = new UsuarioService())
        //        {
        //            service.ChangePassword(usuario.usuario_Id, usuario.password, newPassword);
        //            data.result = null;
        //            data.status = true;
        //            data.message = "El cambio de contraseña se completó correctamente";
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        response.StatusCode = config.isAuthenticated ? HttpStatusCode.BadRequest : HttpStatusCode.Unauthorized;
        //        data.status = false;
        //        data.message = ex.Message;
        //        data.error = NewError(ex, "Cambio de contraseña");
        //    }
        //    finally
        //    {
        //        response.Content = CreateContent(data);
        //    }

        //    return response;
        //}
        //#endregion
    }
}
