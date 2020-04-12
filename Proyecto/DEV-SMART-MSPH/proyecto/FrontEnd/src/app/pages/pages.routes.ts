import { Routes, RouterModule } from "@angular/router";

// Components
import { DashboardComponent } from './dashboard/dashboard.component';
import { UsuarioComponent } from './usuario/usuario.component';
import { PerfilComponent } from './perfil/perfil.component';
import { CrearQuejaComponent } from './crear-queja/crear-queja.component';
import { MisQuejasComponent } from './mis-quejas/mis-quejas.component';
import { CrearDenunciaComponent } from './crear-denuncia/crear-denuncia.component';
import { MisDenunciasComponent } from './mis-denuncias/mis-denuncias.component';
import { MapsComponent } from './maps/maps.component';
import { DepartmentComponent } from './department/department.component';

const pagesRoutes: Routes = [
    { path: 'dashboard', component: DashboardComponent, data: { titulo: 'Noticias', submenu: '' } },
    { path: 'usuario', component: UsuarioComponent, data: { titulo: 'Usuarios', submenu: 'Mantenimiento' } },
    { path: 'perfil', component: PerfilComponent, data: { titulo: 'Perfil', submenu: '' } },
    { path: 'crearQueja', component: CrearQuejaComponent, data: { titulo: 'Crear Queja', submenu: 'Quejas' } },
    { path: 'departmentos', component: DepartmentComponent, data: { titulo: 'Departamentos', submenu: 'Mantenimiento' } },
    { path: 'misQuejas', component: MisQuejasComponent, data: { titulo: 'Mis Quejas', submenu: 'Quejas' } },
    { path: 'crearDenuncias', component: CrearDenunciaComponent, data: { titulo: 'Crear Denuncia', submenu: 'Denuncias' } },
    { path: 'misDenuncias', component: MisDenunciasComponent, data: { titulo: 'Mis Denuncias', submenu: 'Denuncias' } },
    { path: 'mapas', component: MapsComponent, data: { titulo: 'Mis Denuncias', submenu: 'Denuncias' } },
    { path: '', redirectTo: '/dashboard', pathMatch: 'full' }
];

export const PAGES_ROUTES = RouterModule.forChild(pagesRoutes);