import { Component, OnInit } from '@angular/core';
import { NgForm } from '@angular/forms';
import { Usuario, Persona, Departamento } from 'src/app/models/model.index';
import { UsuarioService, CryptoService, MessageService, DepartmentService } from 'src/app/services/service.index';
import { FormControl } from '@angular/forms';
import { ThrowStmt } from '@angular/compiler';


@Component({
  selector: 'app-usuario',
  templateUrl: './usuario.component.html',
  styles: []
})
export class UsuarioComponent implements OnInit {

  aDepartament: any;
  usuario_Id: string;

  //para el nuevo usuario
  // nUidUser = new FormControl('');
  // nUname = new FormControl('');
  // nUpassword = new FormControl('');
  // nUcedula = new FormControl('');
  // nUrol = new FormControl('');
  // nUdepartment = new FormControl('');



  // Lista
  criterio: string = '';
  public cantidad: number = 0;
  public usuarios = [];
  public departamentos = [];
  public modalTittle = '';

  // Mantenimiento
  title: string = 'Registrar usuario';
  txtUsuario: HTMLInputElement;
  txtPassword: HTMLInputElement;
  guardando: boolean = false;
  newUser: boolean = true;
  public aUser: Usuario = new Usuario(null, '', null, '', new Persona(null, '', '', '', '', '', ''), new Departamento(null, '', ''));
  public nonEditable = false;
  public editando = false;

  // // Pagination
  // page: number = 1;
  // pageSize: number = 10;

  constructor(
    private usuarioService: UsuarioService,
    private cryptoService: CryptoService,
    private messageService: MessageService,
    private departmentService: DepartmentService

  ) {
    this.aDepartament = this.usuarioService.Departamento;
  }

  getDepartments() {
    this.departmentService.getDepartments().subscribe(result => {
      this.departamentos = result;
    });
  }
  ngOnInit() {
    this.getDepartments();
    this.cargarUsuarios();
  }
  addUsuario() {
    if (this.editando === true) { this.updateUser(); } else {
      this.aUser.password = this.cryptoService.encryptPassword(this.aUser.password);
      this.usuarioService.guardar(this.aUser, true).subscribe(result => {
        console.log(result);
        return;
      });
    }
    // hacer validaciones aqui.

  }


  limpiaCriterio() {
    this.criterio = '';
    this.cargarUsuarios();
  }

  cargarUsuarios() {
    this.usuarioService.list().subscribe(result => {
      this.usuarios = result;
      return;
    });
  }

  // cargarUsuario(usuario: Usuario) {

  //   this.newUser = false;
  //   this.title = 'Actualizar usuario';
  //   this.usuario = Object.assign({}, usuario);
  //   this.usuario.password = '123456';
  //   this.txtUsuario.readOnly = true;
  //   this.txtPassword.readOnly = true;

  //   $('html, body').animate({
  //     scrollTop: $('#titulo').offset().top
  //   }, 1300);

  // }

  //guardar(form: NgForm) {

  // if (form.invalid) {
  //   return;
  // }

  // this.guardando = true;

  // let user: Usuario = Object.assign({}, this.aUser);



  // user.password = this.cryptoService.encryptPassword(this.usuario.password);

  // this.usuarioService.guardar(user, this.newUser)
  //   .subscribe(() => {
  //     this.cargarUsuarios();
  //     this.nuevo();
  //   })
  //   .add(() => this.guardando = false);

  //}
  nuevo() {
    // this.newUser = true;
    // this.title = 'Registrar usuario';
    // this.txtUsuario.readOnly = false;
    // this.txtPassword.readOnly = false;

    this.nonEditable = false;
    this.aUser = new Usuario(null, '', null, '', new Persona(null, '', '', '', '', '', ''), new Departamento(null, '', ''));
    document.getElementById('resetPass').style.display = 'none';
    document.getElementById('userPassword').style.display = 'block';
    this.modalTittle = 'Nuevo Usuario';
    this.editando = false;

  }


  eliminar(usuario: Usuario) {

    // if (usuario.usuario_Id === this.usuario_Id) {
    //   this.messageService.showError('No puede eliminar su propio usuario');
    //   return;
    // }


    this.messageService.showAlertQuestion(
      'Eliminar usuario',
      '¿Seguro(a) que desea eliminar al usuario ' + usuario.nombre + '?'
    ).then(result => {

      if (result.value) {
        this.usuarioService.eliminar(usuario)
          .subscribe(() => this.cargarUsuarios());
      }

    });


  }

  editar(usuario: Usuario) {
    this.nonEditable = true;
    //hacer una funcion para prepara este formulario para la edicion del usuario.
    this.aUser = usuario;
    this.editando = true;
    // bloquear el user ID y la contrasenna
    document.getElementById('resetPass').style.display = 'block';
    document.getElementById('userPassword').style.display = 'none';
    this.modalTittle = 'Editar Usuario';

  }

  updateUser() {
    this.usuarioService.update(this.aUser).subscribe(result => {
      console.log(result);
      return;
    });
  }
}
