USE clashofclansmysql;
Create Table Adorno(IdAdorno int Not null auto_increment,
	Nombre varchar (50) not null,
	Costo int Not null,
	MaximoDisponible int Not null,
 	NivelNecesario int Not null,
 	Estatus bit default 1 Not null,
    primary key (IdAdorno));
    
Create Table Aldea(IdAldea int Not null auto_increment,
	NumPlantas int Not null,
	NumEstructura int Not null,
	NumDefensas int Not null,
	Estatus bit default 1 Not null,
    primary key(IdAldea));
    
create Table ObjetoMagico(IdObjetoMagico int Not null auto_increment,
	Nombre varchar (50) Not null,
	MaximoCapacidad int Not null,
	PrecioVenta int Not null,
	uso varchar (50) Not null,
	Estatus bit default 1 Not null,
    primary key(IdObjetoMagico));

create Table AyuntamientoBaseConstructor
	(
    IdAyuntamientoBaseConstructor int Not null auto_increment,
	Id_ObjetoMagico int Not Null,
	Nivel int Not null,
	CanitdadObjetosMagicos int Not null,
	Descripcion varchar (200) Not null,
	Estatus bit default 1 Not null,
    primary key (IdAyuntamientoBaseConstructor),
    foreign key (Id_ObjetoMagico) references ObjetoMagico(IdObjetoMagico)
    );
    create Table Banco
    (
    IdBanco int Not null auto_increment,
	Nombre varchar (50) Not null,
	Telefono varchar (50) Not null,
 	Correo varchar (50) Not Null,
	Estatus bit default 1 Not null,
    primary key (IdBanco)
    );
    Create table Chat
    (
    IdChat int Not null auto_increment,
	NombreJugador varchar (50) Not null,
	Mensaje varchar (50) Not null,
	Estatus bit default 1 Not null,
    primary key (IdChat)
    );
Create Table CompañiaIndividual
(
	IdCompañiaIndividual int Not null auto_increment,
	Nivel int Not null,
	CantidadEstrellas int Not null,
	CantidadGemas int Not null,
	CatidadOro int Not null,
	CantidadElixir int Not null,
	CantidadNegro int Not null,
	Estatus bit default 1 Not null,
    primary key (IdCompañiaIndividual)
    );
  Create Table Constructor 
  (
	IdConstructor int Not null auto_increment,
	NumChoza int Not null,
	Estatus bit default 1 Not null,
    primary key (IdConstructor)
    );
Create Table Defensa
(
	IdDefensa int Not null auto_increment,
	Nombre varchar (50) Not null,
	Nivel int Not null,
	Función varchar (200) Not null, 
	Cantidad int Not null,
	Estatus bit default 1 Not null,
    primary key(IdDefensa)
);
Create Table Donacion
(
	IdDonacion int Not null auto_increment,
	NombreJugador varchar (50) Not null,
	NunTropas int Not null,
	NumumHechizos int Not null,
	NumDefensas int Not null,
	Estatus bit default 1 Not null,
    primary key(IdDonacion)
);
Create Table Estructura 
(
	IdEstructura int Not null auto_increment,
	Nombre varchar (50) Not null,
	Descripción varchar (200) Not null,
	PosimaAceleración int Not null,
	Estatus bit default 1 Not null,
    primary key(IdEstructura)
);
Create Table Forja 
(
	IdForja int Not null auto_increment,
	NombreRecurso varchar (50) Not null,
	CantidadRecurso int Not null,
	TiempoForjado datetime Not null,
	NumConstructores int Not null,
	CantidadForjada int Not null,
	Estatus bit default 1 Not null,
    primary key (IdForja)
);
Create Table Hechizo
(
	IdHechizo int Not null auto_increment,
	Nombre varchar (50) Not null,
	Nivel int Not null,
	Daño int Not null,
	Costo int Not null,
	Tiempo datetime Not null, 
	Estatus bit default 1 Not null,
    primary key (IdHechizo)
);
Create Table Investigacion
(
	IdInvestigacion int Not null auto_increment,
	NombreInvestigación varchar (50) Not null,
	SiguienteNivel int Not null,
	Vida int Not null,
	Estatus bit default 1 Not null,
    primary key(IdInvestigacion)
);
create Table JuegoClan
(
	IdJuegoClan int Not null auto_increment,
	NombreJuegoClan varchar (50) Not null,
	NombreJugador varchar (50) Not null,
	puntos int Not null,
	Estatus bit default 1 Not null,
    primary key(IdJuegoClan)
);
create Table LigaJugador 
(
	IdLigaJugador int Not null auto_increment,
	NumeroLiga int Not null,
	JugadorRival varchar (50) Not null,
	JugadorContricante varchar (50) Not null,
	NumElixirint int Not null,
	NumOro int Not null,
	NumNegro int Not null,
	Estatus bit default 1 Not null,
    primary key(IdLigaJugador)
);
Create Table Logro
(
	IdLogro int Not null auto_increment,
	Nombre varchar (50) Not null,
	Experiencia int Not null,
	Gemas int Not null,
	Descripción varchar (200) Not null,
	Estatus bit default 1 Not null,
    primary key(IdLogro)
);

