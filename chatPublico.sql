PGDMP         %                y            chatpublico    13.1    13.1 n    B           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            C           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            D           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            E           1262    16658    chatpublico    DATABASE     j   CREATE DATABASE chatpublico WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE chatpublico;
                postgres    false            F           0    0    DATABASE chatpublico    ACL     -   GRANT ALL ON DATABASE chatpublico TO prueba;
                   postgres    false    3141            �            1259    16728 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    prueba    false            �            1259    16726    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          prueba    false    211            G           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          prueba    false    210            �            1259    16738    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    prueba    false            �            1259    16736    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          prueba    false    213            H           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          prueba    false    212            �            1259    16720    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    prueba    false            �            1259    16718    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          prueba    false    209            I           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          prueba    false    208            �            1259    16790    chat_publico_mensajechatpublico    TABLE     �   CREATE TABLE public.chat_publico_mensajechatpublico (
    id integer NOT NULL,
    timestap timestamp with time zone NOT NULL,
    content text NOT NULL,
    room_id integer NOT NULL,
    user_id integer NOT NULL
);
 3   DROP TABLE public.chat_publico_mensajechatpublico;
       public         heap    prueba    false            �            1259    16788 &   chat_publico_mensajechatpublico_id_seq    SEQUENCE     �   CREATE SEQUENCE public.chat_publico_mensajechatpublico_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.chat_publico_mensajechatpublico_id_seq;
       public          prueba    false    219            J           0    0 &   chat_publico_mensajechatpublico_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.chat_publico_mensajechatpublico_id_seq OWNED BY public.chat_publico_mensajechatpublico.id;
          public          prueba    false    218            �            1259    16772    chat_publico_salachatpublico    TABLE     z   CREATE TABLE public.chat_publico_salachatpublico (
    id integer NOT NULL,
    titulo character varying(255) NOT NULL
);
 0   DROP TABLE public.chat_publico_salachatpublico;
       public         heap    prueba    false            �            1259    16770 #   chat_publico_salachatpublico_id_seq    SEQUENCE     �   CREATE SEQUENCE public.chat_publico_salachatpublico_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.chat_publico_salachatpublico_id_seq;
       public          prueba    false    215            K           0    0 #   chat_publico_salachatpublico_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.chat_publico_salachatpublico_id_seq OWNED BY public.chat_publico_salachatpublico.id;
          public          prueba    false    214            �            1259    16782 %   chat_publico_salachatpublico_usuarios    TABLE     �   CREATE TABLE public.chat_publico_salachatpublico_usuarios (
    id integer NOT NULL,
    salachatpublico_id integer NOT NULL,
    cuenta_id integer NOT NULL
);
 9   DROP TABLE public.chat_publico_salachatpublico_usuarios;
       public         heap    prueba    false            �            1259    16780 ,   chat_publico_salachatpublico_usuarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.chat_publico_salachatpublico_usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.chat_publico_salachatpublico_usuarios_id_seq;
       public          prueba    false    217            L           0    0 ,   chat_publico_salachatpublico_usuarios_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.chat_publico_salachatpublico_usuarios_id_seq OWNED BY public.chat_publico_salachatpublico_usuarios.id;
          public          prueba    false    216            �            1259    16672    cuenta_cuenta    TABLE     �  CREATE TABLE public.cuenta_cuenta (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    email character varying(60) NOT NULL,
    usuario character varying(30) NOT NULL,
    fecha_registro timestamp with time zone NOT NULL,
    ultima_conexion timestamp with time zone NOT NULL,
    activo boolean NOT NULL,
    imagen character varying(255),
    is_admin boolean NOT NULL,
    is_staff boolean NOT NULL,
    is_superuser boolean NOT NULL
);
 !   DROP TABLE public.cuenta_cuenta;
       public         heap    prueba    false            �            1259    16670    cuenta_cuenta_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cuenta_cuenta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.cuenta_cuenta_id_seq;
       public          prueba    false    203            M           0    0    cuenta_cuenta_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.cuenta_cuenta_id_seq OWNED BY public.cuenta_cuenta.id;
          public          prueba    false    202            �            1259    16696    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    prueba    false            �            1259    16694    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          prueba    false    207            N           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          prueba    false    206            �            1259    16686    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    prueba    false            �            1259    16684    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          prueba    false    205            O           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          prueba    false    204            �            1259    16661    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    prueba    false            �            1259    16659    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          prueba    false    201            P           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          prueba    false    200            �            1259    16859    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    prueba    false            f           2604    16869    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          prueba    false    210    211    211            g           2604    16870    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          prueba    false    213    212    213            e           2604    16871    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          prueba    false    209    208    209            j           2604    16872 "   chat_publico_mensajechatpublico id    DEFAULT     �   ALTER TABLE ONLY public.chat_publico_mensajechatpublico ALTER COLUMN id SET DEFAULT nextval('public.chat_publico_mensajechatpublico_id_seq'::regclass);
 Q   ALTER TABLE public.chat_publico_mensajechatpublico ALTER COLUMN id DROP DEFAULT;
       public          prueba    false    218    219    219            h           2604    16873    chat_publico_salachatpublico id    DEFAULT     �   ALTER TABLE ONLY public.chat_publico_salachatpublico ALTER COLUMN id SET DEFAULT nextval('public.chat_publico_salachatpublico_id_seq'::regclass);
 N   ALTER TABLE public.chat_publico_salachatpublico ALTER COLUMN id DROP DEFAULT;
       public          prueba    false    214    215    215            i           2604    16874 (   chat_publico_salachatpublico_usuarios id    DEFAULT     �   ALTER TABLE ONLY public.chat_publico_salachatpublico_usuarios ALTER COLUMN id SET DEFAULT nextval('public.chat_publico_salachatpublico_usuarios_id_seq'::regclass);
 W   ALTER TABLE public.chat_publico_salachatpublico_usuarios ALTER COLUMN id DROP DEFAULT;
       public          prueba    false    217    216    217            a           2604    16875    cuenta_cuenta id    DEFAULT     t   ALTER TABLE ONLY public.cuenta_cuenta ALTER COLUMN id SET DEFAULT nextval('public.cuenta_cuenta_id_seq'::regclass);
 ?   ALTER TABLE public.cuenta_cuenta ALTER COLUMN id DROP DEFAULT;
       public          prueba    false    202    203    203            c           2604    16876    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          prueba    false    206    207    207            b           2604    16877    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          prueba    false    205    204    205            `           2604    16878    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          prueba    false    200    201    201            6          0    16728 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          prueba    false    211   b�       8          0    16738    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          prueba    false    213   �       4          0    16720    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          prueba    false    209   ��       >          0    16790    chat_publico_mensajechatpublico 
   TABLE DATA           b   COPY public.chat_publico_mensajechatpublico (id, timestap, content, room_id, user_id) FROM stdin;
    public          prueba    false    219   �       :          0    16772    chat_publico_salachatpublico 
   TABLE DATA           B   COPY public.chat_publico_salachatpublico (id, titulo) FROM stdin;
    public          prueba    false    215   8�       <          0    16782 %   chat_publico_salachatpublico_usuarios 
   TABLE DATA           b   COPY public.chat_publico_salachatpublico_usuarios (id, salachatpublico_id, cuenta_id) FROM stdin;
    public          prueba    false    217   U�       .          0    16672    cuenta_cuenta 
   TABLE DATA           �   COPY public.cuenta_cuenta (id, password, last_login, email, usuario, fecha_registro, ultima_conexion, activo, imagen, is_admin, is_staff, is_superuser) FROM stdin;
    public          prueba    false    203   r�       2          0    16696    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          prueba    false    207   ��       0          0    16686    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          prueba    false    205   ��       ,          0    16661    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          prueba    false    201   8�       ?          0    16859    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          prueba    false    220   8�       Q           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          prueba    false    210            R           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          prueba    false    212            S           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 32, true);
          public          prueba    false    208            T           0    0 &   chat_publico_mensajechatpublico_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.chat_publico_mensajechatpublico_id_seq', 1, false);
          public          prueba    false    218            U           0    0 #   chat_publico_salachatpublico_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.chat_publico_salachatpublico_id_seq', 1, false);
          public          prueba    false    214            V           0    0 ,   chat_publico_salachatpublico_usuarios_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.chat_publico_salachatpublico_usuarios_id_seq', 1, false);
          public          prueba    false    216            W           0    0    cuenta_cuenta_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.cuenta_cuenta_id_seq', 2, true);
          public          prueba    false    202            X           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          prueba    false    206            Y           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);
          public          prueba    false    204            Z           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 23, true);
          public          prueba    false    200            �           2606    16768    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            prueba    false    211            �           2606    16764 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            prueba    false    213    213            �           2606    16743 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            prueba    false    213            �           2606    16733    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            prueba    false    211                       2606    16750 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            prueba    false    209    209            �           2606    16725 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            prueba    false    209            �           2606    16798 D   chat_publico_mensajechatpublico chat_publico_mensajechatpublico_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.chat_publico_mensajechatpublico
    ADD CONSTRAINT chat_publico_mensajechatpublico_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.chat_publico_mensajechatpublico DROP CONSTRAINT chat_publico_mensajechatpublico_pkey;
       public            prueba    false    219            �           2606    16811 e   chat_publico_salachatpublico_usuarios chat_publico_salachatpub_salachatpublico_id_cuent_59cdfc0e_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.chat_publico_salachatpublico_usuarios
    ADD CONSTRAINT chat_publico_salachatpub_salachatpublico_id_cuent_59cdfc0e_uniq UNIQUE (salachatpublico_id, cuenta_id);
 �   ALTER TABLE ONLY public.chat_publico_salachatpublico_usuarios DROP CONSTRAINT chat_publico_salachatpub_salachatpublico_id_cuent_59cdfc0e_uniq;
       public            prueba    false    217    217            �           2606    16777 >   chat_publico_salachatpublico chat_publico_salachatpublico_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.chat_publico_salachatpublico
    ADD CONSTRAINT chat_publico_salachatpublico_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.chat_publico_salachatpublico DROP CONSTRAINT chat_publico_salachatpublico_pkey;
       public            prueba    false    215            �           2606    16779 D   chat_publico_salachatpublico chat_publico_salachatpublico_titulo_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.chat_publico_salachatpublico
    ADD CONSTRAINT chat_publico_salachatpublico_titulo_key UNIQUE (titulo);
 n   ALTER TABLE ONLY public.chat_publico_salachatpublico DROP CONSTRAINT chat_publico_salachatpublico_titulo_key;
       public            prueba    false    215            �           2606    16787 P   chat_publico_salachatpublico_usuarios chat_publico_salachatpublico_usuarios_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.chat_publico_salachatpublico_usuarios
    ADD CONSTRAINT chat_publico_salachatpublico_usuarios_pkey PRIMARY KEY (id);
 z   ALTER TABLE ONLY public.chat_publico_salachatpublico_usuarios DROP CONSTRAINT chat_publico_salachatpublico_usuarios_pkey;
       public            prueba    false    217            o           2606    16679 %   cuenta_cuenta cuenta_cuenta_email_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.cuenta_cuenta
    ADD CONSTRAINT cuenta_cuenta_email_key UNIQUE (email);
 O   ALTER TABLE ONLY public.cuenta_cuenta DROP CONSTRAINT cuenta_cuenta_email_key;
       public            prueba    false    203            q           2606    16677     cuenta_cuenta cuenta_cuenta_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.cuenta_cuenta
    ADD CONSTRAINT cuenta_cuenta_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.cuenta_cuenta DROP CONSTRAINT cuenta_cuenta_pkey;
       public            prueba    false    203            t           2606    16681 '   cuenta_cuenta cuenta_cuenta_usuario_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.cuenta_cuenta
    ADD CONSTRAINT cuenta_cuenta_usuario_key UNIQUE (usuario);
 Q   ALTER TABLE ONLY public.cuenta_cuenta DROP CONSTRAINT cuenta_cuenta_usuario_key;
       public            prueba    false    203            {           2606    16705 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            prueba    false    207            v           2606    16693 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            prueba    false    205    205            x           2606    16691 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            prueba    false    205            l           2606    16669 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            prueba    false    201            �           2606    16866 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            prueba    false    220            �           1259    16769    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            prueba    false    211            �           1259    16765 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            prueba    false    213            �           1259    16766 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            prueba    false    213            }           1259    16751 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            prueba    false    209            �           1259    16824 0   chat_publico_mensajechatpublico_room_id_258a9225    INDEX        CREATE INDEX chat_publico_mensajechatpublico_room_id_258a9225 ON public.chat_publico_mensajechatpublico USING btree (room_id);
 D   DROP INDEX public.chat_publico_mensajechatpublico_room_id_258a9225;
       public            prueba    false    219            �           1259    16825 0   chat_publico_mensajechatpublico_user_id_513ba054    INDEX        CREATE INDEX chat_publico_mensajechatpublico_user_id_513ba054 ON public.chat_publico_mensajechatpublico USING btree (user_id);
 D   DROP INDEX public.chat_publico_mensajechatpublico_user_id_513ba054;
       public            prueba    false    219            �           1259    16812 6   chat_publico_salachatpubli_salachatpublico_id_9e6037f8    INDEX     �   CREATE INDEX chat_publico_salachatpubli_salachatpublico_id_9e6037f8 ON public.chat_publico_salachatpublico_usuarios USING btree (salachatpublico_id);
 J   DROP INDEX public.chat_publico_salachatpubli_salachatpublico_id_9e6037f8;
       public            prueba    false    217            �           1259    16799 1   chat_publico_salachatpublico_titulo_40626039_like    INDEX     �   CREATE INDEX chat_publico_salachatpublico_titulo_40626039_like ON public.chat_publico_salachatpublico USING btree (titulo varchar_pattern_ops);
 E   DROP INDEX public.chat_publico_salachatpublico_titulo_40626039_like;
       public            prueba    false    215            �           1259    16813 8   chat_publico_salachatpublico_usuarios_cuenta_id_5d731c02    INDEX     �   CREATE INDEX chat_publico_salachatpublico_usuarios_cuenta_id_5d731c02 ON public.chat_publico_salachatpublico_usuarios USING btree (cuenta_id);
 L   DROP INDEX public.chat_publico_salachatpublico_usuarios_cuenta_id_5d731c02;
       public            prueba    false    217            m           1259    16682 !   cuenta_cuenta_email_c13d859c_like    INDEX     p   CREATE INDEX cuenta_cuenta_email_c13d859c_like ON public.cuenta_cuenta USING btree (email varchar_pattern_ops);
 5   DROP INDEX public.cuenta_cuenta_email_c13d859c_like;
       public            prueba    false    203            r           1259    16683 #   cuenta_cuenta_usuario_b5556a3a_like    INDEX     t   CREATE INDEX cuenta_cuenta_usuario_b5556a3a_like ON public.cuenta_cuenta USING btree (usuario varchar_pattern_ops);
 7   DROP INDEX public.cuenta_cuenta_usuario_b5556a3a_like;
       public            prueba    false    203            y           1259    16716 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            prueba    false    207            |           1259    16717 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            prueba    false    207            �           1259    16868 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            prueba    false    220            �           1259    16867 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            prueba    false    220            �           2606    16758 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          prueba    false    2945    213    209            �           2606    16753 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          prueba    false    2950    213    211            �           2606    16744 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          prueba    false    205    209    2936            �           2606    16814 R   chat_publico_mensajechatpublico chat_publico_mensaje_room_id_258a9225_fk_chat_publ    FK CONSTRAINT     �   ALTER TABLE ONLY public.chat_publico_mensajechatpublico
    ADD CONSTRAINT chat_publico_mensaje_room_id_258a9225_fk_chat_publ FOREIGN KEY (room_id) REFERENCES public.chat_publico_salachatpublico(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.chat_publico_mensajechatpublico DROP CONSTRAINT chat_publico_mensaje_room_id_258a9225_fk_chat_publ;
       public          prueba    false    2958    219    215            �           2606    16819 R   chat_publico_mensajechatpublico chat_publico_mensaje_user_id_513ba054_fk_cuenta_cu    FK CONSTRAINT     �   ALTER TABLE ONLY public.chat_publico_mensajechatpublico
    ADD CONSTRAINT chat_publico_mensaje_user_id_513ba054_fk_cuenta_cu FOREIGN KEY (user_id) REFERENCES public.cuenta_cuenta(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.chat_publico_mensajechatpublico DROP CONSTRAINT chat_publico_mensaje_user_id_513ba054_fk_cuenta_cu;
       public          prueba    false    219    2929    203            �           2606    16846 Z   chat_publico_salachatpublico_usuarios chat_publico_salacha_cuenta_id_5d731c02_fk_cuenta_cu    FK CONSTRAINT     �   ALTER TABLE ONLY public.chat_publico_salachatpublico_usuarios
    ADD CONSTRAINT chat_publico_salacha_cuenta_id_5d731c02_fk_cuenta_cu FOREIGN KEY (cuenta_id) REFERENCES public.cuenta_cuenta(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.chat_publico_salachatpublico_usuarios DROP CONSTRAINT chat_publico_salacha_cuenta_id_5d731c02_fk_cuenta_cu;
       public          prueba    false    2929    203    217            �           2606    16851 c   chat_publico_salachatpublico_usuarios chat_publico_salacha_salachatpublico_id_9e6037f8_fk_chat_publ    FK CONSTRAINT       ALTER TABLE ONLY public.chat_publico_salachatpublico_usuarios
    ADD CONSTRAINT chat_publico_salacha_salachatpublico_id_9e6037f8_fk_chat_publ FOREIGN KEY (salachatpublico_id) REFERENCES public.chat_publico_salachatpublico(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.chat_publico_salachatpublico_usuarios DROP CONSTRAINT chat_publico_salacha_salachatpublico_id_9e6037f8_fk_chat_publ;
       public          prueba    false    217    2958    215            �           2606    16706 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          prueba    false    205    2936    207            �           2606    16711 F   django_admin_log django_admin_log_user_id_c564eba6_fk_cuenta_cuenta_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_cuenta_cuenta_id FOREIGN KEY (user_id) REFERENCES public.cuenta_cuenta(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_cuenta_cuenta_id;
       public          prueba    false    2929    203    207            6      x������ � �      8      x������ � �      4   o  x�u�]n�0���Sp�*6�s�Q�r��T� ~Z�����]#xˮ�Qf�*�n\b�:��f#�X�O?H�շq�%�ρI��mgg��900���#b��{���Lg�/��a��ڪm�m�[Ypgg"4yԕ���uwJp��0G�cO��n2?6V���N�x�-�;�+��B�1�䚢^�!�4�w}�����\g��x8�a""s���h�Ȃ,s|U��;>�ij{'r�G���`D�C?��F��7�����jwڌ�2�L�g��R�w��H�ɀ�!DX% 6�Y�n^�d~V��:�ն�:j����Q|��g�;���p�7Y������L�f�E��nC�XS� ��7)�?��1      >      x������ � �      :      x������ � �      <      x������ � �      .     x���KO�@����p�-�<�Nۄ�PhE�J����Q�-3T���Q���=��|Pk�KV��zJ�H�����a��v��t�,
]���J�Y9z�I6����ڊgV�󖫞���Dr��~#ۜ%fZ��BC �@@o���!jblS�Ԓ?(��=Ӄ�ER�U����cwyͦ*��]���G�����Py�x�b6"5�OV,q5�{gTn����2߆i��< �.6	�A�<�Um"y���H��űU�D�-�&qlH�(���nM]�?;v�      2      x������ � �      0   s   x�ULI�0<{���c��	V�8Q��{
��f�-�.� vF�[��C!��oc����Y��)�Ɓ���R*�|�&���T��h���u�VzřBQ��>U����L>�\7 ^��?f      ,   �  x���M�� ���)�Q��볌��I�l�Ƹչ� N;��Ƚa��>�*��[�MC�F��$o߈�E�;#��Rͻ�M�ǘT�>��X��`�b'ژ���H���Y�>%�{Mǆ�v�V�%zm.�:��"3ؓA���Ӧ�Ώ�oo���y�%?u#���;��]���_�h[G	 Te�hR���0��	�
K~rS�6}�AO6n���|�̗��xMUQ���R�>P˜;�S�$<S�l����R��b%��୐�; ��2z3��-��-���J���(<5�cqa�Hi�Ω�!���B7�x��izw1ч���=�y6�ڬd��J���p���A�@��2*�6��e�3��|E�o���2�����6� z�RDVO��_F��O��L��t7����]�oHڮ�R;%��A���Fh")�B�KHv���m�"Bq����{��RhJo=ė�x�E���z�Dɢ��l��H)#���|:�� ���      ?     x�=�Oo�0@��)�4�j���Ĕ�.�����-T�t��s;���./y�.��2�zz��{�+�Kw�$��$z�x������.����̒^�]O���KD-�S�6tE{�i��%!�LW"?�h���ߘwCb�F@V+]W��e;3��/�qC�٨�E��֎u�)�|K�G������XfZ­-�ƬY�ץ���� @���OO�KĊ��Z�(�j7�@9喈y�<xkb�%H�ԑz�p�`�S����h��E�c���I? �h�     