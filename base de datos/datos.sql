/*
* Datos estetica
*fecha de inicio 28/08/24
*/

-- Definiendo los roles

INSERT INTO roles 
	(id_rol, name_rol) VALUES
    (0, 'Administrador'),
    (1, 'Cliente');

-- Agregando algunos usuarios

INSERT INTO user
(id_user, name_user, email, password, id_rol, phone_number, profile_photo) VALUES

    (1, 'Alejandra Blanco', 'alejablanco@gmail.com', 'xxxxxxxx', 0, '3227116369', 'link'),
    
    (2, 'Julian Coello', 'jualiancoello23@gmail.com', 'xxxxxxxx', 1, '31254652786', 'link');

-- Agregando productos

INSERT INTO products 
(id_product, name_product, description, price, category, photo_product, rating, average) VALUES

	(1, 'Crema hidratante', 'Frasco de crema de 50 ml a base de baba de caracol', 30000, 'Producto', 'link_a_foto1.jpg', 0, 0),

	(2, 'Mascarilla facial de arcilla', 'Mascarilla de 100 ml con propiedades purificantes', 25000, 'Facial', 'link_a_foto2.jpg', 0, 0),

	(3, 'Aceite esencial de lavanda', 'Botella de 30 ml de aceite esencial 100% puro', 35000, 'Aromaterapia', 'link_a_foto3.jpg', 0, 0),

	(4, 'Exfoliante corporal', 'Exfoliante de 200 g con partículas de cáscara de nuez', 28000, 'Cuerpo', 'link_a_foto4.jpg', 0, 0),

	(5, 'Serum anti-envejecimiento', 'Serum de 30 ml con retinol y vitamina C', 45000, 'Facial', 'link_a_foto5.jpg', 0, 0),

	(6, 'Gel limpiador facial', 'Gel de 150 ml para una limpieza profunda y suave', 22000, 'Facial', 'link_a_foto6.jpg', 0, 0),

	(7, 'Crema para manos', 'Crema hidratante de 75 ml con extracto de aloe vera', 20000, 'Manos', 'link_a_foto7.jpg', 0, 0),

	(8, 'Crema para el contorno de ojos', 'Crema de 15 ml con ingredientes anti-arrugas', 40000, 'Facial', 'link_a_foto8.jpg', 0, 0),

	(9, 'Paquete de velas aromáticas', 'Paquete con 6 velas aromáticas de diferentes fragancias', 30000, 'Aromaterapia', 'link_a_foto9.jpg', 0, 0),

	(10, 'Jabón exfoliante de café', 'Jabón de 100 g con granos de café para exfoliar la piel', 18000, 'Cuerpo', 'link_a_foto10.jpg', 0, 0);

-- Agregando valores a almacen 

INSERT INTO storage (id_storage, id_product, amount, update_date, price) VALUES

	(1, 1, 20, '2024-08-28', 20000),

	(2, 2, 15, '2024-08-29', 25000),

	(3, 3, 10, '2024-08-30', 35000),

	(4, 4, 30, '2024-08-31', 28000),

	(5, 5, 12, '2024-09-01', 45000),

	(6, 6, 25, '2024-09-02', 22000),

	(7, 7, 18, '2024-09-03', 20000),

	(8, 8, 22, '2024-09-04', 40000),

	(9, 9, 8, '2024-09-05', 30000),

	(10, 10, 50, '2024-09-06', 18000);

    
-- Citas

insert into appointment 
	(id_appointment, id_employer, id_client, date_appointment, id_status) VALUES
	(1, 1, 1, '2024-06-10', 'Terminado'),
    
	(2, 1, 2, '2024-06-11', 'Agendado'),
    
	(3, 2, 3, '2024-06-12', 'Cancelado'),
    
	(4, 3, 1, '2024-06-13', 'Postergado'),
    
	(5, 1, 4, '2024-06-14', 'Agendado'),
    
	(6, 2, 5, '2024-06-15', 'Terminado'),
    
	(7, 3, 2, '2024-06-16', 'Cancelado'),
    
	(8, 1, 3, '2024-06-17', 'Postergado'),
    
	(9, 2, 4, '2024-06-18', 'Terminado'),
    
	(10, 3, 5, '2024-06-19', 'Agendado'),
    
	(11, 1, 1, '2024-06-20', 'Terminado');

-- Eliminando constante de foreign key de tabla appointment

alter table appointment drop foreign key appointment_ibfk_1;
alter table appointment drop foreign key appointment_ibfk_2;



INSERT INTO product_appointment 
(id_purchase, id_product, amount, price_sale) VALUES

(1, 1, 2, 'Producto'),

(1, 4, 1, 'Cuerpo'), 

(2, 2, 3, 'Facial'),

(2, 5, 1, 'Facial'), 

(3, 6, 2, 'Facial'), 

(3, 7, 1, 'Manos'),    

(4, 3, 5, 'Aromaterapia'), 

(4, 9, 2, 'Aromaterapia'), 

(5, 8, 1, 'Facial'),   

(5, 10, 4, 'Cuerpo');  