Create Table MagiaClan
(
	IdMagiaClan int Not null auto_increment,
	NombreCapital varchar (50) Not null,
	Nivel int Not null,
	Estatus bit default 1 Not null,
    primary key(IdMagiaClan)
);
Create Table Medalla
(
	IdMedalla int Not null auto_increment,
	Nombre varchar (50) Not null,
	Victoria int Not null,
	Estrella int Not null,
	Estatus bit default 1 Not null,
    primary key(IdMedalla)
);
Create Table ModoJuego
(
	IdModoJuego int Not null auto_increment,
	Nombre varchar (50) Not null,
	Estatus bit default 1 Not null,
    primary key(IdModoJuego)
);
Create Table Muro
(
	IdMuro int Not null auto_increment,
	Nombre varchar (50) Not null,
	Nivel int Not null,
	Costo int Not null,
	NivelDaño int Not null,
	Estatus bit default 1 Not null,
    primary key(IdMuro)
);
Create Table OfertaSemanal
(
	IdOfertaSemanal int Not null auto_increment,
	NombreProducto varchar (50) Not null,
	CantidadGemas int Not null,
	MaximoDisponible int Not null,
	TiempoCarga datetime Not null,
	Estatus bit default 1 Not null,
    primary key (IdOfertaSemanal)
);
Create Table PaseBatalla
(
	IdPaseBatalla int Not null auto_increment,
	NoTemporada int Not null,
	Duración datetime Not null,
	Donaciones int Not null, 
	Beneficios varchar (200) Not null,
	Estatus bit default 1 Not null,
    primary key(IdPaseBatalla)
);
Create Table Pedido
(
	IdPedido int Not null auto_increment,
	NombreJugador varchar (50) Not null,
	NumTropas int Not null,
	NumHechizos int Not null,
	NumDefensas int Not null,
	Tiempo datetime Not null,
	Estatus bit default 1 Not null,
    primary key (IdPedido)
);
Create Table Rango
(
	IdRango int Not null auto_increment,
	Nombre varchar (50) Not null,
	Estatus bit default 1 Not null,
    primary key(IdRango)
);
Create Table Recompesa
(
	IdRecompensa int Not null auto_increment,
	Nombre varchar (50) Not null,
	Requerimiento varchar (50) Not null,
	Estatus bit default 1 Not null,
    primary key(IdRecompensa)
);
Create Table Temporada
(
	IdTemporada int Not null auto_increment,
	Numero int Not null,
	Nombre varchar (50) Not null,
	FechaInicio datetime Not null,
	FechaFinal datetime Not null,
	Estatus bit default 1 Not null,
    primary key(IdTemporada)
);
Create Table Tesoreria
(
	IdTesoreria int Not null auto_increment,
	NombreRecurso varchar (50) Not null,
	CantidadAoE int Not null,
	LugarAlmacen varchar (50) Not null,
	CantidadTotal int Not null,
	Estatus bit default 1 Not null,
    primary key(IdTesoreria)
);
Create Table Tienda
(
	IdTienda int Not null auto_increment,
	NombreProducto varchar (50) Not null,
	Recurso varchar (50) Not null,
	PrecioProducto int Not null,
	MaxCantidad int Not null,
	Estatus bit default 1 Not null,
    primary key(IdTienda)
);
Create Table Tropa
(
	IdTropa int Not null auto_increment,
	Nombre varchar (50) Not null,
	Nivel int Not null,
	DañoxSegundo int Not null,
	Vida int Not null,
	Estatus bit default 1 Not null,
    primary key(IdTropa)
);
Create Table Tutorial
(
	IdTutorial int Not null auto_increment,
	Nombre varchar (50) Not null,
	Duración datetime Not null,
	Descripción varchar (100) Not null,
	Estatus bit default 1 Not null,
    primary key(IdTutorial)
);
Create Table Asalto
(
	IdAsalto int Not null auto_increment,
	Id_MagiaClan int Not null,
	ClanRival varchar (50) Not null,
	NombreCapitalCR varchar (50) Not null,
	Nivel int Not null,
	TiempoAsalto datetime Not null,
	Estatus bit default 1 Not null,
    primary key(IdAsalto),
    foreign key (Id_MagiaClan) references MagiaClan(IdMagiaClan)
);
Create Table Clan
(
	IdClan int Not null auto_increment,
	Id_Chat int Not null,
	Id_MagiaClan int Not null,
	Nombre varchar (50) Not null,
	Descipcion varchar (50) Not null,
	TipoDeClan varchar (50) Not null,
	MinimoTropas int Not null,
	Estatus bit default 1 Not null,
    primary key(IdClan),
    foreign key (Id_Chat) references Chat(IdChat),
    foreign key (Id_MagiaClan) references MagiaClan(IdMagiaClan)
);
Create Table ClanDonacion
(
	IdClanDonacion int Not null auto_increment,
	Id_Clan int Not null,
	Id_Donacion int Not null,
	Estatus bit default 1 Not null,
    primary key (IdClanDonacion),
    foreign key (Id_Clan) references Clan(IdClan),
    foreign key (Id_Donacion) references Donacion(IdDonacion)
);
Create Table ClanJuegoClan
(
	IdClanJuegoClan int Not null auto_increment,
	Id_Clan int Not null,
	Id_JuegoClan int Not null,
	Estatus bit default 1 Not null,
    primary key (IdClanJuegoClan),
    foreign key (Id_Clan) references Clan(IdClan),
    foreign key (Id_JuegoClan) references JuegoClan(IdJuegoClan)
);
Create Table ClanOfertaSemanal
(
	IdClanOfertaSemanal int Not null auto_increment,
	Id_Clan int Not null,
	Id_OfertaSemanal int Not null,
	Estatus bit default 1 Not null,
    primary key (IdClanOfertaSemanal),
    foreign key (Id_Clan) references Clan(IdClan),
    foreign key (Id_OfertaSemanal) references OfertaSemanal(IdOfertaSemanal)
);
Create Table ClanPedido
(
	IdClanPedido int Not null auto_increment,
	Id_Clan int Not null,
	Id_Pedido int Not null,
	Estatus bit default 1 Not null,
    primary key(IdClanPedido),
	foreign key (Id_Clan) references Clan(IdClan),
	foreign key (Id_Pedido) references Pedido(IdPedido)
);
Create Table Paisaje 
(
	IdPaisaje int Not null auto_increment,
	Id_Aldea int Not null,
	Nombre varchar (50) Not null,
	Descripción varchar (100) Not null,
	Estatus bit default 1 Not null,
    primary key(IdPaisaje),
    foreign key (Id_Aldea) references Aldea(IdAldea)
);
Create Table Heroe
(
	IdHeroe int Not null auto_increment,
	Id_AyuntamientoBaseConstructor int Not null,
	Nombre varchar (50) Not null,
	Daño int Not null,
	Vida int Not null,
	TiempoRegeneración datetime Not null,
	NivelHabilidad int Not null,
	Estatus bit default 1 Not null,
    primary key(IdHeroe),
    foreign key (Id_AyuntamientoBaseConstructor) references AyuntamientoBaseConstructor(IdAyuntamientoBaseConstructor)
);
Create Table Animal(IdAnimal int Not null auto_increment,
	Id_Heroe int Not null,
	Nombre varchar (50) Not null,
	Vida int Not Null,
	Estatus bit default 1 Not null,
    primary key (IdAnimal),
    foreign key (Id_Heroe) references Heroe(IdHeroe));
