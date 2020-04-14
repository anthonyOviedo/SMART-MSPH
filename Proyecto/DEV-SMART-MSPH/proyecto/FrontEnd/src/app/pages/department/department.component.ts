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

  titulo: string = 'Registrar usuario';
  aDepartment = new Departamento(null, '', '');
  nonEditable = false;
  modalTittle = '';
  public editando = false;

  // nDnombre = new FormControl('');
  // nDpersona_id = new FormControl('');
  // nDId = new FormControl('');


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
    this.showAll();
  }

  saveDepartment(departament: Departamento) {
    if (this.editando) {
      this.updateDepartment(departament);
    }
    this.departamentService.addDepartment(departament.departamento_Id, departament.nombre, departament.persona_id).subscribe(result => {
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

  nuevo() {
    this.nonEditable = false;
    this.aDepartment = new Departamento(null, '', '');
    this.modalTittle = 'Nuevo Departamento';
    this.editando = false;
  }

  editar(departamento: Departamento) {
    this.nonEditable = true;
    this.aDepartment = departamento;
    this.modalTittle = 'Editar Departamento';
    this.editando = true;
  }

  eliminar(departamento: Departamento) {
    this.departamentService.deleteDepartement(departamento.departamento_Id).subscribe(result => {
      console.log(result);
    });
  }

  updateDepartment(departament: Departamento) {
    this.departamentService.updateDepartment(departament).subscribe(result => {
      console.log(result);
    });
  }



}
