import { Component, OnInit } from '@angular/core';
import { NgForm } from '@angular/forms';
import { Usuario } from 'src/app/models/model.index';
import { UsuarioService, CryptoService, MessageService } from 'src/app/services/service.index';
import { FormControl } from '@angular/forms';


@Component({
  selector: 'app-usuario',
  templateUrl: './usuario.component.html',
  styles: []
})
export class UsuarioComponent implements OnInit {

  departamento: any;
  usuario_Id: string;

  //para el nuevo usuario
  nUidUser = new FormControl('');
  nUname = new FormControl('');
  nUpassword = new FormControl('');
  nUcedula = new FormControl('');
  nUrol = new FormControl('');
  nUdepartment = new FormControl('');



  // Lista
  criterio: string = '';
  public cantidad: number = 0;
  public usuarios = [];

  // Mantenimiento
  title: string = 'Registrar usuario';
  usuario: Usuario;
  txtUsuario: HTMLInputElement;
  txtPassword: HTMLInputElement;
  guardando: boolean = false;
  newUser: boolean = true;

  // // Pagination
  // page: number = 1;
  // pageSize: number = 10;

  constructor(
    private usuarioService: UsuarioService,
    private cryptoService: CryptoService,
    private messageService: MessageService
  ) {
    this.departamento = this.usuarioService.Departamento;
  }

  ngOnInit() {

  }
  addUsuario() {

  }
  nuevo() {

    this.newUser = true;
    this.title = 'Registrar usuario';
    this.txtUsuario.readOnly = false;
    this.txtPassword.readOnly = false;

    this.usuario = new Usuario(
      0,
      '',
      0,
      '',
      null,
      null
    );
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

  guardar(form: NgForm) {

    if (form.invalid) {
      return;
    }

    this.guardando = true;

    let user: Usuario = Object.assign({}, this.usuario);



    user.password = this.cryptoService.encryptPassword(this.usuario.password);

    this.usuarioService.guardar(user, this.newUser)
      .subscribe(() => {
        this.cargarUsuarios();
        this.nuevo();
      })
      .add(() => this.guardando = false);

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

}
