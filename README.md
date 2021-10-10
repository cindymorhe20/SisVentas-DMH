Link de la página web: http://35.239.244.78/

Proyecto elaborado en Visual Studio Code, lenguaje PHP Apache, css, js, aravel, composer, base de datos Phpmyadmin.

Se debe de descargar el proyecto y guardarlo en XAMPP, carpeta htdocs. Base de dato se encuentra en la carpeta llamada "db", se procede a importar y ejecutar en phpmyadmin.

Luego colocar en el buscardor http://localhost/sisventasDMH/public/index.php

En la página de inicio de sesión se muestra campos para que el usuario pueda ingresar sus datos así pueda acceder al sistema.  

Usuario: admin@admin.com    
Password: admin

![image](https://user-images.githubusercontent.com/60634887/136679647-1c58cf47-069f-4a1e-aa2a-d377812e919a.png)

En la página de inicio se muestra un diseño y cómo principal es el listado de las ventas realizadas en la empresa, a su vez se puede realizar una nueva venta.

![image](https://user-images.githubusercontent.com/60634887/136679657-c8d13c34-9355-4589-b1d7-911018ffb59d.png)

En la página de nueva venta se muestran campos en los cuales debemos de ingresar una nueva venta, donde se requiere un cliente, si el cliente no está registrado entonces con anterioridad a realizar la nueva venta se debe de ingresar un nuevo cliente para poder generar la misma, siendo así se procede a seleccionar el cliente, tipo de comprobante que en este caso hay 3, siendo “Boleta, Ticket, Factura”, Serie del Comprobante y Número del comprobante seleccionado. Lo que procede es seleccionar el o los artículos que el cliente comprará, cantidad del artículo, el stock que éste tiene, el precio de venta y si en dado caso se requiere hacer un descuento. Se va agregando en el listado y se procede a guardar la venta.

![image](https://user-images.githubusercontent.com/60634887/136679667-454ba6ef-f8c1-4a63-812b-c45bb789f33a.png)

En la siguiente imagen se muestra cómo es que ya se agregó un artículo a la venta.

![image](https://user-images.githubusercontent.com/60634887/136679681-1a18d65f-900b-4cf0-b6c9-aa64fd1217a9.png)

En la siguiente imagen se muestra el comprobante de la venta generada.

![image](https://user-images.githubusercontent.com/60634887/136680406-d16cac9b-044a-4600-bf79-e9e624f7defa.png)

En la página de artículos se muestran los artículos que están en stock, pudiendo hacer búsqueda de algún artículo, con su respectivo código, nombre, descripción, cantidad en stock, imagen y si están activos, a su vez se muestran botones de editar y eliminar.

![image](https://user-images.githubusercontent.com/60634887/136680413-909b3a3a-1d3d-4126-85ae-ba018fd47605.png)

En la página de artículos se muestra el botón NUEVO, este permite el ingreso de un nuevo artículo, donde el usuario debe de agregar el nombre, la categoría existente y de no ser así se debe de agregar con anterioridad una nueva categoría, se procede a generar un código, el stock que el artículo tendrá, la descripción e imagen de este. 

![image](https://user-images.githubusercontent.com/60634887/136680420-b6c9a741-2864-4ac1-b9ec-8cda854dff81.png)

En la siguiente imagen se muestra que ya se ingresó un nuevo artículo, y se procede a guardar. 

![image](https://user-images.githubusercontent.com/60634887/136680438-14bc67ff-feb4-4225-90d4-c4e47130d7ef.png)

Ya guardado el artículo se muestra en el listado de artículos en Stock.

![image](https://user-images.githubusercontent.com/60634887/136680450-55b381bb-13d6-416b-a934-22fb12c55142.png)

En la página de Categorías se muestran las categorías existentes, contienen un Id, nombre y descripción, dichas categorías se pueden editar o eliminar. 

![image](https://user-images.githubusercontent.com/60634887/136680467-aaea400e-58a3-451f-83fc-d646826a997e.png)

En la página de Categorías se muestra un botón de Nuevo, el cuál redirige a la creación de una nueva categoría, se procede a crear una nueva.

![image](https://user-images.githubusercontent.com/60634887/136680479-7b5c8572-a304-42b1-b30f-43f2a58bdd37.png)

Ya creada la categoría se muestra en el listado de categorías. 

![image](https://user-images.githubusercontent.com/60634887/136680490-3e6438b1-7570-4969-b892-5602733296d8.png)

En la página de Compras, se muestra el listado de los ingresos de las compras realizadas, con la fecha en la cual se realizó, el proveedor, el comprobante, el impuesto que se genera y el total gastado, a su vez tiene botón de detalle y anular. 

![image](https://user-images.githubusercontent.com/60634887/136680494-0a10ed85-45b1-4063-a884-0016c060b4cd.png)

A continuación, se muestra el detalle de una compra, que a su vez la cantidad que se compra hace que se actualice el stock de los artículos comprados. 

![image](https://user-images.githubusercontent.com/60634887/136680514-5ee3a3d4-a8a3-4c1b-8339-6dd2845af44f.png)

En la página de Ingresos se muestra el botón de nuevo, que permite el ingreso de una nueva compra, mostrando el proveedor, si no está se procede a ingresar un nuevo proveedor con anterioridad, luego el tipo, serie y número de comprobante. Si el artículo es de los ya ingresados en stock entonces solo se procede a buscar si no se debe de crear el nuevo artículo previamente, la cantidad de artículos comprados, el precio de compra unitario y el precio de venta unitario, se procede a agregar y aparece en el listado. 

![image](https://user-images.githubusercontent.com/60634887/136680528-98a32634-03de-42df-859e-4b7245097589.png)

Al momento de guardar la compra se agrega en el listado de ingresos

![image](https://user-images.githubusercontent.com/60634887/136680538-7b364236-b84f-4da7-aa11-52eb403152f3.png)

Se puede verificar el detalle de la compra

![image](https://user-images.githubusercontent.com/60634887/136680548-793def81-5532-462f-a0d9-58d6607b7111.png)

En la página de Compras muestra también la página de proveedor, el cuál muestra el listado de los proveedores ya ingresados, con su respectivo Id, nombre y los datos del proveedor, teniendo la opción de editar y eliminar. 

![image](https://user-images.githubusercontent.com/60634887/136680559-bb6b60c2-0514-4712-87a8-43f69fc19113.png)

En la página de Proveedor muestra el botón de nuevo, éste permite ingresar un nuevo proveedor al listado, que permite el ingreso del nombre y los demás datos del proveedor. 

![image](https://user-images.githubusercontent.com/60634887/136680578-1e599620-6967-4d5d-b8f7-ad4e4d2cb289.png)

Ya ingresados los datos, se muestra el nuevo proveedor en el listado de proveedores. 

![image](https://user-images.githubusercontent.com/60634887/136680582-9c584181-55dc-4667-bab0-968f6fc16dd7.png)

En la página de Ventas, muestra también la página de clientes, en esta se muestra el listado de los clientes ya ingresados, a su vez se puede crear un nuevo cliente. Este listado incluye el Id, nombre, número de documento, teléfono y e-mail. También contiene los respectivos botones de editar y eliminar. 

![image](https://user-images.githubusercontent.com/60634887/136680597-cc0ba856-0569-4d18-b5af-95e5fc9af30d.png)

En la página de clientes se encuentra un botón de Nuevo, lo que permite crear un nuevo cliente, a su vez se puede agregar el nombre, dirección, documento, numero de documento, teléfono y el e-mail del cliente.

![image](https://user-images.githubusercontent.com/60634887/136680604-9e9c546e-af59-4185-a0c3-a1bbc6926b25.png)

Ya ingresado el nuevo cliente éste se visualiza en el listado de clientes.

![image](https://user-images.githubusercontent.com/60634887/136680612-3a274dcd-76f9-4d95-a043-d7f3ab307df3.png)