Create Table Aspecto 
(
	IdAspecto int Not null auto_increment,
	Id_Heroe int Not null,
	Id_Animal int Not null,
	NombreInactivo varchar (50) Not null,
	NombrePose varchar (50) Not null,
	NumDerivado int Not null,
	NumAvatido int Not null,
	NumPrevilizuacion int Not null,
	Estatus bit default 1 Not null,
    primary key(IdAspecto),
    foreign key (Id_Heroe) references Heroe(IdHeroe),
    foreign key (Id_Animal) references Animal(IdAnimal)
);
Create Table Recurso
(
	IdRecurso int Not null auto_increment,
	Id_Tesoreria int Not null,
	Nombre varchar (50) Not null,
	LugarAlmacen varchar (50) Not null,
	Cantidad int Not null,
	Descripción varchar (50) Not null,
	Estatus bit default 1 Not null,
    primary key(IdRecurso),
    foreign key (Id_Tesoreria) references Tesoreria(IdTesoreria)
);
Create Table Ataque
(
	IdAtaque Int Not Null auto_increment,
	Id_Asalto Int Not null,
	NumTropas Int Not null,
	NumHechizos Int Not null,
	Estatus bit default 1 Not null,
    primary key(IdAtaque),
    foreign key (Id_Asalto) references Asalto(IdAsalto)
);
Create Table Compra
(
	IdCompra int Not null auto_increment,
	Id_Recompensa int Not null,
	Id_Paisaje int Not null,
	Id_Adorno int Not null,
	Id_FormaPago int Not null,
	Id_Constructor int Not null,
	Id_PaseBatalla int Not null,
	Id_Forja int Not null,
	Id_Aspecto int Not null,
	Id_Estructura int Not null,
	Id_Defensa int Not null,
	Id_Tienda int Not null,
	Id_Recurso int Not null,
	NombreProducto varchar (50) Not null,
	Recurso varchar (50) Not null,
	PrecioProducto int Not null,
	CantidadProducto int Not null,
	Estatus bit default 1 Not null,
    primary key(IdCompra),
    foreign key (Id_Recompensa) references Recompesa(IdRecompensa),
	foreign key (Id_Paisaje) references Paisaje(IdPaisaje),
    foreign key (Id_FormaPago) references FormaPago(IdFormaPago),
    foreign key (Id_Constructor) references Constructor(IdConstructor),
    foreign key (Id_PaseBatalla) references PaseBatalla(IdPaseBatalla),
    foreign key (Id_Forja) references Forja(IdForja),
    foreign key (Id_Aspecto) references Aspecto(IdAspecto),
    foreign key (Id_Estructura) references Estructura(IdEstructura),
    foreign key (Id_Defensa) references Defensa(IdDefensa),
    foreign key (Id_Tienda) references Tienda(IdTienda),
    foreign key (Id_Recurso) references Recurso(IdRecurso)
);
Create Table CompraDefenza
(
	IdCompraDefenza int Not null auto_increment,
	Id_Compra int Not null,
	Id_Defenza int Not null,
	Estatus bit default 1 Not null,
    primary key(IdCompraDefenza),
    foreign key (Id_Compra) references Compra(IdCompra),
    foreign key (Id_Defenza) references Defensa(IdDefensa)
);
Create Table CompraHechizo
(
	IdCompraHechizo int Not null auto_increment,
	Id_Compra int Not null,
	Id_Hechizo int Not null,
	Estatus bit default 1 Not null,
    primary key(IdCompraHechizo),
    foreign key (Id_Compra) references Compra(IdCompra),
    foreign key (Id_Hechizo) references Hechizo(IdHechizo)
);
Create Table CompraMuro
(
	IdCompraMuro int Not null auto_increment,
	Id_Compra int Not null,
	Id_Muro int Not null,
	Estatus bit default 1 Not null,
    primary key(IdCompraMuro),
    foreign key (Id_Compra) references Compra(IdCompra),
    foreign key (Id_Muro) references Muro(IdMuro)
);
Create Table CompraTienda
(
	IdCompraTienda int Not null auto_increment,
	Id_Compra int Not null,
	Id_Tienda int Not null,
	Estatus bit default 1 Not null,
    primary key(IdCompraTienda),
    foreign key (Id_Compra) references Compra(IdCompra),
    foreign key (Id_Tienda) references Tienda(IdTienda)
);
Create Table CompraTropa
(
	IdCompraTropa int Not null auto_increment,
	Id_Compra int Not null,
	Id_Tropa int Not null,
	Estatus bit default 1 Not null,
    primary key (IdCompraTropa),
    foreign key (Id_Compra) references Compra(IdCompra),
    foreign key (Id_Tropa) references Tropa(IdTropa)
);
Create Table InvestigacionHechizo
(
	IdInvestigacionHechizo int Not null auto_increment,
	Id_Investigacion int Not null, 
	Id_Hechizo int Not null,
	Estatus bit default 1 Not null,
    primary key(IdInvestigacionHechizo),
    foreign key (Id_Investigacion) references Investigacion(IdInvestigacion),
    foreign key (Id_Hechizo) references Hechizo(IdHechizo)
);
Create Table InvestigacionTropa
(
	IdInvestigacionTropa int Not null auto_increment,
	Id_Investigacion int Not null,
	Id_Tropa int Not null,
	Estatus bit default 1 Not null,
    primary key (IdInvestigacionTropa),
    foreign key (Id_Investigacion) references Investigacion(IdInvestigacion),
    foreign key (Id_Tropa) references Tropa(IdTropa)
);
Create Table Jugador
(
	IdJugador int Not null auto_increment,
	Id_Tesoreria int Not null,
	Id_Aldea int Not null,
	Id_Clan int Not null,
	Id_CompañiaIndividual int Not null,
	Alias varchar (50) Not null,
	Nombre varchar (50) Not null,
	APaterno varchar (50) Not null,
	AMaterno varchar (50) Not null,
	Correo varchar (50) Not null,
	Contraseña varchar (50) Not null,
	Estatus bit default 1 Not null,
    primary key(IdJugador),
    foreign key (Id_Tesoreria) references Tesoreria(IdTesoreria),
    foreign key (Id_Clan) references Clan(IdClan),
    foreign key (Id_Aldea) references Aldea(IdAldea),
    foreign key (Id_CompañiaIndividual) references CompañiaIndividual(IdCompañiaIndividual)
);
Create Table JugadorLigaJugador
(
	IdJugadorLigaJugador int Not null auto_increment,
	Id_Jugador int Not null,
	Id_LigaJugador int Not null,
	Estatus bit default 1 Not null,
    primary key(IdJugadorLigaJugador),
    foreign key (Id_LigaJugador) references LigaJugador(IdLigaJugador),
    foreign key (Id_Jugador) references Jugador(IdJugador)
);
Create Table JugadorModoJuego
(
	IdJugadorModoJuego int Not null auto_increment,
	Id_Jugador int Not null,
	Id_ModoJuego int Not null,
	Estatus bit default 1 Not null,
    primary key(IdJugadorModoJuego),
    foreign key (Id_ModoJuego) references ModoJuego(IdModoJuego),
    foreign key (Id_Jugador) references Jugador(IdJugador)
);
Create Table JugadorRango
(
	IdJugadorRango int Not null auto_increment,
	Id_Jugador int Not null,
	Id_Rango int Not null,
	Estatus bit default 1 Not null,
    primary key(IdJugadorRango),
    foreign key (Id_Rango) references Rango(IdRango),
    foreign key (Id_Jugador) references Jugador(IdJugador)
);
Create Table JugadorTemporada
(
	IdJugadorTemporada int Not null auto_increment,
	Id_Jugador int Not null,
	Id_Temporada int Not null,
	Estatus bit default 1 Not null,
    primary key(IdJugadorTemporada),
    foreign key (Id_Temporada) references Temporada(IdTemporada),
    foreign key (Id_Jugador) references Jugador(IdJugador)
);
Create Table JugadorTienda
(
	IdJugadorTienda int Not null auto_increment,
	Id_Jugador int Not null,
	Id_Tienda int Not null,
	Estatus bit default 1 Not null,
    primary key(IdJugadorTienda),
    foreign key (Id_Tienda) references Tienda(IdTienda),
    foreign key (Id_Jugador) references Jugador(IdJugador)
);
Create Table JugadorTutorial
(
	IdJugadorTutorial int Not null auto_increment,
	Id_Jugador int Not null,
	Id_Tutorial int Not null,
	Estatus bit default 1 Not null,
    primary key(IdJugadorTutorial),
    foreign key (Id_Tutorial) references Tutorial(IdTutorial),
    foreign key (Id_Jugador) references Jugador(IdJugador)
);
Create Table Desafio 
(
	IdDesafio int Not null auto_increment,
	Id_Jugador int Not null,
	Nombre varchar (50) Not null,
	Descripción varchar (200) Not null, 
	Puntos int Not null,
	Estatus bit default 1 Not null,
    primary key(IdDesafio),
    foreign key (Id_Jugador) references Jugador(IdJugador)
);
Create Table Ejercito
(
	IdEjercito int Not null auto_increment,
	Id_Jugador int Not null,
	NumDefenza int Not null,
	NumHechizo int Not null,
	NumHeroe int Not null,
	NumEjercito int Not null,
	MaquinaAsendio varchar (50) Not null,
	Estatus bit default 1 Not null,
    primary key(IdEjercito),
    foreign key (Id_Jugador) references Jugador(IdJugador)
);
Create Table Evento
(
	IdEvento int Not null auto_increment,
	Id_Temporada int Not null,
	Nombre varchar (50) Not null,
	FechaInicio datetime Not null,
	FechaFinal datetime Not null,
	Descripción varchar (200) Not null,
	Estatus bit default 1 Not null,
    primary key(IdEvento),
    foreign key (Id_Temporada) references Temporada(IdTemporada)
);
Create Table GuerraClan
(
	IdGuerraClan int Not null auto_increment,
	Id_Clan int Not null,
	NombreCR varchar (50) Not null,
	NumParticipantesCR int Not null,
	NumEstrellasCR int Not null, 
	RecompensaOroCR int Not null, 
	RecompensaElixirCR int Not null, 
	NumTrofeosCR int Not null, 
	NombreCC varchar (50) Not null,
	NumParticipantesCC int Not null,
	NumEstrellasCC int Not null, 
	RecompensaOroCC int Not null, 
	RecompensaElixirCC int Not null, 
	NumTrofeosCC int Not null,
	Estatus bit default 1 Not null,
    primary key(IdGuerraClan),
    foreign key (Id_Clan) references Clan(IdClan)
);
Create Table GuerraClanMedalla
(
	IdGuerraClanMedalla int Not null auto_increment,
	Id_GuerraClan int Not null,
	Id_Medalla int Not null,
	Estatus bit default 1 Not null,
    primary key(IdGuerraClanMedalla),
    foreign key (Id_GuerraClan) references GuerraClan(IdGuerraClan),
    foreign key (Id_Medalla) references Medalla(IdMedalla)
);
Create Table LigaJugadorRecompensa
(
	IdLigaJugadorRecompensa int Not null auto_increment,
	Id_LigaJugador int Not null,
	Id_Recompensa int Not null,
	Estatus bit default 1 Not null,
    primary key(IdLigaJugadorRecompensa),
    foreign key (Id_LigaJugador) references LigaJugador(IdLigaJugador),
    foreign key (Id_Recompensa) references Recompesa(IdRecompensa)
);
Create Table MaquinaAsendio
(
	IdMaquinaAsiendo int Not null auto_increment,
	Id_Ejercito int Not null,
	Nombre varchar (50) Not null,
	Función varchar (100) Not null,
	Daño int Not null,
	Cantidad int Not null,
	Estatus bit default 1 Not null,
    primary key(IdMaquinaAsiendo),
    foreign key (Id_Ejercito) references Ejercito(IdEjercito)
);
Create Table RangoMedalla
(
	IdRangoMedalla int Not null auto_increment,
	Id_Rango int Not null,
	Id_Medalla int Not null,
	Estatus bit default 1 Not null,
    primary key(IdRangoMedalla),
    foreign key (Id_Rango) references Rango(IdRango),
    foreign key (Id_Medalla) references Medalla(IdMedalla)
);
Create Table Practica
(
	IdPractica int Not null auto_increment,
	Id_CompañiaIndividual int Not null,
	Nivel int Not null,
	NumTropasRemplazo int Not null,
	NombreCampoBatalla varchar (50) Not null,
	CantidadOro int Not null,
	CantidadElixir int Not null,
	Estatus bit default 1 Not null,
    primary key(IdPractica),
    foreign key (Id_CompañiaIndividual) references CompañiaIndividual(IdCompañiaIndividual)
);
Create Table Venta
(
	IdVenta int Not null auto_increment,
	Id_ObjetoMagico int Not null,
	NombreObjetoMagico varchar (50) Not null,
	CanitidadGemas int Not null,
	CanitdadObjetoMagico int Not null,
	Estatus bit default 1 Not null,
    primary key(IdVenta),
    foreign key (Id_ObjetoMagico) references ObjetoMagico(IdObjetoMagico)
);
Create Table Mejora
(
	IdMejora int Not null auto_increment,
	Id_Defensa int Not null,
	Id_Tropa int Not null,
	Id_Hechizo int Not null,
	Id_Estructura int Not null,
	Id_Muro int Not null,
	Id_Jugador int Not null,
	IdAyuntamientoBaseConstuctor int Not null,
	NombreMejora varchar (50) Not null,
	TiempoUtilizado datetime Not null,
	NombreRecurso varchar (50) Not null,
	Cantidad int Not null,
	Estatus bit default 1 Not null,
    primary key(IdMejora),
    foreign key (Id_Estructura) references Estructura(IdEstructura),
    foreign key (Id_Defensa) references Defensa(IdDefensa),
    foreign key (Id_Tropa) references Tropa(IdTropa),
    foreign key (Id_Hechizo) references Hechizo(IdHechizo),
    foreign key (Id_Muro) references Muro(IdMuro),
    foreign key (Id_Jugador) references Jugador(IdJugador)
);