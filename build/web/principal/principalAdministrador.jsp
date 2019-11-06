<%-- 
   Document   : principal
   Created on : 29/09/2019, 10:39:01 PM
   Author     : leine
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
        <title>SMART-MSPH2</title>
        <%@ include file="/Head.jsp" %>
        <link href="css/base.css" rel="stylesheet">
    </head>

    <body>
        <%@ include file="/Header.jsp" %>
        <!-- hacer toda esta picha en un jsp distinto sin la ide de mobile first-->


        <div class="center">

            <div class="center" style="margin-top: 100px">
                <div class="row">       

                    <div class="center">
                        <div style="margin: 5px 5px 5px 5px">
                            <div class="card mb-3" style="width: 18rem;">  
                                <div class="imgMenu">
                                    <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIj8+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBpZD0iQ2FwYV8xIiBlbmFibGUtYmFja2dyb3VuZD0ibmV3IDAgMCA1MDMuNzU3IDUwMy43NTciIGhlaWdodD0iMTI4cHgiIHZpZXdCb3g9IjAgMCA1MDMuNzU3IDUwMy43NTciIHdpZHRoPSIxMjhweCI+PHBhdGggZD0ibTM3My4xOTEgMTQ5LjA3NmMxOC40MzggMCAzMy4zODUgMTQuOTQ3IDMzLjM4NSAzMy4zODVzLTE0Ljk0NyAzMy4zODUtMzMuMzg1IDMzLjM4NSIgZmlsbD0iI2ZmYzE1YSIvPjxwYXRoIGQ9Im0zNDcuMDQgMzAxLjk5OS0xMDYuNzIyLTM0LjQ4OXYtMTcwLjA5OGwxMDYuNzIyLTM0LjQ4OWMxMi45MTYtNC4xNzQgMjYuMTUgNS40NTcgMjYuMTUgMTkuMDMxdjIwMS4wMTVjLjAwMSAxMy41NzMtMTMuMjMzIDIzLjIwNC0yNi4xNSAxOS4wM3oiIGZpbGw9IiNmMmVmZWYiLz48cGF0aCBkPSJtMzEuOTE4IDk3LjQxMmMtMTEuMDQ2IDAtMjAgOC45NTQtMjAgMjB2MTMwLjA5OGMwIDExLjA0NiA4Ljk1NCAyMCAyMCAyMGg1Mi4xOTJ2LTE3MC4wOTh6IiBmaWxsPSIjZmZjMTQ0Ii8+PHBhdGggZD0ibTEwMS4xOTkgOTcuNDEyaC0xNy4wODl2MTcwLjA5OGgxNTYuMjA4di0xNzAuMDk4aC01Ny42NzYiIGZpbGw9IiM4MGI2ZmYiLz48cGF0aCBkPSJtMTA3LjA3NCA0NDEuODMzaC0zNi4zNzVjLTE0LjU5NSAwLTI0LjI3NC0xNS4xMjYtMTguMTYtMjguMzc5bDY3LjMzNC0xNDUuOTQ0aDgwLjQyN2wtNzUuMDY1IDE2Mi43MDFjLTMuMjY5IDcuMDg1LTEwLjM1OSAxMS42MjItMTguMTYxIDExLjYyMnoiIGZpbGw9IiNmMmVmZWYiLz48cGF0aCBkPSJtNjcuNTQzIDM4MC45MzNoLTM5Ljk3MmwyNC42ODktNDkuNzU4aDM4LjIzOXoiIGZpbGw9IiM4YWE4YmQiLz48cGF0aCBkPSJtMTAyLjMyOCAyNzcuNTEtMjAuMTQ2IDQzLjY2NmgtMzEuODQxYy0zLjc5OSAwLTcuMjcgMi4xNTItOC45NTggNS41NTVsLTI0LjY4OCA0OS43NTdjLTMuMjA1IDYuNDU4IDEuNzAzIDE0LjQ0NSA4Ljk1OCAxNC40NDVoMjQuMzQ2bC04LjQ1OCAxOC4zMzJjLTQuMzA3IDkuMzM1LTMuNTcgMjAuMDc4IDEuOTcxIDI4LjczOCA1LjU0MiA4LjY2IDE0Ljk4OCAxMy44MyAyNS4yNyAxMy44M2gzNi4zNzVjMTEuNjYyIDAgMjIuMzU0LTYuODQzIDI3LjI0LTE3LjQzMmw3Mi4zODUtMTU2Ljg5MWgzMi4wNDNsMTA1LjIyMyAzNC4wMDVjOS4xMTIgMi45NDQgMTkuMTM4IDEuMzQzIDI2Ljg3OC00LjI5IDcuODQ3LTUuNzEgMTIuMzQ3LTE0LjU1MiAxMi4zNDctMjQuMjU3di01OC4yOThjMTkuMTE2LTQuNTI5IDMzLjM4NS0yMS43MjggMzMuMzg1LTQyLjIwOXMtMTQuMjY5LTM3LjY4LTMzLjM4NS00Mi4yMDl2LTU4LjI5OGMwLTkuNzA1LTQuNS0xOC41NDYtMTIuMzQ4LTI0LjI1Ny03Ljg0Ny01LjcxLTE3LjY0My03LjI3My0yNi44NzctNC4yOWwtMTA1LjIyNCAzNC4wMDVoLTU2LjFjLTEyLjg0IDAtMTIuODU5IDIwIDAgMjBoNDcuNjc2djE1MC4wOThoLTEzNi4yMDh2LTE1MC4wOThoNy4wODljMTIuODQgMCAxMi44NTktMjAgMC0yMGgtMTcuMDg5LTUyLjE5MmMtMTYuNTQyIDAtMzAgMTMuNDU4LTMwIDMwdjEzMC4wOThjMCAxNi41NDIgMTMuNDU4IDMwIDMwIDMwem0tODIuMzI4LTMwdi0xMzAuMDk4YzAtNS41MTQgNC40ODYtMTAgMTAtMTBoNDIuMTkydjE1MC4wOThoLTQyLjE5MmMtNS41MTQgMC0xMC00LjQ4Ni0xMC0xMHptMzYuNTQzIDkzLjY2NWgxNi40MTJsLTEzLjcyOSAyOS43NTdoLTE3LjQ0OHptNjcuODExLTYzLjY2NWg1OC40MDFsLTY4LjUxOSAxNDguNTEyYy0xLjYyOSAzLjUzLTUuMTkzIDUuODExLTkuMDggNS44MTFoLTM2LjM3NWMtMy40NzkgMC02LjU0OC0xLjY4LTguNDIzLTQuNjFzLTIuMTE0LTYuNDIxLS42NTctOS41Nzl6bTE5MC40ODItMTk0LjI5IDMzLjM2MS0xMC43ODFjNi4zNjctMi4wNTkgMTMuMDc1IDIuODM3IDEzLjA3NSA5LjUxNXYyMDEuMDE1YzAgNi42NzgtNi43MDcgMTEuNTc1LTEzLjA3NSA5LjUxNWwtOTkuNzk3LTMyLjI1MnYtMTU1LjU0Mmw0Ni40MzYtMTUuMDA2em02Ni40MzYgMTIwLjM3NXYtNDIuMjY4YzcuOTA1IDMuNzU2IDEzLjM4NSAxMS44MTYgMTMuMzg1IDIxLjEzNHMtNS40NzkgMTcuMzc4LTEzLjM4NSAyMS4xMzR6Ii8+PHBhdGggZD0ibTQ5NC4xNCAxNzIuNDYxaC00OC4zMDdjLTEyLjc4OSAwLTEyLjgyIDIwIDAgMjBoNDguMzA3YzEyLjgxIDAgMTIuODM2LTIwIDAtMjB6Ii8+PHBhdGggZD0ibTQ0OS4wNzggMTE5LjQ5MWMxLjY5NiAwIDMuNDE2LS40MzIgNC45OTEtMS4zNDFsNDEuODM1LTI0LjE1NGMxMS4wOTQtNi40MDUgMS4xMTUtMjMuNzQxLTEwLTE3LjMybC00MS44MzUgMjQuMTU0Yy04LjYyMiA0Ljk3Ny00Ljk4NSAxOC42NjEgNS4wMDkgMTguNjYxeiIvPjxwYXRoIGQ9Im00OTUuOTA0IDI3MC45MjYtNDEuODM1LTI0LjE1M2MtMTEuMDc3LTYuMzkzLTIxLjEwMiAxMC45MTEtMTAgMTcuMzJsNDEuODM1IDI0LjE1M2MxMC45NDkgNi4zMjEgMjEuMTczLTEwLjg2OSAxMC0xNy4zMnoiLz48cGF0aCBkPSJtMTMwLjQ0MSAxMDEuMjMyYzMuNDg1IDguNTA4IDE2LjEzIDcuODQ2IDE4LjgtLjkyIDIuNjM0LTguNjQ1LTcuMTQyLTE2LjA2OC0xNC43ODktMTEuNDExLTQuMTM0IDIuNTE4LTUuODc2IDcuODU4LTQuMDExIDEyLjMzMXoiLz48L3N2Zz4K" />                                 </div>
                                <div class="card-body black-text">
                                    <h5 class="card-title">Noticias</h5>
                                    <p class="card-text">Cree, edite o publique noticias que estan en borrador</p>
                                </div>
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item"> 
                                        <a class="btn btn-primary" href="/Smart-msph/Pagina1.jsp">Ir a Noticias</a>
                                    </li>
                                </ul>
                            </div>   
                        </div>
                    </div>

                    <div class="center">
                        <div style="margin: 5px 5px 5px 5px">
                            <div class="card  mb-3" style="width: 18rem;">
                                <div class="imgMenu">
                                    <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIj8+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBpZD0iQ2FwYV8xIiBlbmFibGUtYmFja2dyb3VuZD0ibmV3IDAgMCA1MDYuODU1IDUwNi44NTUiIGhlaWdodD0iMTI4cHgiIHZpZXdCb3g9IjAgMCA1MDYuODU1IDUwNi44NTUiIHdpZHRoPSIxMjhweCI+PHBhdGggZD0ibTM1My4wNTIgNDk2LjgyM2gtMjkyLjQzYy0xMS4wNDYgMC0yMC04Ljk1NC0yMC0yMHYtMzg2Ljk4OWMwLTExLjA0NiA4Ljk1NC0yMCAyMC0yMGgyOTIuNDMxYzExLjA0NiAwIDIwIDguOTU0IDIwIDIwdjM4Ni45ODljLS4wMDEgMTEuMDQ2LTguOTU1IDIwLTIwLjAwMSAyMHoiIGZpbGw9IiNmMmVmZWYiLz48cGF0aCBkPSJtMjEzLjI3NyA5Ljk2OGgtMTIuODhjLTMzLjA2MyAwLTU5Ljg2NiAyNi44MDMtNTkuODY2IDU5Ljg2NmgxMzIuNjEyYzAtMzMuMDYzLTI2LjgwMy01OS44NjYtNTkuODY2LTU5Ljg2NnoiIGZpbGw9IiM4YWE4YmQiLz48cGF0aCBkPSJtOTYuMTU0IDExNi4xNDZoMjIxLjM2NnY4OS41NDZoLTIyMS4zNjZ6IiBmaWxsPSIjODBiNmZmIi8+PHBhdGggZD0ibTQ2Ni4yMzMgNDMzLjYyOWgtNTQuMTM4bDI3LjA2OSA2My4wOTV6IiBmaWxsPSIjOGFhOGJkIi8+PHBhdGggZD0ibTQxMi4wOTUgMzM5LjMxM3Y5NC4zMTZoNTQuMTM4di0yMDEuNzk4aC01NC4xMzh2MjYuNTQxIiBmaWxsPSIjZmZjMTQ0Ii8+PHBhdGggZD0ibTQ2Ni4yMzMgMTg4Ljk4OGMwLTE0Ljk1LTEyLjExOS0yNy4wNjktMjcuMDY5LTI3LjA2OXMtMjcuMDY5IDEyLjExOS0yNy4wNjkgMjcuMDY5djQyLjg0M2g1NC4xMzl2LTQyLjg0M3oiIGZpbGw9IiNmMmVmZWYiLz48cGF0aCBkPSJtMzUzLjA1MiA1OS44NjZoLTcwLjYzNmMtNC44NjctMzMuODAyLTM0LjAxLTU5Ljg2Ni02OS4xMzktNTkuODY2aC0xMi44OGMtMzUuMTI4IDAtNjQuMjcyIDI2LjA2NC02OS4xMzkgNTkuODY2aC03MC42MzZjLTE2LjU0MiAwLTMwIDEzLjQ1OC0zMCAzMHYzODYuOTg5YzAgMTYuNTQyIDEzLjQ1OCAzMCAzMCAzMGgyOTIuNDMxYzE2LjU0MiAwIDMwLTEzLjQ1OCAzMC0zMHYtMzg2Ljk4OWMtLjAwMS0xNi41NDItMTMuNDU5LTMwLTMwLjAwMS0zMHptLTE1Mi42NTUtMzkuODY2aDEyLjg4YzI0LjA3MyAwIDQ0LjIxNiAxNy4xNDUgNDguODU5IDM5Ljg2NmgtMTEwLjU5OGM0LjY0My0yMi43MjEgMjQuNzg2LTM5Ljg2NiA0OC44NTktMzkuODY2em0xNTIuNjU1IDU5Ljg2NmM1LjUxNCAwIDEwIDQuNDg2IDEwIDEwdjM4Ni45ODljMCA1LjUxNC00LjQ4NiAxMC0xMCAxMGgtMjkyLjQzYy01LjUxNCAwLTEwLTQuNDg2LTEwLTEwdi0zODYuOTg5YzAtNS41MTQgNC40ODYtMTAgMTAtMTB6Ii8+PHBhdGggZD0ibTMxNy41MiAxMDYuMTc4aC0yMjEuMzY2Yy01LjUyMyAwLTEwIDQuNDc3LTEwIDEwdjg5LjU0NmMwIDUuNTIzIDQuNDc3IDEwIDEwIDEwaDIyMS4zNjZjNS41MjMgMCAxMC00LjQ3NyAxMC0xMHYtODkuNTQ2YzAtNS41MjMtNC40NzctMTAtMTAtMTB6bS0xMCA4OS41NDZoLTIwMS4zNjZ2LTY5LjU0NmgyMDEuMzY2eiIvPjxwYXRoIGQ9Im05OS4xNDcgMjY0LjYzMWgxMDcuNjljMTIuODQgMCAxMi44NTktMjAgMC0yMGgtMTA3LjY5Yy0xMi44NDEgMC0xMi44NTkgMjAgMCAyMHoiLz48cGF0aCBkPSJtMzE3LjUyIDQzNy4yNzJoLTU4LjE5M2MtMTIuODQgMC0xMi44NTkgMjAgMCAyMGg1OC4xOTNjMTIuODExIDAgMTIuODM2LTIwIDAtMjB6Ii8+PHBhdGggZD0ibTMxNy41MiAyOTIuNzkyaC0yMTguMzczYy0xMi44NCAwLTEyLjg1OSAyMCAwIDIwaDIxOC4zNzNjMTIuODExIDAgMTIuODM2LTIwIDAtMjB6Ii8+PHBhdGggZD0ibTMxNy41MiAzNDAuOTUyaC0yMTguMzczYy0xMi44NCAwLTEyLjg1OSAyMCAwIDIwaDIxOC4zNzNjMTIuODExIDAgMTIuODM2LTIwIDAtMjB6Ii8+PHBhdGggZD0ibTMxNy41MiAzODkuMTEyaC0yMTguMzczYy0xMi44NCAwLTEyLjg1OSAyMCAwIDIwaDIxOC4zNzNjMTIuODExIDAgMTIuODM2LTIwIDAtMjB6Ii8+PHBhdGggZD0ibTQ3Ni4yMzMgMTg5LjAyYzAtMjAuNDQtMTYuNjI5LTM3LjA2OS0zNy4wNjktMzcuMDY5cy0zNy4wNjkgMTYuNjI5LTM3LjA2OSAzNy4wNjl2NjkuMzg0YzAgMTIuODQgMjAgMTIuODU5IDIwIDB2LTE2LjU0MWgzNC4xMzl2MTgxLjc5OGgtMzQuMTM5di04NC4zMTZjMC0xMi44NC0yMC0xMi44NTktMjAgMHY5NC4zMTZjMCAxLjM0OS44MSAyLjY5OS44MSAzLjk0M2wyNy4wNjkgNjMuMDk2YzMuMzQ2IDcuNzk5IDE0Ljk5MyA3Ljg5MyAxOC4zOCAwbDI3LjA2OS02My4wOTZjMC0xLjI0My44MS0yLjU5NC44MS0zLjk0M3ptLTU0LjEzOSAzMi44NDN2LTMyLjg0M2MwLTkuNDEyIDcuNjU3LTE3LjA2OSAxNy4wNjktMTcuMDY5czE3LjA2OSA3LjY1NyAxNy4wNjkgMTcuMDY5djMyLjg0M3ptMTcuMDcgMjQ5LjUzLTExLjg5Ny0yNy43MzJoMjMuNzk1eiIvPjxwYXRoIGQ9Im00MDIuODYzIDMwMi41OGMxLjYzNSAzLjkyNSA1LjcwOCA2LjQ3NyA5Ljk2NCA2LjE0OCA0LjM0OS0uMzM2IDguMDU2LTMuNTIxIDkuMDIxLTcuNzc5IDEuOTczLTguNzA4LTguMTk2LTE1LjUyNi0xNS41MDgtMTAuMzY2LTMuNzczIDIuNjYzLTUuMjU3IDcuNzI0LTMuNDc3IDExLjk5N3oiLz48cGF0aCBkPSJtMjI4LjMyMyA0NDMuNDVjLTIuMDY1LTUuMDM5LTguMDQtNy40OTQtMTMuMDYtNS40MS01LjAzMiAyLjA4OC03LjQ5NyA4LjAyMS01LjQxIDEzLjA2IDIuMDgyIDUuMDI5IDguMDMxIDcuNDk3IDEzLjA2IDUuNDEgNS4wMi0yLjA4NCA3LjUwNC04LjAzMiA1LjQxLTEzLjA2eiIvPjwvc3ZnPgo=" />
                                </div> 
                                <div class="card-body black-text">
                                    <h5 class="card-title">Formularios</h5>
                                    <p class="card-text">Cree, edite y seleccione el formulario para el proceso respectivo</p>
                                </div>

                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item"> 
                                        <a class="btn btn-primary" href="principal/formManagment.jsp">Ir a formularios</a>
                                    </li>
                                </ul>

                            </div>   
                        </div>
                    </div>

                    <div class="center">
                        <div style="margin: 5px 5px 5px 5px">
                            <div class="card mb-3" style="width: 18rem;">
                                <div class="imgMenu">
                                    <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIj8+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBoZWlnaHQ9IjEyOHB4IiB2aWV3Qm94PSItMjYgMCA1MTIgNTEyIiB3aWR0aD0iMTI4cHgiPjxwYXRoIGQ9Im00MzAgMTc2aC00MDBjLTExLjA1MDc4MSAwLTIwIDguOTQ5MjE5LTIwIDIwdjgwYzAgMTEuMDUwNzgxIDguOTQ5MjE5IDIwIDIwIDIwaDQwMGMxMS4wNTA3ODEgMCAyMC04Ljk0OTIxOSAyMC0yMHYtODBjMC0xMS4wNTA3ODEtOC45NDkyMTktMjAtMjAtMjB6bTAgMCIgZmlsbD0iI2VhZmFmZiIvPjxwYXRoIGQ9Im00MzAgMjk2djE4NmMwIDExLjA1MDc4MS04Ljk0OTIxOSAyMC0yMCAyMGgtMzYwYy0xMS4wNTA3ODEgMC0yMC04Ljk0OTIxOS0yMC0yMHYtMTg2em0wIDAiIGZpbGw9IiM5NmM4ZWYiLz48cGF0aCBkPSJtMzcwIDIxNmg0MHY0MGgtNDB6bTAgMCIgZmlsbD0iIzNhNTU3NiIvPjxwYXRoIGQ9Im0zNzAgMjU2aC0yODBjMC0xMS4xNjAxNTYgMC0yMzQuODU1NDY5IDAtMjQ2aDI4MHptMCAwIiBmaWxsPSIjZmZlYTkxIi8+PHBhdGggZD0ibTMzMCAzNTl2ODBoLTIwMHYtODB6bTAgMCIgZmlsbD0iI2VhZmFmZiIvPjxwYXRoIGQ9Im01MCAyMTZoNDB2NDBoLTQwem0wIDAiIGZpbGw9IiMzYTU1NzYiLz48cGF0aCBkPSJtMTkwIDQwOWM1LjUxOTUzMSAwIDEwLTQuNDgwNDY5IDEwLTEwcy00LjQ4MDQ2OS0xMC0xMC0xMC0xMCA0LjQ4MDQ2OS0xMCAxMCA0LjQ4MDQ2OSAxMCAxMCAxMHptMCAwIi8+PHBhdGggZD0ibTQzMCAxNjZoLTUwdi0xNTZjMC01LjUyMzQzOC00LjQ3NjU2Mi0xMC0xMC0xMGgtMjgwYy01LjUyMzQzOCAwLTEwIDQuNDc2NTYyLTEwIDEwdjE1NmgtNTBjLTE2LjU0Mjk2OSAwLTMwIDEzLjQ1NzAzMS0zMCAzMHY4MGMwIDEzLjAzNTE1NiA4LjM1OTM3NSAyNC4xNTIzNDQgMjAgMjguMjgxMjV2MTc3LjcxODc1YzAgMTYuNTQyOTY5IDEzLjQ1NzAzMSAzMCAzMCAzMGgzNjBjMTYuNTQyOTY5IDAgMzAtMTMuNDU3MDMxIDMwLTMwdi0xNzcuNzE4NzVjMTEuNjQwNjI1LTQuMTI4OTA2IDIwLTE1LjI0NjA5NCAyMC0yOC4yODEyNXYtODBjMC0xNi41NDI5NjktMTMuNDU3MDMxLTMwLTMwLTMwem0tNTAgNjBoMjB2MjBoLTIwem0tMjgwLTIwNmgyNjB2MjI2aC0yNjB6bS00MCAyMjZ2LTIwaDIwdjIwem0zNTAgMjQ2aC0zNjBjLTUuNTE1NjI1IDAtMTAtNC40ODQzNzUtMTAtMTB2LTE3NmgzODB2MTc2YzAgNS41MTU2MjUtNC40ODQzNzUgMTAtMTAgMTB6bTMwLTIxNmMwIDUuNTE1NjI1LTQuNDg0Mzc1IDEwLTEwIDEwaC00MDBjLTUuNTE1NjI1IDAtMTAtNC40ODQzNzUtMTAtMTB2LTgwYzAtNS41MTU2MjUgNC40ODQzNzUtMTAgMTAtMTBoNTB2MjBoLTMwYy01LjUyMzQzOCAwLTEwIDQuNDc2NTYyLTEwIDEwdjQwYzAgNS41MjM0MzggNC40NzY1NjIgMTAgMTAgMTBoMzYwYzUuNTIzNDM4IDAgMTAtNC40NzY1NjIgMTAtMTB2LTQwYzAtNS41MjM0MzgtNC40NzY1NjItMTAtMTAtMTBoLTMwdi0yMGg1MGM1LjUxNTYyNSAwIDEwIDQuNDg0Mzc1IDEwIDEwem0wIDAiLz48cGF0aCBkPSJtMzMwIDM0OWgtMjAwYy01LjUyMzQzOCAwLTEwIDQuNDc2NTYyLTEwIDEwdjgwYzAgNS41MjM0MzggNC40NzY1NjIgMTAgMTAgMTBoMjAwYzUuNTIzNDM4IDAgMTAtNC40NzY1NjIgMTAtMTB2LTgwYzAtNS41MjM0MzgtNC40NzY1NjItMTAtMTAtMTB6bS0xMCA4MGgtMTgwdi02MGgxODB6bTAgMCIvPjxwYXRoIGQ9Im0yMzAgNDA5aDQwYzUuNTIzNDM4IDAgMTAtNC40NzY1NjIgMTAtMTBzLTQuNDc2NTYyLTEwLTEwLTEwaC00MGMtNS41MjM0MzggMC0xMCA0LjQ3NjU2Mi0xMCAxMHM0LjQ3NjU2MiAxMCAxMCAxMHptMCAwIi8+PHBhdGggZD0ibTE3MCAyMDZjNS41MjM0MzggMCAxMC00LjQ3NjU2MiAxMC0xMCAwLTI3LjU3MDMxMiAyMi40Mjk2ODgtNTAgNTAtNTBzNTAgMjIuNDI5Njg4IDUwIDUwYzAgNS41MjM0MzggNC40NzY1NjIgMTAgMTAgMTBzMTAtNC40NzY1NjIgMTAtMTBjMC0zOC41OTc2NTYtMzEuNDAyMzQ0LTcwLTcwLTcwcy03MCAzMS40MDIzNDQtNzAgNzBjMCA1LjUyMzQzOCA0LjQ3NjU2MiAxMCAxMCAxMHptMCAwIi8+PHBhdGggZD0ibTE3MCAxMDZjNS41MjM0MzggMCAxMC00LjQ3NjU2MiAxMC0xMHYtMjBjMC01LjUyMzQzOC00LjQ3NjU2Mi0xMC0xMC0xMHMtMTAgNC40NzY1NjItMTAgMTB2MjBjMCA1LjUyMzQzOCA0LjQ3NjU2MiAxMCAxMCAxMHptMCAwIi8+PHBhdGggZD0ibTI5MCAxMDZjNS41MjM0MzggMCAxMC00LjQ3NjU2MiAxMC0xMHYtMjBjMC01LjUyMzQzOC00LjQ3NjU2Mi0xMC0xMC0xMHMtMTAgNC40NzY1NjItMTAgMTB2MjBjMCA1LjUyMzQzOCA0LjQ3NjU2MiAxMCAxMCAxMHptMCAwIi8+PC9zdmc+Cg==" />
                                </div>
                                <div class="card-body black-text">
                                    <h5 class="card-title">Quejas</h5>
                                    <p class="card-text black-text">descripcion de opciones de denuncias...</p>
                                </div>

                                <ul class="list-group list-group-flush">

                                    <li class="list-group-item"> 
                                        <a class="btn btn-primary" href="#">Ir a Quejas</a>
                                    </li>

                                </ul>
                            </div>   
                        </div>

                    </div>

                    <div class="center">
                        <div style="margin: 5px 5px 5px 5px">
                            <div class="card  mb-3" style="width: 18rem;">
                                <div class="imgMenu">
                                    <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIj8+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBoZWlnaHQ9IjEyOHB4IiB2aWV3Qm94PSIwIDAgNTggNTgiIHdpZHRoPSIxMjhweCI+PGcgaWQ9IlBhZ2UtMSIgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIj48ZyBpZD0iMDA5LS0tU3BhbS1FbWFpbCIgZmlsbC1ydWxlPSJub256ZXJvIj48cGF0aCBpZD0iU2hhcGUiIGQ9Im01Ny4yNyAyMy40OGMtLjE3MjY5OC0uMjQ2MzU2NC0uMzc0MTE1OS0uNDcxMjczLS42LS42N2wtMTEuMTktMTAuMDMtLjAxLS4wMWgtMzIuOTRsLS4wMS4wMS0xMS4xOSAxMC4wM2MtLjg0MTMyMjQxLjc2MzA4MS0xLjMyMzgyODEyIDEuODQ0MTg0LTEuMzMgMi45OHYyOC4yMWMuMDAzODUzMDkgMi4yMDc1NDEgMS43OTI0NTg5NyAzLjk5NjE0NjkgNCA0aDUwYzIuMjA3NTQxLS4wMDM4NTMxIDMuOTk2MTQ2OS0xLjc5MjQ1OSA0LTR2LTI4LjIxYy4wMDA1Nzc0LS44MjY4MzY0LS4yNTQzODg4LTEuNjMzNjQ3NC0uNzMtMi4zMXoiIGZpbGw9IiNmMGM0MTkiLz48cGF0aCBpZD0iU2hhcGUiIGQ9Im01Ny4yNyAyMy40OC0yMy40NCAxNy4wMi0yLjU0IDEuODRjLTEuMzczNDcxNi45OTUwMTk1LTMuMjI1MzE1NCAxLjAxNTA2MTEtNC42Mi4wNWwtMi42Mi0xLjgxLTIzLjcyLTE2LjM3Yy4yMjMwODc4OS0uNTM2MzMxNi41NjUwMTIwOS0xLjAxNTAyNTUgMS0xLjRsMTEuMTktMTAuMDMuMDEtLjAxaDMyLjk0bC4wMS4wMSAxMS4xOSAxMC4wM2MuMjI1ODg0MS4xOTg3MjcuNDI3MzAyLjQyMzY0MzYuNi42N3oiIGZpbGw9IiNmMGM0MTkiLz48cGF0aCBpZD0iU2hhcGUiIGQ9Im0yNC4wNSA0MC41OC0yMi42OCAxNi40M2MtLjg3MTcwOTQ5LS43NTcwNzMtMS4zNzE2MjU2Mi0xLjg1NTQyODktMS4zNy0zLjAxdi0yOC4yMWMtLjAwMjY0MTItLjU0NDA0NC4xMDk4MTk5OC0xLjA4MjQ5NDYuMzMtMS41OHoiIGZpbGw9IiNmMjljMWYiLz48cGF0aCBpZD0iU2hhcGUiIGQ9Im01Ni42MyA1Ny4wMWMtLjcyNzM0NjguNjM4NDQ0Ni0xLjY2MjE5Ni45OTAzNDYtMi42My45OWgtNTBjLS45Njc4MDQwNS4wMDAzNDYtMS45MDI2NTMyMy0uMzUxNTU1NC0yLjYzLS45OWwyMi42OC0xNi40MyAyLjYyIDEuODFjMS4zOTQ2ODQ2Ljk2NTA2MTEgMy4yNDY1Mjg0Ljk0NTAxOTUgNC42Mi0uMDVsMi41NC0xLjg0eiIgZmlsbD0iI2U1N2UyNSIvPjxwYXRoIGlkPSJTaGFwZSIgZD0ibTU4IDI1Ljc5djI4LjIxYy4wMDE2MjU2IDEuMTU0NTcxMS0uNDk4MjkwNSAyLjI1MjkyNy0xLjM3IDMuMDFsLTIyLjgtMTYuNTEgMjMuNDQtMTcuMDJjLjQ3NTYxMTIuNjc2MzUyNi43MzA1Nzc0IDEuNDgzMTYzNi43MyAyLjMxeiIgZmlsbD0iI2YyOWMxZiIvPjxjaXJjbGUgaWQ9Ik92YWwiIGN4PSIyOSIgY3k9IjE3IiBmaWxsPSIjZmY1MzY0IiByPSIxNyIvPjxnIGZpbGw9IiNmZmYiPjxwYXRoIGlkPSJTaGFwZSIgZD0ibTMyIDdjMCAxLjY2LTMgMTMtMyAxM3MtMy0xMS4zNC0zLTEzYzAtMS42NTY4NTQyNSAxLjM0MzE0NTgtMyAzLTNzMyAxLjM0MzE0NTc1IDMgM3oiLz48Y2lyY2xlIGlkPSJPdmFsIiBjeD0iMjkiIGN5PSIyNyIgcj0iMyIvPjwvZz48L2c+PC9nPjwvc3ZnPgo=" />
                                </div>
                                <div class="card-body black-text">
                                    <h5 class="card-title">Denuncias</h5>
                                    <p class="card-text">descripcion de opciones de denuncias...</p>
                                </div>

                                <ul class="list-group list-group-flush">

                                    <li class="list-group-item"> 
                                        <a href="#" class="btn btn-primary" >Ir a Denuncias</a>
                                    </li>

                                </ul>
                            </div>   
                        </div>
                    </div>

                </div>
            </div>

        </div>


    </body>
</html>