import { Component, OnInit } from '@angular/core';
import { DepartmentService } from '../../services/service.index';
import { UsuarioService } from '../../services/service.index';
import { ApiResponse, Departamento, Usuario } from 'src/app/models/model.index';
import { FormControl } from '@angular/forms';


@Component({
  selector: 'app-department',
  templateUrl: './department.component.html'
})

export class DepartmentComponent implements OnInit {

  //ND new Department
  nDnombre = new FormControl('');
  nDpersona_id = new FormControl('');

  Departamento: Departamento;
  Usuario: Usuario;

  public departamentos: Departamento[];
  public usuarios: Usuario[];


  constructor(
    private departamentService: DepartmentService,
    private usuarioService: UsuarioService,
  ) { }

  ngOnInit() {
    this.loadusers();
  }
  saveDepartment() {
    this.departamentService.addDepartment(this.nDnombre.value, this.nDpersona_id.value).subscribe(result => {
      console.log(result);
    });
  }
  showAll() {
    this.departamentService.getDepartments().subscribe(result => {
      this.departamentos = result;
    });
  }

  loadusers() {
    this.usuarioService.getUsers().subscribe(result => {
      this.usuarios = result.usuarios;
    });
  }



}