-- creando el rating

INSERT INTO  rating

(id_rating, id_product, id_user, rating_value, comment, rating_date)





-- Agregando preguntas frecuentes y su respuesta

INSERT INTO frequently_questions
(id_question, question, answer, status) VALUES
	(1, '¿Cómo puedo cuidar mi piel de manera correcta?', 
	 'Para comenzar, debes saber qué tipo de piel tienes, ya que existen diferentes tipos como la piel grasa y la piel seca. Con esta información, podrás elegir los productos adecuados para tu piel.', 
	 'Respondida'),

	(2, '¿Cuál es la diferencia entre una limpieza facial y un exfoliante?', 
	 'La limpieza facial elimina impurezas y maquillaje, mientras que el exfoliante elimina células muertas de la piel para mejorar su textura y apariencia. Ambos son importantes en una rutina de cuidado de la piel.', 
	 'Respondida'),

	(3, '¿Con qué frecuencia debo usar una mascarilla facial?', 
	 'La frecuencia con la que debes usar una mascarilla facial depende del tipo de mascarilla y de tu tipo de piel. Generalmente, una mascarilla se recomienda usar una vez a la semana.', 
	 'Por responder'),

	(4, '¿Qué ingredientes debo buscar en un hidratante para piel seca?', 
	 'Para piel seca, busca hidratantes que contengan ingredientes como ácido hialurónico, glicerina, y ceramidas, que ayudan a mantener la piel hidratada y suave.', 
	 'Respondida'),

	(5, '¿Cómo puedo reducir las arrugas alrededor de los ojos?', 
	 'Para reducir las arrugas alrededor de los ojos, utiliza cremas específicas para el contorno de ojos que contengan retinol, vitamina C, o péptidos, y asegúrate de mantener una buena hidratación.', 
	 'Respondida'),

	(6, '¿Cuáles son los beneficios de un masaje de cuerpo completo?', 
	 'Un masaje de cuerpo completo puede ayudar a aliviar el estrés, reducir la tensión muscular, mejorar la circulación sanguínea y promover una sensación general de bienestar.', 
	 'Respondida'),

	(7, '¿Con qué frecuencia se recomienda recibir un masaje terapéutico?', 
	 'La frecuencia recomendada para recibir un masaje terapéutico puede variar según tus necesidades individuales y tus objetivos. Generalmente, una vez al mes es una buena frecuencia para mantener el bienestar general.', 
	 'Por responder'),

	(8, '¿Qué diferencia hay entre un masaje sueco y un masaje profundo?', 
	 'El masaje sueco se enfoca en la relajación y utiliza movimientos suaves y largos, mientras que el masaje profundo se centra en capas más profundas de los músculos y tejido conectivo para aliviar tensiones más intensas.', 
	 'Respondida'),

	(9, '¿Es seguro recibir masajes si tengo una lesión?', 
	 'Es importante consultar con un médico o terapeuta antes de recibir un masaje si tienes una lesión. Ellos pueden recomendarte el tipo de masaje más adecuado y seguro para tu condición.', 
	 'Respondida'),

	(10, '¿Qué debo hacer antes de recibir un masaje para asegurarme de que sea efectivo?', 
	 'Para asegurar que tu masaje sea efectivo, llega con la piel limpia y evita comer grandes comidas justo antes. También comunica tus áreas de preocupación o cualquier condición médica a tu terapeuta.', 
	 'Respondida');
 
 -- Agregando algunas notificaciones que se verán en la página

INSERT INTO notifications
(id_notification, message, read_status, notification_date) VALUES 
	(1, 'Nuevo producto en stock: mascarilla facial a base de aguacate. ¡Mírala ya en nuestra sección de "Facial"!', 'F', '2024-09-13'),

	(2, '¡Gran oferta en nuestro local! Reserva tu masaje de relajación con un 20% de descuento hasta fin de mes.', 'T', '2024-09-14'),

	(3, '¡Recordatorio! Tu cita para el limpieza facial está programada para mañana a las 10:00 AM.', 'F', '2024-09-13'),

	(5, 'Gracias por tu compra. Tu pedido será enviado en 2-3 días hábiles. Puedes seguir el estado en nuestra página de pedidos.', 'F', '2024-09-11'),

	(6, '¡Feliz cumpleaños! Disfruta de un 15% de descuento en tu próxima compra usando el código BDAY15.', 'T', '2024-09-10'),

	(7, '¡Nuevo curso en línea sobre técnicas de masaje! Inscríbete hoy para aprender de los mejores profesionales.', 'F', '2024-09-13'),

	(8, 'Tu consulta sobre productos para piel sensible ha sido respondida. Revisa tu bandeja de entrada para más detalles.', 'T', '2024-09-14'),

	(9, '¡Nueva actualización en nuestra aplicación! Ahora puedes gestionar tus citas de manera más fácil.', 'F', '2024-09-12'),

	(10, 'No olvides tu cita para el tratamiento de belleza mañana a las 2:00 PM. ¡Te esperamos!', 'T', '2024-09-13');

