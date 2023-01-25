PGDMP     :    8                 {         	   ticketapp    10.14    13.4 j    }           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ~           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17052 	   ticketapp    DATABASE     h   CREATE DATABASE ticketapp WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE ticketapp;
                postgres    false            �            1259    17071 	   entidades    TABLE     �   CREATE TABLE public.entidades (
    id integer NOT NULL,
    name character varying(50),
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
    DROP TABLE public.entidades;
       public            postgres    false            �            1259    17069    entidad_id_seq    SEQUENCE     �   CREATE SEQUENCE public.entidad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.entidad_id_seq;
       public          postgres    false    201            �           0    0    entidad_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.entidad_id_seq OWNED BY public.entidades.id;
          public          postgres    false    200            �            1259    17063    estados    TABLE     Y   CREATE TABLE public.estados (
    id integer NOT NULL,
    name character varying(50)
);
    DROP TABLE public.estados;
       public            postgres    false            �            1259    17061    estado_id_seq    SEQUENCE     �   CREATE SEQUENCE public.estado_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.estado_id_seq;
       public          postgres    false    199            �           0    0    estado_id_seq    SEQUENCE OWNED BY     @   ALTER SEQUENCE public.estado_id_seq OWNED BY public.estados.id;
          public          postgres    false    198            �            1259    17055    grupos    TABLE     �   CREATE TABLE public.grupos (
    id integer NOT NULL,
    name character varying(50),
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
    DROP TABLE public.grupos;
       public            postgres    false            �            1259    17053    grupo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.grupo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.grupo_id_seq;
       public          postgres    false    197            �           0    0    grupo_id_seq    SEQUENCE OWNED BY     >   ALTER SEQUENCE public.grupo_id_seq OWNED BY public.grupos.id;
          public          postgres    false    196            �            1259    17090    prioridades    TABLE     ^   CREATE TABLE public.prioridades (
    id integer NOT NULL,
    name character varying(100)
);
    DROP TABLE public.prioridades;
       public            postgres    false            �            1259    17088    prioridad_id_seq    SEQUENCE     �   CREATE SEQUENCE public.prioridad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.prioridad_id_seq;
       public          postgres    false    203            �           0    0    prioridad_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.prioridad_id_seq OWNED BY public.prioridades.id;
          public          postgres    false    202            �            1259    17228    seguimientos    TABLE     �  CREATE TABLE public.seguimientos (
    id integer NOT NULL,
    created_date timestamp with time zone,
    description text,
    user_id integer,
    ticket_id integer,
    eventclosing_id integer,
    event1_id integer,
    event2_id integer,
    event3_id integer,
    event4_id integer,
    public_sg boolean,
    on_hold boolean,
    update_date timestamp with time zone,
    usr_resp_id integer
);
     DROP TABLE public.seguimientos;
       public            postgres    false            �            1259    17226    seguimientos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.seguimientos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.seguimientos_id_seq;
       public          postgres    false    219            �           0    0    seguimientos_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.seguimientos_id_seq OWNED BY public.seguimientos.id;
          public          postgres    false    218            �            1259    17119    suceso1    TABLE     a   CREATE TABLE public.suceso1 (
    id integer NOT NULL,
    description character varying(100)
);
    DROP TABLE public.suceso1;
       public            postgres    false            �            1259    17117    suceso1_id_seq    SEQUENCE     �   CREATE SEQUENCE public.suceso1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.suceso1_id_seq;
       public          postgres    false    207            �           0    0    suceso1_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.suceso1_id_seq OWNED BY public.suceso1.id;
          public          postgres    false    206            �            1259    17127    suceso2    TABLE     a   CREATE TABLE public.suceso2 (
    id integer NOT NULL,
    description character varying(100)
);
    DROP TABLE public.suceso2;
       public            postgres    false            �            1259    17125    suceso2_id_seq    SEQUENCE     �   CREATE SEQUENCE public.suceso2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.suceso2_id_seq;
       public          postgres    false    209            �           0    0    suceso2_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.suceso2_id_seq OWNED BY public.suceso2.id;
          public          postgres    false    208            �            1259    17135    suceso3    TABLE     a   CREATE TABLE public.suceso3 (
    id integer NOT NULL,
    description character varying(100)
);
    DROP TABLE public.suceso3;
       public            postgres    false            �            1259    17133    suceso3_id_seq    SEQUENCE     �   CREATE SEQUENCE public.suceso3_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.suceso3_id_seq;
       public          postgres    false    211            �           0    0    suceso3_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.suceso3_id_seq OWNED BY public.suceso3.id;
          public          postgres    false    210            �            1259    17143    suceso4    TABLE     a   CREATE TABLE public.suceso4 (
    id integer NOT NULL,
    description character varying(100)
);
    DROP TABLE public.suceso4;
       public            postgres    false            �            1259    17141    suceso4_id_seq    SEQUENCE     �   CREATE SEQUENCE public.suceso4_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.suceso4_id_seq;
       public          postgres    false    213            �           0    0    suceso4_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.suceso4_id_seq OWNED BY public.suceso4.id;
          public          postgres    false    212            �            1259    17209    suceso_cierres    TABLE     h   CREATE TABLE public.suceso_cierres (
    id integer NOT NULL,
    description character varying(100)
);
 "   DROP TABLE public.suceso_cierres;
       public            postgres    false            �            1259    17207    suceso_cierre_id_seq    SEQUENCE     �   CREATE SEQUENCE public.suceso_cierre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.suceso_cierre_id_seq;
       public          postgres    false    217            �           0    0    suceso_cierre_id_seq    SEQUENCE OWNED BY     N   ALTER SEQUENCE public.suceso_cierre_id_seq OWNED BY public.suceso_cierres.id;
          public          postgres    false    216            �            1259    17163    tickets    TABLE     �  CREATE TABLE public.tickets (
    id integer NOT NULL,
    affair character varying(200),
    description character varying(2000),
    create_date timestamp with time zone,
    closing_date timestamp with time zone,
    state_id integer,
    user_id integer,
    priority_id integer,
    event1_id integer,
    event2_id integer,
    event3_id integer,
    event4_id integer,
    update_date timestamp with time zone,
    adjuntos character varying[]
);
    DROP TABLE public.tickets;
       public            postgres    false            �            1259    17161    tickets_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tickets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tickets_id_seq;
       public          postgres    false    215            �           0    0    tickets_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.tickets_id_seq OWNED BY public.tickets.id;
          public          postgres    false    214            �            1259    17098    usuarios    TABLE     x  CREATE TABLE public.usuarios (
    id integer NOT NULL,
    name character varying(200),
    group_id integer,
    entity_id integer,
    email character varying(150),
    phone integer,
    nickname character varying(20) NOT NULL,
    active boolean,
    password character varying(200),
    created_date timestamp with time zone,
    update_date timestamp with time zone
);
    DROP TABLE public.usuarios;
       public            postgres    false            �            1259    17096    usuarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.usuarios_id_seq;
       public          postgres    false    205            �           0    0    usuarios_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;
          public          postgres    false    204            �
           2604    17074    entidades id    DEFAULT     j   ALTER TABLE ONLY public.entidades ALTER COLUMN id SET DEFAULT nextval('public.entidad_id_seq'::regclass);
 ;   ALTER TABLE public.entidades ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            �
           2604    17066 
   estados id    DEFAULT     g   ALTER TABLE ONLY public.estados ALTER COLUMN id SET DEFAULT nextval('public.estado_id_seq'::regclass);
 9   ALTER TABLE public.estados ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    198    199    199            �
           2604    17058 	   grupos id    DEFAULT     e   ALTER TABLE ONLY public.grupos ALTER COLUMN id SET DEFAULT nextval('public.grupo_id_seq'::regclass);
 8   ALTER TABLE public.grupos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    197    196    197            �
           2604    17093    prioridades id    DEFAULT     n   ALTER TABLE ONLY public.prioridades ALTER COLUMN id SET DEFAULT nextval('public.prioridad_id_seq'::regclass);
 =   ALTER TABLE public.prioridades ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            �
           2604    17231    seguimientos id    DEFAULT     r   ALTER TABLE ONLY public.seguimientos ALTER COLUMN id SET DEFAULT nextval('public.seguimientos_id_seq'::regclass);
 >   ALTER TABLE public.seguimientos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �
           2604    17122 
   suceso1 id    DEFAULT     h   ALTER TABLE ONLY public.suceso1 ALTER COLUMN id SET DEFAULT nextval('public.suceso1_id_seq'::regclass);
 9   ALTER TABLE public.suceso1 ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            �
           2604    17130 
   suceso2 id    DEFAULT     h   ALTER TABLE ONLY public.suceso2 ALTER COLUMN id SET DEFAULT nextval('public.suceso2_id_seq'::regclass);
 9   ALTER TABLE public.suceso2 ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            �
           2604    17138 
   suceso3 id    DEFAULT     h   ALTER TABLE ONLY public.suceso3 ALTER COLUMN id SET DEFAULT nextval('public.suceso3_id_seq'::regclass);
 9   ALTER TABLE public.suceso3 ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            �
           2604    17146 
   suceso4 id    DEFAULT     h   ALTER TABLE ONLY public.suceso4 ALTER COLUMN id SET DEFAULT nextval('public.suceso4_id_seq'::regclass);
 9   ALTER TABLE public.suceso4 ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            �
           2604    17212    suceso_cierres id    DEFAULT     u   ALTER TABLE ONLY public.suceso_cierres ALTER COLUMN id SET DEFAULT nextval('public.suceso_cierre_id_seq'::regclass);
 @   ALTER TABLE public.suceso_cierres ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �
           2604    17166 
   tickets id    DEFAULT     h   ALTER TABLE ONLY public.tickets ALTER COLUMN id SET DEFAULT nextval('public.tickets_id_seq'::regclass);
 9   ALTER TABLE public.tickets ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �
           2604    17101    usuarios id    DEFAULT     j   ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);
 :   ALTER TABLE public.usuarios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            h          0    17071 	   entidades 
   TABLE DATA           G   COPY public.entidades (id, name, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    201   �x       f          0    17063    estados 
   TABLE DATA           +   COPY public.estados (id, name) FROM stdin;
    public          postgres    false    199   �x       d          0    17055    grupos 
   TABLE DATA           D   COPY public.grupos (id, name, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    197   �x       j          0    17090    prioridades 
   TABLE DATA           /   COPY public.prioridades (id, name) FROM stdin;
    public          postgres    false    203   0y       z          0    17228    seguimientos 
   TABLE DATA           �   COPY public.seguimientos (id, created_date, description, user_id, ticket_id, eventclosing_id, event1_id, event2_id, event3_id, event4_id, public_sg, on_hold, update_date, usr_resp_id) FROM stdin;
    public          postgres    false    219   cy       n          0    17119    suceso1 
   TABLE DATA           2   COPY public.suceso1 (id, description) FROM stdin;
    public          postgres    false    207   0z       p          0    17127    suceso2 
   TABLE DATA           2   COPY public.suceso2 (id, description) FROM stdin;
    public          postgres    false    209   \z       r          0    17135    suceso3 
   TABLE DATA           2   COPY public.suceso3 (id, description) FROM stdin;
    public          postgres    false    211   �z       t          0    17143    suceso4 
   TABLE DATA           2   COPY public.suceso4 (id, description) FROM stdin;
    public          postgres    false    213   �z       x          0    17209    suceso_cierres 
   TABLE DATA           9   COPY public.suceso_cierres (id, description) FROM stdin;
    public          postgres    false    217   �z       v          0    17163    tickets 
   TABLE DATA           �   COPY public.tickets (id, affair, description, create_date, closing_date, state_id, user_id, priority_id, event1_id, event2_id, event3_id, event4_id, update_date, adjuntos) FROM stdin;
    public          postgres    false    215   {       l          0    17098    usuarios 
   TABLE DATA           �   COPY public.usuarios (id, name, group_id, entity_id, email, phone, nickname, active, password, created_date, update_date) FROM stdin;
    public          postgres    false    205   �{       �           0    0    entidad_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.entidad_id_seq', 1, true);
          public          postgres    false    200            �           0    0    estado_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.estado_id_seq', 3, true);
          public          postgres    false    198            �           0    0    grupo_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.grupo_id_seq', 1, true);
          public          postgres    false    196            �           0    0    prioridad_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.prioridad_id_seq', 3, true);
          public          postgres    false    202            �           0    0    seguimientos_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.seguimientos_id_seq', 6, true);
          public          postgres    false    218            �           0    0    suceso1_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.suceso1_id_seq', 2, true);
          public          postgres    false    206            �           0    0    suceso2_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.suceso2_id_seq', 2, true);
          public          postgres    false    208            �           0    0    suceso3_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.suceso3_id_seq', 2, true);
          public          postgres    false    210            �           0    0    suceso4_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.suceso4_id_seq', 2, true);
          public          postgres    false    212            �           0    0    suceso_cierre_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.suceso_cierre_id_seq', 1, true);
          public          postgres    false    216            �           0    0    tickets_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.tickets_id_seq', 5, true);
          public          postgres    false    214            �           0    0    usuarios_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.usuarios_id_seq', 49, true);
          public          postgres    false    204            �
           2606    17293    usuarios Nickname 
   CONSTRAINT     R   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT "Nickname" UNIQUE (nickname);
 =   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT "Nickname";
       public            postgres    false    205            �
           2606    17076    entidades entidad_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.entidades
    ADD CONSTRAINT entidad_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.entidades DROP CONSTRAINT entidad_pkey;
       public            postgres    false    201            �
           2606    17068    estados estado_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.estados
    ADD CONSTRAINT estado_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY public.estados DROP CONSTRAINT estado_pkey;
       public            postgres    false    199            �
           2606    17060    grupos grupo_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.grupos
    ADD CONSTRAINT grupo_pkey PRIMARY KEY (id);
 ;   ALTER TABLE ONLY public.grupos DROP CONSTRAINT grupo_pkey;
       public            postgres    false    197            �
           2606    17106    usuarios id 
   CONSTRAINT     I   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT id PRIMARY KEY (id);
 5   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT id;
       public            postgres    false    205            �
           2606    17095    prioridades prioridad_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.prioridades
    ADD CONSTRAINT prioridad_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.prioridades DROP CONSTRAINT prioridad_pkey;
       public            postgres    false    203            �
           2606    17236    seguimientos seguimientos_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.seguimientos
    ADD CONSTRAINT seguimientos_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.seguimientos DROP CONSTRAINT seguimientos_pkey;
       public            postgres    false    219            �
           2606    17124    suceso1 suceso1_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.suceso1
    ADD CONSTRAINT suceso1_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.suceso1 DROP CONSTRAINT suceso1_pkey;
       public            postgres    false    207            �
           2606    17132    suceso2 suceso2_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.suceso2
    ADD CONSTRAINT suceso2_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.suceso2 DROP CONSTRAINT suceso2_pkey;
       public            postgres    false    209            �
           2606    17140    suceso3 suceso3_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.suceso3
    ADD CONSTRAINT suceso3_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.suceso3 DROP CONSTRAINT suceso3_pkey;
       public            postgres    false    211            �
           2606    17148    suceso4 suceso4_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.suceso4
    ADD CONSTRAINT suceso4_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.suceso4 DROP CONSTRAINT suceso4_pkey;
       public            postgres    false    213            �
           2606    17214 !   suceso_cierres suceso_cierre_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.suceso_cierres
    ADD CONSTRAINT suceso_cierre_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY public.suceso_cierres DROP CONSTRAINT suceso_cierre_pkey;
       public            postgres    false    217            �
           2606    17171    tickets tickets_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT tickets_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.tickets DROP CONSTRAINT tickets_pkey;
       public            postgres    false    215            �
           1259    17273    email_unique    INDEX     I   CREATE UNIQUE INDEX email_unique ON public.usuarios USING btree (email);
     DROP INDEX public.email_unique;
       public            postgres    false    205            �
           2606    17112    usuarios entity_id    FK CONSTRAINT     w   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT entity_id FOREIGN KEY (entity_id) REFERENCES public.entidades(id);
 <   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT entity_id;
       public          postgres    false    201    205    2756            �
           2606    17187    tickets event1_idForeingKey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT "event1_idForeingKey" FOREIGN KEY (event1_id) REFERENCES public.suceso1(id);
 G   ALTER TABLE ONLY public.tickets DROP CONSTRAINT "event1_idForeingKey";
       public          postgres    false    2765    207    215            �
           2606    17252     seguimientos event1_idForeingKey    FK CONSTRAINT     �   ALTER TABLE ONLY public.seguimientos
    ADD CONSTRAINT "event1_idForeingKey" FOREIGN KEY (event1_id) REFERENCES public.suceso1(id);
 L   ALTER TABLE ONLY public.seguimientos DROP CONSTRAINT "event1_idForeingKey";
       public          postgres    false    2765    219    207            �
           2606    17192    tickets event2_idForeingKey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT "event2_idForeingKey" FOREIGN KEY (event2_id) REFERENCES public.suceso2(id);
 G   ALTER TABLE ONLY public.tickets DROP CONSTRAINT "event2_idForeingKey";
       public          postgres    false    209    2767    215            �
           2606    17257     seguimientos event2_idForeingKey    FK CONSTRAINT     �   ALTER TABLE ONLY public.seguimientos
    ADD CONSTRAINT "event2_idForeingKey" FOREIGN KEY (event2_id) REFERENCES public.suceso2(id);
 L   ALTER TABLE ONLY public.seguimientos DROP CONSTRAINT "event2_idForeingKey";
       public          postgres    false    209    219    2767            �
           2606    17197    tickets event3_idForeingKey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT "event3_idForeingKey" FOREIGN KEY (event3_id) REFERENCES public.suceso3(id);
 G   ALTER TABLE ONLY public.tickets DROP CONSTRAINT "event3_idForeingKey";
       public          postgres    false    211    215    2769            �
           2606    17262     seguimientos event3_idForeingKey    FK CONSTRAINT     �   ALTER TABLE ONLY public.seguimientos
    ADD CONSTRAINT "event3_idForeingKey" FOREIGN KEY (event3_id) REFERENCES public.suceso3(id);
 L   ALTER TABLE ONLY public.seguimientos DROP CONSTRAINT "event3_idForeingKey";
       public          postgres    false    219    2769    211            �
           2606    17202    tickets event4_idForeingKey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT "event4_idForeingKey" FOREIGN KEY (event4_id) REFERENCES public.suceso4(id);
 G   ALTER TABLE ONLY public.tickets DROP CONSTRAINT "event4_idForeingKey";
       public          postgres    false    2771    215    213            �
           2606    17267     seguimientos event4_idForeingKey    FK CONSTRAINT     �   ALTER TABLE ONLY public.seguimientos
    ADD CONSTRAINT "event4_idForeingKey" FOREIGN KEY (event4_id) REFERENCES public.suceso4(id);
 L   ALTER TABLE ONLY public.seguimientos DROP CONSTRAINT "event4_idForeingKey";
       public          postgres    false    213    2771    219            �
           2606    17247 &   seguimientos eventClosing_idForeingKey    FK CONSTRAINT     �   ALTER TABLE ONLY public.seguimientos
    ADD CONSTRAINT "eventClosing_idForeingKey" FOREIGN KEY (eventclosing_id) REFERENCES public.suceso_cierres(id);
 R   ALTER TABLE ONLY public.seguimientos DROP CONSTRAINT "eventClosing_idForeingKey";
       public          postgres    false    2775    217    219            �
           2606    17107    usuarios group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT group_id FOREIGN KEY (group_id) REFERENCES public.grupos(id) ON UPDATE CASCADE;
 ;   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT group_id;
       public          postgres    false    205    2752    197            �
           2606    17182    tickets priority_idForeingKey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT "priority_idForeingKey" FOREIGN KEY (priority_id) REFERENCES public.prioridades(id);
 I   ALTER TABLE ONLY public.tickets DROP CONSTRAINT "priority_idForeingKey";
       public          postgres    false    215    2758    203            �
           2606    17172    tickets status_idForeingKey    FK CONSTRAINT        ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT "status_idForeingKey" FOREIGN KEY (state_id) REFERENCES public.estados(id);
 G   ALTER TABLE ONLY public.tickets DROP CONSTRAINT "status_idForeingKey";
       public          postgres    false    2754    215    199            �
           2606    17242     seguimientos ticket_idForeingKey    FK CONSTRAINT     �   ALTER TABLE ONLY public.seguimientos
    ADD CONSTRAINT "ticket_idForeingKey" FOREIGN KEY (ticket_id) REFERENCES public.tickets(id);
 L   ALTER TABLE ONLY public.seguimientos DROP CONSTRAINT "ticket_idForeingKey";
       public          postgres    false    2773    219    215            �
           2606    17177    tickets user_idForeingKey    FK CONSTRAINT     }   ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT "user_idForeingKey" FOREIGN KEY (user_id) REFERENCES public.usuarios(id);
 E   ALTER TABLE ONLY public.tickets DROP CONSTRAINT "user_idForeingKey";
       public          postgres    false    205    215    2763            �
           2606    17237    seguimientos user_idForeingKey    FK CONSTRAINT     �   ALTER TABLE ONLY public.seguimientos
    ADD CONSTRAINT "user_idForeingKey" FOREIGN KEY (user_id) REFERENCES public.usuarios(id);
 J   ALTER TABLE ONLY public.seguimientos DROP CONSTRAINT "user_idForeingKey";
       public          postgres    false    2763    205    219            h      x�3�p�s��"�=... $8s      f   -   x�3�tL�L-*��2�tN-*JL��2�t�SH-.H-J����� �
Q      d   7   x�3�tL����,.)J,�,���".#����ĢLߘ�9'35�$ʏ���� ;�$      j   #   x�3�t�)I�2��MM�L�2�tJ�J����� ^�H      z   �   x����� Dk�
:+2p������	dd&����`FM
�mw�.w�� �JbB�,.�X7u��;FdA��IO�&���R\�z�Km�%�#Tz�2r�^?"�7�ڀ0��ZW������e���
�XrQs���bѰ�h]�Gg����`����Cd�L��p���6�2'�Z!Ǣ.*�J'oJ�'[_�      n      x�3�,.-N-�W0�2�1��b���� oY      p      x�3�,.-N-�W0�2�1��b���� oY      r      x�3�,.-N-�W0�2�1��b���� oY      t      x�3�,.-N-�W0�2�1��b���� oY      x   "   x�3�t-K�+�WHIUH�L-*JU0����� l�2      v   �   x���1�0Egr
.�ȱ2w�,X �?!%��U��^�m�/}ʚe�)Ǭ��9��0�~B@�`�,rY: ��%�CF�Q�H+_�]?늩���Ֆ ������d�G��2�u�S����)%�ԉǈ��Y�$�S��\��<�n����w��׻����cl�!_�      l     x���Kw�� �q�����'l]�'J��Yw��[E|��֜�@��҉����jC�'{�F�n}H���}��A�o�p�d��0���e���)���_������쵧�6�-�w5�8K-o63����u�Zu�����t�}���P���gě�4)��!�&$�|������Vv��I�UB���l[A�Eϟ���K@�L�s��!� �KC���X��g$7nB B��~
	D��u(ܕ�^ܻ�o�
�J�®�d�'b���c������#'��JM;�G>����t����B��ٽ�5	"��e�Ĳ��-w[�~Vʞ�R��	�~��1�G�%K���T��������2��P�>�SM5���~�����n;�� f5Mq+7�5�5�u�%��P����]�����5/��ڙ���$�&���5� ��-�
��H�9���P*k��3������CM$$�U�{;�N�a]��m��R식�װ%��K�Fm����g�0lYCny��*V�i�q)����M&(���ۗ!@8�����a��Q߯��7j���J�2{����%S�#g򁋎��>�����I%i�;j��co�&f QRS�[o`��{O\30�h�KJ��������� *��� aq�%�[�Ɯc����i��H��R�۲�1�O*7	����{C���ci��ҖXZ>u���P���xiA>9J��Y���uw�F�C
bzX�zW���CP|c7�q��	��`��%�UF�ƃ��5�K3��}���X]�a7�@�y[L��Z�v�}���^�����+��CH �~�Ռ�='��e$��Ew���2��~��f�bַ���u&J����w��y��_�?o3�"�v�}�"F?�+�c����Y�	-L����*�d`�Kιc8�h�h/�B�z�S��	Ou`H�c�>�
� ������Q�̬��o���M�"5ZfjJ/k�{���4Ic�nm÷��_U�	9��{	}�?��,O�8�h�ǫ<p[��}��4����z-�V�j���WQ��qa �!��/��'0��x֢�ԍٺȓ��<j��p�vWsG{/��t�j�-��9��:1\�B�OH��f3W������='�JGKh2Ȯ��\�L��Sja�� 8�e1Vۍ�8��l��.uu��Ŀ��7&w"!M,����7!�����~M���g�R�6�d�y3��xO��-�t#э3�6��ƸD��l��}�q��g庐@��su��#�1���nCQ�=�V�l��'���r��b�^�(�Θ��E%9/�1w����v�C�&�JH������{
�5�1��Kh_�����hf����'K���+�G#`�3�$�wU���"�uw�(�?����V޷މ����Y�o��Q���(��V�"�.�q+��ߍ�l|��;=Z>FéV�Φ���CF!�V�?'����@2ᰱa(�8�Y���t~u��2�|�zs=2��Q�m�9�]��G��@8�j蕐� �_���     