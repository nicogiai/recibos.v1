---------------------------------------------------------------------------------------------
>rails g controller clientes
--agrego resources:clientes a <routes.rb>
>rake routes
---------------------------------------------------------------------------------------------
GIT
git add some-file
git status
git commit -m "refactor to simplify"

git remote add origin https://github.com/nicogiai/recibos-v1-git
git push origin master

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DEPRECATED

rails generate scaffold usuario usuario:string clave:string email:string
rails generate scaffold afip_act actividad:string
rails generate scaffold dgr_act actividad:string
rails generate scaffold autonomo categoria:string importe:decimal{8,2}
rails generate scaffold monotributo categoria:string importe:decimal{8,2} si_adherente:boolean importe_por_adherente:decimal{8,2}
rails generate scaffold cliente cliente:string cuit:string telefono1:string telefono2:string telefono3:string email1:string email2:string fecha_inicio:date clave_fiscal:string clave_muni:string domicilio1:string domicilio2:string notas:text iibb_cm:string cant_adherentes:integer autonomo:reference monotributo:reference
rails generate scaffold periodo fecha_inicio:date fecha_fin:date descripcion:string
rails generate scaffold autonomo_por_periodo importe:decimal{8,2} autonomo:references periodo:references
rails generate scaffold monotributo_por_periodo importe:decimal{8,2} monotributo:references periodo:references
rails generate scaffold impuesto impuesto:string importe:decimal{8,2} cm:boolean default_vencimiento0:date default_vencimiento1:date default_vencimiento2:date default_vencimiento3:date default_vencimiento4:date default_vencimiento5:date default_vencimiento6:date default_vencimiento7:date default_vencimiento8:date default_vencimiento9:date
rails generate scaffold cliente_por_impuesto importe:decimal{8,2} recibe_mail:boolean cliente:reference impuesto:reference
rails generate scaffold payment_place lugar:string notas:text
rails generate scaffold pago importe:decimal{8,2} notas:text payment_place:reference
rails generate scaffold impuesto_por_periodo periodo:reference impuesto:reference default_vencimiento0:date default_vencimiento1:date default_vencimiento2:date default_vencimiento3:date default_vencimiento4:date default_vencimiento5:date default_vencimiento6:date default_vencimiento7:date default_vencimiento8:date default_vencimiento9:date importe:decimal{8,2}
rails generate scaffold cliente_por_impuesto_periodo cliente:reference impuesto:reference periodo:reference cliente_avisado:boolean importe:decimal{8,2} notas:text
rails generate scaffold recibo concepto:string otros_importes:decimal{8,2} notas:text
rails generate scaffold movimiento concepto:string importe:decimal{8,2} saldo:decimal{8,2} notas:text
rails generate model impuesto_por_payment_place orden:integer impuesto:reference payment_place:reference
rails generate model recibo_por_cliente_por_impuesto_por_periodo recibo:reference cliente:reference periodo:reference impuesto:reference fecha_programada_de_pago:date
rails generate model afip_act_por_cliente afip_act:references cliente:references
rails generate model dgr_act_por_cliente dgr_act:references cliente:references
rails generate model cliente_por_impuesto_por_periodo_por_pago pago:reference cliente: reference impuesto:reference periodo:reference

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

rails generate model Usuario usuario:string clave:string email:string
rails generate model AfipAct actividad:string
rails generate model DgrAct actividad:string
rails generate model Autonomo categoria:string importe:decimal{8,2}
rails generate model Monotributo categoria:string importe:decimal{8,2} si_adherente:boolean importe_por_adherente:decimal{8,2}
rails generate model Cliente cliente:string cuit:string telefono1:string telefono2:string telefono3:string email1:string email2:string fecha_inicio:date clave_fiscal:string clave_muni:string domicilio1:string domicilio2:string notas:text iibb_cm:string cant_adherentes:integer autonomo:references monotributo:references
rails generate model Periodo fecha_inicio:date fecha_fin:date descripcion:string
rails generate model AutonomosPorPeriodo importe:decimal{8,2} autonomo:references periodo:references
rails generate model MonotributosPorPeriodo importe:decimal{8,2} monotributo:references periodo:references
rails generate model Impuesto impuesto:string importe:decimal{8,2} cm:boolean default_vencimiento0:date default_vencimiento1:date default_vencimiento2:date default_vencimiento3:date default_vencimiento4:date default_vencimiento5:date default_vencimiento6:date default_vencimiento7:date default_vencimiento8:date default_vencimiento9:date
rails generate model ClientesPorImpuesto importe:decimal{8,2} recibe_mail:boolean cliente:references impuesto:references
rails generate model PaymentPlace lugar:string notas:text
rails generate model Pago importe:decimal{8,2} notas:text payment_place:references
rails generate model ImpuestosPorPeriodo periodo:references impuesto:references default_vencimiento0:date default_vencimiento1:date default_vencimiento2:date default_vencimiento3:date default_vencimiento4:date default_vencimiento5:date default_vencimiento6:date default_vencimiento7:date default_vencimiento8:date default_vencimiento9:date importe:decimal{8,2}
rails generate model HistorialDeImpuesto cliente:references impuestos_por_periodo:references cliente_avisado:boolean importe:decimal{8,2} notas:text
rails generate model Recibo concepto:string otros_importes:decimal{8,2} notas:text
rails generate model Movimiento concepto:string importe:decimal{8,2} saldo:decimal{8,2} notas:text
rails generate model ImpuestosPorPaymentPlace orden:integer impuesto:references payment_place:references
rails generate model RecibosDeImpuesto recibo:references historial_de_impuesto:references fecha_programada_de_pago:date

--rails generate model AfipActPorCliente afip_act:references cliente:references
--rails generate model DgrActPorCliente dgr_act:references cliente:references
--rails generate model ClientePorImpuestoPorPeriodoPorPago pago:references cliente: references impuesto:references periodo:references

rails generate migration CreateJoinTableAfipActCliente afip_act cliente
rails generate migration CreateJoinTableDgrActCliente dgr_act cliente
rails generate migration CreateJoinTablePagoHistorialDeImpuesto pago historial_de_impuesto

--agregar indices para las tablas join
--rails generate migration AddIndexesToAfipActsClientes

rake populate_db_from_csv:afip_task
rake populate_db_from_csv:cliente_task
