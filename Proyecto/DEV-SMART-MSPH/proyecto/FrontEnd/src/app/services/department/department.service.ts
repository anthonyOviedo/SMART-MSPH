import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Usuario, Persona, Departamento, ApiResponse } from 'src/app/models/model.index';
import { Router } from '@angular/router';
import { map } from 'rxjs/operators';
import { URL_SERVICE } from 'src/app/config/config';
import Swal from 'sweetalert2';
@Injectable({
  providedIn: 'root'
})
export class DepartmentService {

  Departamento: Departamento;
  Persona: Persona;
  usuario: Usuario;


  constructor(
    private http: HttpClient
  ) {
  }

  updateDepartment(departament: Departamento) {
    let url = `${URL_SERVICE}/Departamento/update`;
    return this.http.post(url, departament)
      .pipe(
        map((resp: ApiResponse) => Swal.fire({ title: 'Acutalizacion de datos exitosa', text: resp.message, type: 'success' }))
      );
  }
  getDepartments() {
    const url = `${URL_SERVICE}/Departamento/list`;
    return this.http.get(url).pipe(map((data: ApiResponse) => data.result.departments));
  }

  addDepartment(nDId, nDnombre, nDpersona_id) {
    let url = `${URL_SERVICE}/Departamento/add`;
    return this.http.post(url, new Departamento(+nDId, nDnombre, nDpersona_id))
      .pipe(
        map((resp: ApiResponse) => Swal.fire({ title: 'Registro exitoso', text: resp.message, type: 'success' }))
      );
  }

  deleteDepartement(departmentId) {
    let url = `${URL_SERVICE}/Departamento/delete/${departmentId}`;
    return this.http.delete(url)
      .pipe(
        map((resp: ApiResponse) => Swal.fire({ title: 'Se elimino el Departamento', text: resp.message, type: 'success' }))
      );
  }

}
