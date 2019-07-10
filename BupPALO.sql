PGDMP                  
        w            OLAP Service    11.2    11.2 �               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            !           1262    21692    OLAP Service    DATABASE     �   CREATE DATABASE "OLAP Service" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE "OLAP Service";
             postgres    false            �            1259    21943 
   beaconmesa    TABLE     ^   CREATE TABLE public.beaconmesa (
    id integer NOT NULL,
    modelo character varying(10)
);
    DROP TABLE public.beaconmesa;
       public         postgres    false            �            1259    21941    beaconmesa_id_seq    SEQUENCE     �   CREATE SEQUENCE public.beaconmesa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.beaconmesa_id_seq;
       public       postgres    false    221            "           0    0    beaconmesa_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.beaconmesa_id_seq OWNED BY public.beaconmesa.id;
            public       postgres    false    220            �            1259    21935    beacontienda    TABLE     `   CREATE TABLE public.beacontienda (
    id integer NOT NULL,
    modelo character varying(10)
);
     DROP TABLE public.beacontienda;
       public         postgres    false            �            1259    21933    beacontienda_id_seq    SEQUENCE     �   CREATE SEQUENCE public.beacontienda_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.beacontienda_id_seq;
       public       postgres    false    219            #           0    0    beacontienda_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.beacontienda_id_seq OWNED BY public.beacontienda.id;
            public       postgres    false    218            �            1259    21765    camara    TABLE     q   CREATE TABLE public.camara (
    id integer NOT NULL,
    fkentrada integer,
    modelo character varying(20)
);
    DROP TABLE public.camara;
       public         postgres    false            �            1259    21763    camara_id_seq    SEQUENCE     �   CREATE SEQUENCE public.camara_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.camara_id_seq;
       public       postgres    false    207            $           0    0    camara_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.camara_id_seq OWNED BY public.camara.id;
            public       postgres    false    206            �            1259    21822    carro    TABLE     w   CREATE TABLE public.carro (
    id integer NOT NULL,
    placa character varying(20),
    mac character varying(30)
);
    DROP TABLE public.carro;
       public         postgres    false            �            1259    21820    carro_id_seq    SEQUENCE     �   CREATE SEQUENCE public.carro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.carro_id_seq;
       public       postgres    false    209            %           0    0    carro_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.carro_id_seq OWNED BY public.carro.id;
            public       postgres    false    208            �            1259    21716    cliente    TABLE     �   CREATE TABLE public.cliente (
    id integer NOT NULL,
    nombre character varying(30),
    apellido character varying(30),
    cedula bigint
);
    DROP TABLE public.cliente;
       public         postgres    false            �            1259    21714    cliente_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cliente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.cliente_id_seq;
       public       postgres    false    199            &           0    0    cliente_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.cliente_id_seq OWNED BY public.cliente.id;
            public       postgres    false    198            �            1259    21726    compra    TABLE     �   CREATE TABLE public.compra (
    id integer NOT NULL,
    monto double precision,
    fecha timestamp without time zone,
    fkcliente integer,
    fktienda integer
);
    DROP TABLE public.compra;
       public         postgres    false            �            1259    21724    compra_id_seq    SEQUENCE     �   CREATE SEQUENCE public.compra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.compra_id_seq;
       public       postgres    false    201            '           0    0    compra_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.compra_id_seq OWNED BY public.compra.id;
            public       postgres    false    200            �            1259    22273    cventas    TABLE     �   CREATE TABLE public.cventas (
    id integer NOT NULL,
    fktiempo integer,
    fkcliente integer,
    fktienda integer,
    total real
);
    DROP TABLE public.cventas;
       public         postgres    false            �            1259    22271    cventas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cventas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.cventas_id_seq;
       public       postgres    false    233            (           0    0    cventas_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.cventas_id_seq OWNED BY public.cventas.id;
            public       postgres    false    232            �            1259    22296    dcliente    TABLE     �   CREATE TABLE public.dcliente (
    id integer NOT NULL,
    nombre character varying(30),
    apellido character varying(30),
    cedula bigint
);
    DROP TABLE public.dcliente;
       public         postgres    false            �            1259    22294    dcliente_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dcliente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.dcliente_id_seq;
       public       postgres    false    235            )           0    0    dcliente_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.dcliente_id_seq OWNED BY public.dcliente.id;
            public       postgres    false    234            �            1259    22423 	   dimcamara    TABLE     ]   CREATE TABLE public.dimcamara (
    id integer NOT NULL,
    modelo character varying(20)
);
    DROP TABLE public.dimcamara;
       public         postgres    false            �            1259    22421    dimcamara_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dimcamara_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.dimcamara_id_seq;
       public       postgres    false    243            *           0    0    dimcamara_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.dimcamara_id_seq OWNED BY public.dimcamara.id;
            public       postgres    false    242            �            1259    22403 	   dimfechae    TABLE     n   CREATE TABLE public.dimfechae (
    id integer NOT NULL,
    dia integer,
    mes integer,
    ano integer
);
    DROP TABLE public.dimfechae;
       public         postgres    false            �            1259    22401    dimfechae_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dimfechae_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.dimfechae_id_seq;
       public       postgres    false    239            +           0    0    dimfechae_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.dimfechae_id_seq OWNED BY public.dimfechae.id;
            public       postgres    false    238            �            1259    22395 
   dimpersona    TABLE     [   CREATE TABLE public.dimpersona (
    id integer NOT NULL,
    mac character varying(30)
);
    DROP TABLE public.dimpersona;
       public         postgres    false            �            1259    22393    dimpersona_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dimpersona_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.dimpersona_id_seq;
       public       postgres    false    237            ,           0    0    dimpersona_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.dimpersona_id_seq OWNED BY public.dimpersona.id;
            public       postgres    false    236            �            1259    22411    dimsexo    TABLE     W   CREATE TABLE public.dimsexo (
    id integer NOT NULL,
    nombre character varying
);
    DROP TABLE public.dimsexo;
       public         postgres    false            �            1259    22409    dimsexo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dimsexo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.dimsexo_id_seq;
       public       postgres    false    241            -           0    0    dimsexo_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.dimsexo_id_seq OWNED BY public.dimsexo.id;
            public       postgres    false    240            �            1259    22090    dtiempo    TABLE       CREATE TABLE public.dtiempo (
    id integer NOT NULL,
    version integer,
    date_from timestamp without time zone,
    date_to timestamp without time zone,
    id_1 integer,
    dia double precision,
    mes double precision,
    ano double precision
);
    DROP TABLE public.dtiempo;
       public         postgres    false            �            1259    22088    dtiempo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dtiempo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.dtiempo_id_seq;
       public       postgres    false    229            .           0    0    dtiempo_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.dtiempo_id_seq OWNED BY public.dtiempo.id;
            public       postgres    false    228            �            1259    22098    dtienda    TABLE     W   CREATE TABLE public.dtienda (
    id integer NOT NULL,
    nombre character varying
);
    DROP TABLE public.dtienda;
       public         postgres    false            �            1259    22096    dtienda_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dtienda_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.dtienda_id_seq;
       public       postgres    false    231            /           0    0    dtienda_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.dtienda_id_seq OWNED BY public.dtienda.id;
            public       postgres    false    230            �            1259    21830    ecarro    TABLE     �   CREATE TABLE public.ecarro (
    id integer NOT NULL,
    fecha timestamp without time zone,
    fkcamara integer,
    fkcarro integer
);
    DROP TABLE public.ecarro;
       public         postgres    false            �            1259    21828    ecarro_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ecarro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.ecarro_id_seq;
       public       postgres    false    211            0           0    0    ecarro_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.ecarro_id_seq OWNED BY public.ecarro.id;
            public       postgres    false    210            �            1259    21757    entrada    TABLE     [   CREATE TABLE public.entrada (
    id integer NOT NULL,
    nombre character varying(20)
);
    DROP TABLE public.entrada;
       public         postgres    false            �            1259    21755    entrada_id_seq    SEQUENCE     �   CREATE SEQUENCE public.entrada_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.entrada_id_seq;
       public       postgres    false    205            1           0    0    entrada_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.entrada_id_seq OWNED BY public.entrada.id;
            public       postgres    false    204            �            1259    22015    epersona    TABLE     �   CREATE TABLE public.epersona (
    id integer NOT NULL,
    sexo character varying(10),
    edad integer,
    fecha timestamp without time zone,
    fkpersona integer,
    fkcamara integer
);
    DROP TABLE public.epersona;
       public         postgres    false            �            1259    22013    epersona_id_seq    SEQUENCE     �   CREATE SEQUENCE public.epersona_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.epersona_id_seq;
       public       postgres    false    227            2           0    0    epersona_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.epersona_id_seq OWNED BY public.epersona.id;
            public       postgres    false    226            �            1259    22431 
   hecentrada    TABLE     �   CREATE TABLE public.hecentrada (
    id integer NOT NULL,
    fkcamara integer,
    fkpersona integer,
    fktiempo integer,
    fksexo integer
);
    DROP TABLE public.hecentrada;
       public         postgres    false            �            1259    22429    hecentrada_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hecentrada_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.hecentrada_id_seq;
       public       postgres    false    245            3           0    0    hecentrada_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.hecentrada_id_seq OWNED BY public.hecentrada.id;
            public       postgres    false    244            �            1259    21879    iomesa    TABLE     �   CREATE TABLE public.iomesa (
    id integer NOT NULL,
    fecha timestamp without time zone,
    io boolean,
    fkbeacon integer,
    mac character varying(30)
);
    DROP TABLE public.iomesa;
       public         postgres    false            �            1259    21877    iomesa_id_seq    SEQUENCE     �   CREATE SEQUENCE public.iomesa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.iomesa_id_seq;
       public       postgres    false    217            4           0    0    iomesa_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.iomesa_id_seq OWNED BY public.iomesa.id;
            public       postgres    false    216            �            1259    21744    iotienda    TABLE     �   CREATE TABLE public.iotienda (
    id integer NOT NULL,
    fecha timestamp without time zone,
    io boolean,
    fkbeacon integer,
    mac character varying(30)
);
    DROP TABLE public.iotienda;
       public         postgres    false            �            1259    21742    iotienda_id_seq    SEQUENCE     �   CREATE SEQUENCE public.iotienda_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.iotienda_id_seq;
       public       postgres    false    203            5           0    0    iotienda_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.iotienda_id_seq OWNED BY public.iotienda.id;
            public       postgres    false    202            �            1259    21866    mesa    TABLE     `   CREATE TABLE public.mesa (
    id integer NOT NULL,
    sillas integer,
    fkbeacon integer
);
    DROP TABLE public.mesa;
       public         postgres    false            �            1259    21864    mesa_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mesa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.mesa_id_seq;
       public       postgres    false    215            6           0    0    mesa_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.mesa_id_seq OWNED BY public.mesa.id;
            public       postgres    false    214            �            1259    21969    persona    TABLE     X   CREATE TABLE public.persona (
    id integer NOT NULL,
    mac character varying(30)
);
    DROP TABLE public.persona;
       public         postgres    false            �            1259    21967    persona_id_seq    SEQUENCE     �   CREATE SEQUENCE public.persona_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.persona_id_seq;
       public       postgres    false    223            7           0    0    persona_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.persona_id_seq OWNED BY public.persona.id;
            public       postgres    false    222            �            1259    21848    scarro    TABLE     �   CREATE TABLE public.scarro (
    id integer NOT NULL,
    fecha timestamp without time zone,
    fkcamara integer,
    fkcarro integer
);
    DROP TABLE public.scarro;
       public         postgres    false            �            1259    21846    scarro_id_seq    SEQUENCE     �   CREATE SEQUENCE public.scarro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.scarro_id_seq;
       public       postgres    false    213            8           0    0    scarro_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.scarro_id_seq OWNED BY public.scarro.id;
            public       postgres    false    212            �            1259    21977    spersona    TABLE     �   CREATE TABLE public.spersona (
    id integer NOT NULL,
    fecha timestamp without time zone,
    fkpersona integer,
    fkcamara integer
);
    DROP TABLE public.spersona;
       public         postgres    false            �            1259    21975    spersona_id_seq    SEQUENCE     �   CREATE SEQUENCE public.spersona_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.spersona_id_seq;
       public       postgres    false    225            9           0    0    spersona_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.spersona_id_seq OWNED BY public.spersona.id;
            public       postgres    false    224            �            1259    21703    tienda    TABLE     p   CREATE TABLE public.tienda (
    id integer NOT NULL,
    nombre character varying(20),
    fkbeacon integer
);
    DROP TABLE public.tienda;
       public         postgres    false            �            1259    21701    tienda_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tienda_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.tienda_id_seq;
       public       postgres    false    197            :           0    0    tienda_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.tienda_id_seq OWNED BY public.tienda.id;
            public       postgres    false    196                       2604    21946    beaconmesa id    DEFAULT     n   ALTER TABLE ONLY public.beaconmesa ALTER COLUMN id SET DEFAULT nextval('public.beaconmesa_id_seq'::regclass);
 <   ALTER TABLE public.beaconmesa ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    220    221    221                       2604    21938    beacontienda id    DEFAULT     r   ALTER TABLE ONLY public.beacontienda ALTER COLUMN id SET DEFAULT nextval('public.beacontienda_id_seq'::regclass);
 >   ALTER TABLE public.beacontienda ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    219    218    219                       2604    21768 	   camara id    DEFAULT     f   ALTER TABLE ONLY public.camara ALTER COLUMN id SET DEFAULT nextval('public.camara_id_seq'::regclass);
 8   ALTER TABLE public.camara ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    207    207                       2604    21825    carro id    DEFAULT     d   ALTER TABLE ONLY public.carro ALTER COLUMN id SET DEFAULT nextval('public.carro_id_seq'::regclass);
 7   ALTER TABLE public.carro ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    209    208    209                       2604    21719 
   cliente id    DEFAULT     h   ALTER TABLE ONLY public.cliente ALTER COLUMN id SET DEFAULT nextval('public.cliente_id_seq'::regclass);
 9   ALTER TABLE public.cliente ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    199    199                       2604    21729 	   compra id    DEFAULT     f   ALTER TABLE ONLY public.compra ALTER COLUMN id SET DEFAULT nextval('public.compra_id_seq'::regclass);
 8   ALTER TABLE public.compra ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    201    201            !           2604    22276 
   cventas id    DEFAULT     h   ALTER TABLE ONLY public.cventas ALTER COLUMN id SET DEFAULT nextval('public.cventas_id_seq'::regclass);
 9   ALTER TABLE public.cventas ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    233    232    233            "           2604    22299    dcliente id    DEFAULT     j   ALTER TABLE ONLY public.dcliente ALTER COLUMN id SET DEFAULT nextval('public.dcliente_id_seq'::regclass);
 :   ALTER TABLE public.dcliente ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    234    235    235            &           2604    22426    dimcamara id    DEFAULT     l   ALTER TABLE ONLY public.dimcamara ALTER COLUMN id SET DEFAULT nextval('public.dimcamara_id_seq'::regclass);
 ;   ALTER TABLE public.dimcamara ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    243    242    243            $           2604    22406    dimfechae id    DEFAULT     l   ALTER TABLE ONLY public.dimfechae ALTER COLUMN id SET DEFAULT nextval('public.dimfechae_id_seq'::regclass);
 ;   ALTER TABLE public.dimfechae ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    239    238    239            #           2604    22398    dimpersona id    DEFAULT     n   ALTER TABLE ONLY public.dimpersona ALTER COLUMN id SET DEFAULT nextval('public.dimpersona_id_seq'::regclass);
 <   ALTER TABLE public.dimpersona ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    237    236    237            %           2604    22414 
   dimsexo id    DEFAULT     h   ALTER TABLE ONLY public.dimsexo ALTER COLUMN id SET DEFAULT nextval('public.dimsexo_id_seq'::regclass);
 9   ALTER TABLE public.dimsexo ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    240    241    241                       2604    22093 
   dtiempo id    DEFAULT     h   ALTER TABLE ONLY public.dtiempo ALTER COLUMN id SET DEFAULT nextval('public.dtiempo_id_seq'::regclass);
 9   ALTER TABLE public.dtiempo ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    229    228    229                        2604    22101 
   dtienda id    DEFAULT     h   ALTER TABLE ONLY public.dtienda ALTER COLUMN id SET DEFAULT nextval('public.dtienda_id_seq'::regclass);
 9   ALTER TABLE public.dtienda ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    231    230    231                       2604    21833 	   ecarro id    DEFAULT     f   ALTER TABLE ONLY public.ecarro ALTER COLUMN id SET DEFAULT nextval('public.ecarro_id_seq'::regclass);
 8   ALTER TABLE public.ecarro ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    210    211                       2604    21760 
   entrada id    DEFAULT     h   ALTER TABLE ONLY public.entrada ALTER COLUMN id SET DEFAULT nextval('public.entrada_id_seq'::regclass);
 9   ALTER TABLE public.entrada ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    205    205                       2604    22018    epersona id    DEFAULT     j   ALTER TABLE ONLY public.epersona ALTER COLUMN id SET DEFAULT nextval('public.epersona_id_seq'::regclass);
 :   ALTER TABLE public.epersona ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    226    227    227            '           2604    22434    hecentrada id    DEFAULT     n   ALTER TABLE ONLY public.hecentrada ALTER COLUMN id SET DEFAULT nextval('public.hecentrada_id_seq'::regclass);
 <   ALTER TABLE public.hecentrada ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    244    245    245                       2604    21882 	   iomesa id    DEFAULT     f   ALTER TABLE ONLY public.iomesa ALTER COLUMN id SET DEFAULT nextval('public.iomesa_id_seq'::regclass);
 8   ALTER TABLE public.iomesa ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    217    216    217                       2604    21747    iotienda id    DEFAULT     j   ALTER TABLE ONLY public.iotienda ALTER COLUMN id SET DEFAULT nextval('public.iotienda_id_seq'::regclass);
 :   ALTER TABLE public.iotienda ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    203    203                       2604    21869    mesa id    DEFAULT     b   ALTER TABLE ONLY public.mesa ALTER COLUMN id SET DEFAULT nextval('public.mesa_id_seq'::regclass);
 6   ALTER TABLE public.mesa ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    215    214    215                       2604    21972 
   persona id    DEFAULT     h   ALTER TABLE ONLY public.persona ALTER COLUMN id SET DEFAULT nextval('public.persona_id_seq'::regclass);
 9   ALTER TABLE public.persona ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    223    222    223                       2604    21851 	   scarro id    DEFAULT     f   ALTER TABLE ONLY public.scarro ALTER COLUMN id SET DEFAULT nextval('public.scarro_id_seq'::regclass);
 8   ALTER TABLE public.scarro ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    213    212    213                       2604    21980    spersona id    DEFAULT     j   ALTER TABLE ONLY public.spersona ALTER COLUMN id SET DEFAULT nextval('public.spersona_id_seq'::regclass);
 :   ALTER TABLE public.spersona ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    225    224    225                       2604    21706 	   tienda id    DEFAULT     f   ALTER TABLE ONLY public.tienda ALTER COLUMN id SET DEFAULT nextval('public.tienda_id_seq'::regclass);
 8   ALTER TABLE public.tienda ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197                      0    21943 
   beaconmesa 
   TABLE DATA               0   COPY public.beaconmesa (id, modelo) FROM stdin;
    public       postgres    false    221   n�                 0    21935    beacontienda 
   TABLE DATA               2   COPY public.beacontienda (id, modelo) FROM stdin;
    public       postgres    false    219   ��       �          0    21765    camara 
   TABLE DATA               7   COPY public.camara (id, fkentrada, modelo) FROM stdin;
    public       postgres    false    207   ��       �          0    21822    carro 
   TABLE DATA               /   COPY public.carro (id, placa, mac) FROM stdin;
    public       postgres    false    209   ��       �          0    21716    cliente 
   TABLE DATA               ?   COPY public.cliente (id, nombre, apellido, cedula) FROM stdin;
    public       postgres    false    199   �       �          0    21726    compra 
   TABLE DATA               G   COPY public.compra (id, monto, fecha, fkcliente, fktienda) FROM stdin;
    public       postgres    false    201   #�                 0    22273    cventas 
   TABLE DATA               K   COPY public.cventas (id, fktiempo, fkcliente, fktienda, total) FROM stdin;
    public       postgres    false    233   @�                 0    22296    dcliente 
   TABLE DATA               @   COPY public.dcliente (id, nombre, apellido, cedula) FROM stdin;
    public       postgres    false    235   ��                 0    22423 	   dimcamara 
   TABLE DATA               /   COPY public.dimcamara (id, modelo) FROM stdin;
    public       postgres    false    243   �                 0    22403 	   dimfechae 
   TABLE DATA               6   COPY public.dimfechae (id, dia, mes, ano) FROM stdin;
    public       postgres    false    239   �                 0    22395 
   dimpersona 
   TABLE DATA               -   COPY public.dimpersona (id, mac) FROM stdin;
    public       postgres    false    237   �                0    22411    dimsexo 
   TABLE DATA               -   COPY public.dimsexo (id, nombre) FROM stdin;
    public       postgres    false    241   &�                0    22090    dtiempo 
   TABLE DATA               W   COPY public.dtiempo (id, version, date_from, date_to, id_1, dia, mes, ano) FROM stdin;
    public       postgres    false    229   K�                0    22098    dtienda 
   TABLE DATA               -   COPY public.dtienda (id, nombre) FROM stdin;
    public       postgres    false    231   �      �          0    21830    ecarro 
   TABLE DATA               >   COPY public.ecarro (id, fecha, fkcamara, fkcarro) FROM stdin;
    public       postgres    false    211   8�      �          0    21757    entrada 
   TABLE DATA               -   COPY public.entrada (id, nombre) FROM stdin;
    public       postgres    false    205   U�      	          0    22015    epersona 
   TABLE DATA               N   COPY public.epersona (id, sexo, edad, fecha, fkpersona, fkcamara) FROM stdin;
    public       postgres    false    227   r�                0    22431 
   hecentrada 
   TABLE DATA               O   COPY public.hecentrada (id, fkcamara, fkpersona, fktiempo, fksexo) FROM stdin;
    public       postgres    false    245   ��      �          0    21879    iomesa 
   TABLE DATA               >   COPY public.iomesa (id, fecha, io, fkbeacon, mac) FROM stdin;
    public       postgres    false    217   A�      �          0    21744    iotienda 
   TABLE DATA               @   COPY public.iotienda (id, fecha, io, fkbeacon, mac) FROM stdin;
    public       postgres    false    203   ^�      �          0    21866    mesa 
   TABLE DATA               4   COPY public.mesa (id, sillas, fkbeacon) FROM stdin;
    public       postgres    false    215   {�                0    21969    persona 
   TABLE DATA               *   COPY public.persona (id, mac) FROM stdin;
    public       postgres    false    223   ��      �          0    21848    scarro 
   TABLE DATA               >   COPY public.scarro (id, fecha, fkcamara, fkcarro) FROM stdin;
    public       postgres    false    213   ��                0    21977    spersona 
   TABLE DATA               B   COPY public.spersona (id, fecha, fkpersona, fkcamara) FROM stdin;
    public       postgres    false    225   ғ      �          0    21703    tienda 
   TABLE DATA               6   COPY public.tienda (id, nombre, fkbeacon) FROM stdin;
    public       postgres    false    197   �      ;           0    0    beaconmesa_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.beaconmesa_id_seq', 1, false);
            public       postgres    false    220            <           0    0    beacontienda_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.beacontienda_id_seq', 1, false);
            public       postgres    false    218            =           0    0    camara_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.camara_id_seq', 1, false);
            public       postgres    false    206            >           0    0    carro_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.carro_id_seq', 1, false);
            public       postgres    false    208            ?           0    0    cliente_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.cliente_id_seq', 1, false);
            public       postgres    false    198            @           0    0    compra_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.compra_id_seq', 1, false);
            public       postgres    false    200            A           0    0    cventas_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.cventas_id_seq', 2933, true);
            public       postgres    false    232            B           0    0    dcliente_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.dcliente_id_seq', 4, true);
            public       postgres    false    234            C           0    0    dimcamara_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.dimcamara_id_seq', 1, false);
            public       postgres    false    242            D           0    0    dimfechae_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.dimfechae_id_seq', 43, true);
            public       postgres    false    238            E           0    0    dimpersona_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.dimpersona_id_seq', 9160, true);
            public       postgres    false    236            F           0    0    dimsexo_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.dimsexo_id_seq', 2, true);
            public       postgres    false    240            G           0    0    dtiempo_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.dtiempo_id_seq', 38, true);
            public       postgres    false    228            H           0    0    dtienda_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.dtienda_id_seq', 1, false);
            public       postgres    false    230            I           0    0    ecarro_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.ecarro_id_seq', 1, false);
            public       postgres    false    210            J           0    0    entrada_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.entrada_id_seq', 1, false);
            public       postgres    false    204            K           0    0    epersona_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.epersona_id_seq', 1, false);
            public       postgres    false    226            L           0    0    hecentrada_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.hecentrada_id_seq', 27388, true);
            public       postgres    false    244            M           0    0    iomesa_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.iomesa_id_seq', 1, false);
            public       postgres    false    216            N           0    0    iotienda_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.iotienda_id_seq', 1, false);
            public       postgres    false    202            O           0    0    mesa_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.mesa_id_seq', 1, false);
            public       postgres    false    214            P           0    0    persona_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.persona_id_seq', 1, false);
            public       postgres    false    222            Q           0    0    scarro_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.scarro_id_seq', 1, false);
            public       postgres    false    212            R           0    0    spersona_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.spersona_id_seq', 1, false);
            public       postgres    false    224            S           0    0    tienda_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.tienda_id_seq', 1, false);
            public       postgres    false    196            C           2606    21948    beaconmesa beaconmesa_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.beaconmesa
    ADD CONSTRAINT beaconmesa_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.beaconmesa DROP CONSTRAINT beaconmesa_pkey;
       public         postgres    false    221            A           2606    21940    beacontienda beacontienda_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.beacontienda
    ADD CONSTRAINT beacontienda_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.beacontienda DROP CONSTRAINT beacontienda_pkey;
       public         postgres    false    219            5           2606    21770    camara camara_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.camara
    ADD CONSTRAINT camara_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.camara DROP CONSTRAINT camara_pkey;
       public         postgres    false    207            7           2606    21827    carro carro_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.carro
    ADD CONSTRAINT carro_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.carro DROP CONSTRAINT carro_pkey;
       public         postgres    false    209            +           2606    21723    cliente cliente_cedula_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_cedula_key UNIQUE (cedula);
 D   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_cedula_key;
       public         postgres    false    199            -           2606    21721    cliente cliente_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public         postgres    false    199            /           2606    21731    compra compra_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.compra
    ADD CONSTRAINT compra_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.compra DROP CONSTRAINT compra_pkey;
       public         postgres    false    201            P           2606    22278    cventas cventas_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.cventas
    ADD CONSTRAINT cventas_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.cventas DROP CONSTRAINT cventas_pkey;
       public         postgres    false    233            R           2606    22303    dcliente dcliente_cedula_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.dcliente
    ADD CONSTRAINT dcliente_cedula_key UNIQUE (cedula);
 F   ALTER TABLE ONLY public.dcliente DROP CONSTRAINT dcliente_cedula_key;
       public         postgres    false    235            T           2606    22301    dcliente dcliente_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.dcliente
    ADD CONSTRAINT dcliente_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.dcliente DROP CONSTRAINT dcliente_pkey;
       public         postgres    false    235            \           2606    22428    dimcamara dimcamara_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.dimcamara
    ADD CONSTRAINT dimcamara_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.dimcamara DROP CONSTRAINT dimcamara_pkey;
       public         postgres    false    243            X           2606    22408    dimfechae dimfechae_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.dimfechae
    ADD CONSTRAINT dimfechae_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.dimfechae DROP CONSTRAINT dimfechae_pkey;
       public         postgres    false    239            V           2606    22400    dimpersona dimpersona_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.dimpersona
    ADD CONSTRAINT dimpersona_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.dimpersona DROP CONSTRAINT dimpersona_pkey;
       public         postgres    false    237            Z           2606    22419    dimsexo dimsexo_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.dimsexo
    ADD CONSTRAINT dimsexo_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.dimsexo DROP CONSTRAINT dimsexo_pkey;
       public         postgres    false    241            K           2606    22095    dtiempo dtiempo_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.dtiempo
    ADD CONSTRAINT dtiempo_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.dtiempo DROP CONSTRAINT dtiempo_pkey;
       public         postgres    false    229            N           2606    22106    dtienda dtienda_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.dtienda
    ADD CONSTRAINT dtienda_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.dtienda DROP CONSTRAINT dtienda_pkey;
       public         postgres    false    231            9           2606    21835    ecarro ecarro_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.ecarro
    ADD CONSTRAINT ecarro_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.ecarro DROP CONSTRAINT ecarro_pkey;
       public         postgres    false    211            3           2606    21762    entrada entrada_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.entrada
    ADD CONSTRAINT entrada_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.entrada DROP CONSTRAINT entrada_pkey;
       public         postgres    false    205            I           2606    22020    epersona epersona_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.epersona
    ADD CONSTRAINT epersona_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.epersona DROP CONSTRAINT epersona_pkey;
       public         postgres    false    227            ^           2606    22436    hecentrada hecentrada_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.hecentrada
    ADD CONSTRAINT hecentrada_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.hecentrada DROP CONSTRAINT hecentrada_pkey;
       public         postgres    false    245            ?           2606    21884    iomesa iomesa_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.iomesa
    ADD CONSTRAINT iomesa_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.iomesa DROP CONSTRAINT iomesa_pkey;
       public         postgres    false    217            1           2606    21749    iotienda iotienda_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.iotienda
    ADD CONSTRAINT iotienda_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.iotienda DROP CONSTRAINT iotienda_pkey;
       public         postgres    false    203            =           2606    21871    mesa mesa_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.mesa
    ADD CONSTRAINT mesa_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.mesa DROP CONSTRAINT mesa_pkey;
       public         postgres    false    215            E           2606    21974    persona persona_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.persona DROP CONSTRAINT persona_pkey;
       public         postgres    false    223            ;           2606    21853    scarro scarro_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.scarro
    ADD CONSTRAINT scarro_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.scarro DROP CONSTRAINT scarro_pkey;
       public         postgres    false    213            G           2606    21982    spersona spersona_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.spersona
    ADD CONSTRAINT spersona_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.spersona DROP CONSTRAINT spersona_pkey;
       public         postgres    false    225            )           2606    21708    tienda tienda_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.tienda
    ADD CONSTRAINT tienda_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.tienda DROP CONSTRAINT tienda_pkey;
       public         postgres    false    197            L           1259    22268    idx_dtiempo_tk    INDEX     B   CREATE INDEX idx_dtiempo_tk ON public.dtiempo USING btree (id_1);
 "   DROP INDEX public.idx_dtiempo_tk;
       public         postgres    false    229            a           2606    21771    camara camara_fkentrada_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.camara
    ADD CONSTRAINT camara_fkentrada_fkey FOREIGN KEY (fkentrada) REFERENCES public.entrada(id);
 F   ALTER TABLE ONLY public.camara DROP CONSTRAINT camara_fkentrada_fkey;
       public       postgres    false    205    2867    207            _           2606    21732    compra compra_fkcliente_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.compra
    ADD CONSTRAINT compra_fkcliente_fkey FOREIGN KEY (fkcliente) REFERENCES public.cliente(id);
 F   ALTER TABLE ONLY public.compra DROP CONSTRAINT compra_fkcliente_fkey;
       public       postgres    false    2861    199    201            `           2606    21737    compra compra_fktienda_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.compra
    ADD CONSTRAINT compra_fktienda_fkey FOREIGN KEY (fktienda) REFERENCES public.tienda(id);
 E   ALTER TABLE ONLY public.compra DROP CONSTRAINT compra_fktienda_fkey;
       public       postgres    false    197    201    2857            l           2606    22304    cventas cventas_fkcliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cventas
    ADD CONSTRAINT cventas_fkcliente_fkey FOREIGN KEY (fkcliente) REFERENCES public.dcliente(id);
 H   ALTER TABLE ONLY public.cventas DROP CONSTRAINT cventas_fkcliente_fkey;
       public       postgres    false    235    2900    233            j           2606    22279    cventas cventas_fktiempo_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.cventas
    ADD CONSTRAINT cventas_fktiempo_fkey FOREIGN KEY (fktiempo) REFERENCES public.dtiempo(id);
 G   ALTER TABLE ONLY public.cventas DROP CONSTRAINT cventas_fktiempo_fkey;
       public       postgres    false    233    229    2891            k           2606    22289    cventas cventas_fktienda_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.cventas
    ADD CONSTRAINT cventas_fktienda_fkey FOREIGN KEY (fktienda) REFERENCES public.dtienda(id);
 G   ALTER TABLE ONLY public.cventas DROP CONSTRAINT cventas_fktienda_fkey;
       public       postgres    false    2894    231    233            b           2606    21836    ecarro ecarro_fkcamara_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.ecarro
    ADD CONSTRAINT ecarro_fkcamara_fkey FOREIGN KEY (fkcamara) REFERENCES public.camara(id);
 E   ALTER TABLE ONLY public.ecarro DROP CONSTRAINT ecarro_fkcamara_fkey;
       public       postgres    false    2869    207    211            c           2606    21841    ecarro ecarro_fkcarro_fkey    FK CONSTRAINT     y   ALTER TABLE ONLY public.ecarro
    ADD CONSTRAINT ecarro_fkcarro_fkey FOREIGN KEY (fkcarro) REFERENCES public.carro(id);
 D   ALTER TABLE ONLY public.ecarro DROP CONSTRAINT ecarro_fkcarro_fkey;
       public       postgres    false    209    211    2871            i           2606    22026    epersona epersona_fkcamara_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.epersona
    ADD CONSTRAINT epersona_fkcamara_fkey FOREIGN KEY (fkcamara) REFERENCES public.camara(id);
 I   ALTER TABLE ONLY public.epersona DROP CONSTRAINT epersona_fkcamara_fkey;
       public       postgres    false    227    2869    207            h           2606    22021     epersona epersona_fkpersona_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.epersona
    ADD CONSTRAINT epersona_fkpersona_fkey FOREIGN KEY (fkpersona) REFERENCES public.persona(id);
 J   ALTER TABLE ONLY public.epersona DROP CONSTRAINT epersona_fkpersona_fkey;
       public       postgres    false    223    2885    227            m           2606    22437 #   hecentrada hecentrada_fkcamara_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.hecentrada
    ADD CONSTRAINT hecentrada_fkcamara_fkey FOREIGN KEY (fkcamara) REFERENCES public.dimcamara(id);
 M   ALTER TABLE ONLY public.hecentrada DROP CONSTRAINT hecentrada_fkcamara_fkey;
       public       postgres    false    2908    243    245            n           2606    22442 $   hecentrada hecentrada_fkpersona_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.hecentrada
    ADD CONSTRAINT hecentrada_fkpersona_fkey FOREIGN KEY (fkpersona) REFERENCES public.dimpersona(id);
 N   ALTER TABLE ONLY public.hecentrada DROP CONSTRAINT hecentrada_fkpersona_fkey;
       public       postgres    false    237    245    2902            p           2606    22452 !   hecentrada hecentrada_fksexo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.hecentrada
    ADD CONSTRAINT hecentrada_fksexo_fkey FOREIGN KEY (fksexo) REFERENCES public.dimsexo(id);
 K   ALTER TABLE ONLY public.hecentrada DROP CONSTRAINT hecentrada_fksexo_fkey;
       public       postgres    false    2906    241    245            o           2606    22447 #   hecentrada hecentrada_fktiempo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.hecentrada
    ADD CONSTRAINT hecentrada_fktiempo_fkey FOREIGN KEY (fktiempo) REFERENCES public.dimfechae(id);
 M   ALTER TABLE ONLY public.hecentrada DROP CONSTRAINT hecentrada_fktiempo_fkey;
       public       postgres    false    245    2904    239            d           2606    21854    scarro scarro_fkcamara_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.scarro
    ADD CONSTRAINT scarro_fkcamara_fkey FOREIGN KEY (fkcamara) REFERENCES public.camara(id);
 E   ALTER TABLE ONLY public.scarro DROP CONSTRAINT scarro_fkcamara_fkey;
       public       postgres    false    207    2869    213            e           2606    21859    scarro scarro_fkcarro_fkey    FK CONSTRAINT     y   ALTER TABLE ONLY public.scarro
    ADD CONSTRAINT scarro_fkcarro_fkey FOREIGN KEY (fkcarro) REFERENCES public.carro(id);
 D   ALTER TABLE ONLY public.scarro DROP CONSTRAINT scarro_fkcarro_fkey;
       public       postgres    false    209    2871    213            g           2606    21988    spersona spersona_fkcamara_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.spersona
    ADD CONSTRAINT spersona_fkcamara_fkey FOREIGN KEY (fkcamara) REFERENCES public.camara(id);
 I   ALTER TABLE ONLY public.spersona DROP CONSTRAINT spersona_fkcamara_fkey;
       public       postgres    false    225    2869    207            f           2606    21983     spersona spersona_fkpersona_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.spersona
    ADD CONSTRAINT spersona_fkpersona_fkey FOREIGN KEY (fkpersona) REFERENCES public.persona(id);
 J   ALTER TABLE ONLY public.spersona DROP CONSTRAINT spersona_fkpersona_fkey;
       public       postgres    false    2885    223    225                  x�3�L,NI�5�2�0���!c�=... �<o            x�3�,,�/�5�2�0���!c�=... ���      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �            x�][ٱ%+�>Ϙ
V!��;F�)ྐྵ�T�=�������~ݿ�K��Z[�����>�X�X^�>s��f��r���_/56��}���Ã���W���F�E/�}����=��j�j��Q�Uc7�#wlж{Ɖ|w[q���޿r��q�%��*�y��%��x�>s,�7nSg��m^r��MR��-�'���V�}J����u����2=n	��3G���g�d�evչ �zy<�Ap����	Ʃ;n1~��xh���:����[��=y�=���c+Ã�zp�H�߄x%Q\g�o�qVo�"@��?�dtȄ�Sj�6
Vt0��|~Xǃ�/���a_��y�A7�E.�mx�t�������Aa�����q^��b'ʧ�+�U;��}=4�y�7����Q��g�sz[[P�EQ\�Z+T�q< s�6����[�/������A�o�I97���M��awe�Z��\�>%��jylh��X�=�G�x���������FA.(v�����Z�n��(��\�D��c}��"������̊c��
�.2��:y�����fh*��5�B'�i��	^@���2:��Җ�����F�ސ{�&!Ƹ&����ӛ�������^�;�W�y�-������5��Ѱ�ޥ��",..eه��-ǅ���gܕr�����M,	3A:��k�Q�ɮ��溞R��x�W���i��Z=,'���,���t	aYa]0$(���?�:d��&9p+	�vr<�i��>&o�]a�s��U�/�x@S����Dz�'��������i�c����A'7����
Zk�k��	>��[0jk�-߇9k�s�3�fX�����U:��U�9s=�8n��-����/��{��	��e���#��
��i�sk9b���.��`�	��m)ej^�gX*�����rF�.F�El�k�-��v?v(鹡1<�����k�\���'���>�"xo+����a�5iN|�yBx���m6�i-/?=X V9��U�6�Q��=�&�`ձ������s��B���nȈ�(��Y<`2�H!nD��^��@.T�z� Z܇|kMG���}��*���ZZ���.������P\�ϵ&+be����G;In����8]�~�)��Z�4S��{�5n�ހ҈X��qi��a��k3�����C�i�����.���4.���F�1:�9���A�ph�^�܃�}��^3���7��:����"n0ҀU�H��FT�pȵ%#6�WNcʒ讀�	@F� ޚ� 7a3�Q�x ��S@�~B� �8���QD11@p�'$̱N(ܞ��F� �Ŵ��q��&#�V�Bx�"�Q(�`g�M8�����ֹ;��c�Je��h]�Rfjy�醄QE("\���<b��.��q���\���)�&��(��rwӱ���}�y UG�n�86�������`�o�����F`	�
�+W�G�M�5�}��~;�#RZhrX�Q�=��?��.m
��]�%э@���N����64&�B��( qp'~i���-61�G�vL����t�� ;u�sgl�������.�ڻ��-p�)�>�,�K�[�6W�H8���#pVK��v�}�j	��s_*�F��,cT��8��Q�D�aa��Щc�cT�$��!�nzH�o(�k9Sݣ�c��2�~�T�;Rc�h�Q��� ^.����R�3D]�g� �
>���y��Jk	�sC� �
��Q�1�^�*�4h^�d�̦�j�����*�C�f8�q���Mq|U@X���r���RF�JL�I�9eÝ�4��\�@_̈́�i��y�J���$�Ȫ�ǡW�@�5k��[�m� dx<�,t��0����n7���x�Ti�"�
'@M51y*ZN�����X^��=1h���:�&�X�.G\�i��ZK�;V���r֟]-�*���:�n,	W�a�<`�h�ߏ���	k[���n�]
b�]hq��'ʸ���
Az2��d;V����/&�@�@` w-����X��m�+��WY�ߒ��p�.���q�R]�[0(��]���-Q���w�L@�K�ip��p@Q�13���T�-��"\d�;sЁ*Vh'��ȋ��l��p��N�� X�*6��`�p7#{�q ���e]�A���3#��+���HRY&D�������ز�8A?"^�J�2M1�B!�~f`)�q�^3��� kYJ�bU��9>t�`�	$՘�@"��q[(�75n���p���+����z ֮�*��H�R����'�V��N"�̚��������D_�Vva�D��Έ���HTt�Ȯ��/Hq�?���D��h���R&�T؈8�mf���-
QC�?���F)�>Y��5��"�lUˡ7��}[u�P/7�D��'F��#�anb��/��`��v�s9]��zu|�g�+��b�D�����|b�/	�Z3PO���"A{�+f0��W�.� �Pg�ߤ�N�F��gf�x0 3(E�I�:�!�2(�>�8��:�}��S��2#����Vv�vO,��-��YD����f��0P.����h<x2���Z���V�ӡ�L�!!�D�z���1�ҍ��y #�i�:,�Z�v� SE+F����NpGs�n7��Yt���� �9I4�<�>�$��A~l`J�TQ�w��+ܛ�H���N��)M\�O̤�X�t��� هgi��O@+|�X����VPG��P��!iDl�$��s��V����MCD��� e�����-�>�zZc&(5^z���t�Y����`�3`W�Τ�DHf�}?I��[�i��$�>����IVf^�3a-9:�:f���#���A8/,�^){{e��y ��Ӭ��D�_�|�Yv0]�����#�P�˲��=:��0�tZ�����hbsV�C�:�3��*��W��#s��4���ҥ�P�@}߸~�Y�����<�Xt
��c�����D�d�X��RO�-��}��z�l��1�����;y�Q;�*�ŝ�Ϲ���!��j�st*��!��D��A3��
�D�3s$<���vş��I4��Kh��E4�������Y�شE�$7z���W~���@���%bD�7#��I��bR+�����i�2r���h:��BǹDA�'��<�ŕ~�q�f�s	Hrߢ���Kv��~��l���Zy���Kk^آ�\��'M2�qzp��n�ªtz�y��&��_�I��l�~��J�q�n@�~Zp(.�J�g���r��)]�v�֊�t-��l����>��#��hn��-�[%�}�^�h��:r�k��f�~^�m��!���zwZж��8 n�(k,ܡ	�t+"��<
�MFoa��r��X��<�_�a�i+"�����eĦ�\��K�lWa�Z'�rT���N�� �p�N�۬�NmVl�����;����wfA�$p�p�����T<s��G���\/G|���y�K���&S����fc��t�<���R�ڙYN���I��p{zw6�8	6��f�!���e���rc~r�6%ݥt��c.�	�.�~o�������'��dGYj{��[�� oli��l�ӗ(�&�v��Hr�0m��amʝ$MRJ6�֟B�%�"���7�z��1|̭�%��T�k��!��#�x��u�O�z$+�5z6��y{�hձ'p[y`ɪ)��&�+k��y���e�/�H>J;�'�SZ*S2����6A`��l�� t5Ih�\��/7N*�߈�m�����P������iE�J2�`u=[�t8��u��[�l��%�G�^r�Y�����T�gs)�b����V(��On�b#���A�b=-��x-`UCPa�A�T��Y�������%�b��%��lp����� Q�7G����f�W���g�v�������8� ~� �g%6����a��1��p����T��'^P遆�V;'$�ԡ՞��⃥Hv��K3X��؃��c�� E  /4�R�� ������ھ0��'(�q��R9�I#��y0qF�4Qr8�
���ɯ�Vዐ" ԁK�
�f~|Pdi�r����}x��3�P��)��*�=��#��`Aip���`�+$E)�LzV�� ����}j�-������tY���/
:��V<�x��r���q�J�W�vܩi����I��uW����~��j�i��C�01�b�P��FRV��l�8ש�&z���nZq��)7ܭ�΃N�s�5�͘̯e�\j�'`�e�1L��f��%��N�-�Z:L.���fH9Ҁ��q��kdEu���/T�����+���<P������Uc��*��*<ӭ�>�:��&�& C�~o���:N{5�58��6"�8Y�I8qw�RkȤeV�n�~45��i3�l�x2��H>��#�!a;�T��������U��`j��Ҷ���R�2o��f���9�Il5E��u��X�d����c�jhcMQ����o�cM�[X7P�mw�\W����-�Q�k�V�T�g��O���o��$��H)4B�u\E�p'�/��K��.�t�������Û�����p������X�]�cϖ"^9B�zlǘs�z#�2������hǱ����)�.���v�tzu�L���L7rF��b��4��-���Y�Y;�dq��� Fw��y�����.T*6D����>���@;�A����*k��;�ʗd��v���O��Q�y��Q�sf��-�6O}V�c_��\D�����y���1oB�\Rf��-N?w�!�����,G)���p��.o-�<n�l!�O��4���T��-��^��~����Y?~e�d��m����˩��ź=�~��,-�CY*��yg5�����	�N޷�,8��B�Iu� u���_l��zj�^P���x���t���v���P�z1�L �v����q������j�s��*LCn��KR�>���ĝqr��8��ע��{^!_��x()r�pc�>b& m�t��f�)��TN̵	��C�>��.�Vf��.
�H#CK^��U�b�5��ȽB����z�����͕#}~2t'2Q[pLh��Q�B��f��bT��ku�'������}�H���F���_����ט<��(.��,�7�v���s��Ѩog��Dk��H��M��Y�g��%a����{Ҕ� �����t4��hB��x�V����|�%#�o����V��a��Ux �|�`�f��/1�d����n�Õ�{��ڬa�*a��M��D)&{�>8����ȯ��hg�7#�#�̫�q�����ˏ�9 �����5�υ�ܙm��}��YNX�
�C�I���&���L�8�+�h��3�S|R��~�4^B�SКu���������,R�yԔ���d��)	ӥ�G�vD?	r���Vq�#�u��>=_*�i;����>��R�"du�"���B����ݚ4`{��_Ό?���h!,�T��75'��%��r�Ѝt��C��ܘ�L���W�0�6_v��lN� x�X=��#7��E?���E���v��WO������Ż�F�X~��0��Y�<uVG��X�ŸTO_��,��������+�n��`��w���]�� �����hР�������s���,�|��ZuN1�r%*���fϷ;����r���=cA_�����Ic��=�.wVA�uv�@G[7;.���P�L|W-��|�����pP�<n3�v~��\~����\/�$=J(�sr�����[��Λi�NJ9���E!<��g��lw�l���(��.�0��7l��H�a}�����z0o�cUo��`�Iw!���Я���鄖p�����%V�Er����`�!y����a�~��Z��
��3��5����tז�y߭��*�=c���]Y�09Z�9��V�w?�Ӫc�?~r�1me�0�~��m�{�-�����
p�(��x7��ۻ"�z�����Ѝ�w����=ws�qU�b޴q7M �)����i����{�MRk�p���a���L�5v� �Ll���Q�+�^�*n���9��;��W�;\X48_�����?���6s�            x�}�]o�6����_ѳ�l!Q�D�N�q���}{�gTk$�4cg����9���-��0-�|>���.�ߛ�7q�ߵe����8�h��~��ز*]]v�7L�x2��nz6Uݶ�j��5�n��,�p�M���m�`.���k��}M˫��Ui�N�s�~X���eٴ]�Um.�m��d>��NK�I����[W�3WC<���i6mY7���s;-q�G~��4�<��CQ�z���oq�6�`*k}��s�3��e�FcC���*��37�?���tb��[������d���q��u�r�uea�y�7�N�X�]հ7�̗i�;�����[^�Y�[XϞ��м��NL���2��]�w��q�[)�MQW�Kܤ��������U�n�oiN���<�q�@|S9狺3wG��z��|\v|�,Ս�e�J�5�����?�u��W����y��u��7Z���k�]O�~���q1�ueK�
ש���\M�-�j_R,���o�n)��E�����
_�˙p����hj~�t�/|C��>��6���Z��˂�}Ϟ��4n��aI�����)͇�c��f���1O�)��zQ~�,��7�h,�����~E��*r��\����4�Ӽ�)w��6�SE���q{\=uw�Z��Agxj�h�!��@]ƙdZׅ�h:�&n��t$�4Ϭl��Q1men��\��GuSv�-�����s�����h�q�P���3o����Z�m��=�^�vr6к�������ivH���[�����1e4�Qk���x�)�XVE(����J���}��"��4*wi=����hJ_K���7U�=&��.K�� Ϋ8Ǩ����~aC|�v<�~8Q��*�Q]]�5#�ԧ#/�5}ѹ�!s!P�C\��yV�W�/[
5���5���߁�U]U�-������iL�3 ��N'��Qg����.�{��P��Fg��ܯ1���EM��C��@���{�9$t_��;o���U���e���j����4o's��Mi��5��Ҳ�G���#�n:��,K���䮀5�fe=@]�keE�g����_6i���������,�X��0r5=�3�ئk|ǚ� &���t�����%��� #�*� ���/��mݭ	Ӳ��I1U޶�Z�H�{����H"��̛�-���jW���SԳj�]����H�ǚ��^Km��������5��g;��4?�F�yRը��.�en~�l4�E9�����X�|8{-կ���j[à$�|������ڬ_	4�V�s,4b�������QQ�D\��y�VI���Lh���S��c���Q�L�*p�
�cR��ڒZH���pv|�7���˻4����l3q�������k�:�$��C�P�VG�g8}x�����+�3���8���cY_�� �u�.7��a,0NRi1��)�=$��h�P����\P��}���頴|W	��M����SB�͹״a�-=@�*}��j�~:`o�hE�n�7q��SZӓ!M�Uz�ċ��x�K"��fB�f��wHy*�P��:��oN=
c:�Ur�n�`;���:����;`_DQ��!@V��؃�R�@�;�Z�Ȋ4d��XSsC�m����sZ7����R��w ��;G:!��?DaC��%������,�o$�Y�Rԇn��!bz����V]=�M��S�R���ڪ[kn��xҎ 	����ڼ�{�����6Z����w�H�j�D�~��~?�MkC�G����G`_ʠ���ж�b\���k��*�	��@}Y�*P4�C6�t2K�����]Rx�v�C����Vr�YMg�$�4Hh(�����-�U[Z���4X)�5�z��;��t��܉0�w%�=A,p�@Rȏ��Zפ�S?���g��Nx 7���0����qX���?>"f��)7�`DG�:�v
ݡҼq8����m��{���iɌ
�2�$N�r�6����bO��G��\���� !B���h=��J��� �KQ�`�����:�VbE�$���-�f�����#������C =���Ň\p���~E�Ƴ����gS)͏�����D ��M���� ֦��<&`:���GU+e:'�r8q��=��V���bt��m�٦�|��j���.�5)��[ڄlY+��M@�)m��A���t������Z�^d�����"�k���"�h4��I)��@dR|J��&��G}a�i��Th|����-B��c�Z�E�
��&Jj��#���F�Z\pH�Q	A��+t!Y
�V[��HI;�q|��t؆UPM�� ����4��J���[�)����U�O�U��Y:���	�C+@n� ԗ� ��%�?ʘ�@ܰ����P����>	�  �6;M}���
�!����F�*B,��8N�2)��b��&����������7����\�Kʂ/�\h>�ʢ��=[Ҁi���E��on����\s�~�� ��d�n��;��l�̯�o:�Q�[��<���I�\�O��!�M�Gl����Ȗ٩�K·C�$Nq|j :�b�ɡv3|����Z����?*�*�}�Th6�gz�� H���ݏ�8�!~�B��|D�P��Y��d��� �:T ����EGA��7��/�ElN�/�����	��Z
'�D��J_�����-�!Ȧ�=�ɋ�ӊ����n�@2�o>�8,��8/�=(GH�'q�6�:�Ε�T�4x�+Y������� ,5��6J�fqTt%! �{p�_�CTG�	��Te%l�r�,H�����'B�7�	OA*�1h�5���!nw�e ��]��`9:�s��
<���5�
�es\O�<�2��� M��w^LPx�Xq��Oqrn��Uf�I ��BMn���&���<F�jΐ��.�˟�s�!5� �i������r�#؉� ���z��5��9kVZMe,�0��_z",kʦƢ�WRIw�>NƖ-�A+��}�
���g;%�м�2�Ќ�,�1Ba�<m��l�xV`�z����נ���?%"���}&��C�����1_8�<M:C��YJ������Y�b0��ܹD3ƍ��J$V�����X�u����=�ai~��8��}?�le�kfο�'�"�#j/0��
��nĲ��Vv��?�G�t<>��dګ���>e��*�<����=���,1�Ac*Ja>#*"t��4:|�-h d��GmᬕMc���0����V�KNx+�G
^�S�f��u5^��'T�^.d`Su��~b�*����F���[Lk�U�����q~��M6�;j3T�x�7I���Ϊ
w��c�<΃d�D2h�2�"��(;$2��1��f"���q��G��*'��+9�����}���Ŗ��3�s�]��A�(NЖѯ�"cs�$����g��4Q��J����[<f���
���\�X�N�x'��P��x�lQX{8�wY2л���Y�g�v�V_CW��������qE�aAp�Lx"�P/���%�WE��d��"�L��1��&�偽����59����E�Ϳ����k�x�Q�T��xRǐB�_��W]Y�YSc.~F�ֹ��K���)�]GL�v=�L�,�;��p"�,h�o�X��@Pz�l��X� ˎP �:�_�Zg�s�!灟ݦ�F�ã�:�:M��0$m��0�ӕF�M�;��G)!��T{:�R�K6�w���/=j$l����
��z�_^5X|L��`Ϳ���gJ�l#���0{mЄ��ה�I��	�oh<	p6��Ǟ�'��KQ L<�A4j���4�n�L�%k>�$?s9}U:a�*~N�$�?d�� 戥V���Gg���a�R_����-"�5��<�|�ړZVD/S�u��e#�
�=�?�S�q�o�[0�3c~�G�Q:8��4����#�����䙖R��g	 �j�47J�^��%+r��W~���vS+�lt]�|�S�A�"�`
��Kb�]���R���g��i�t���   �.�:��H%�����ϼ���D��|�E����4��qw��CDr�NiQ7�+��߃���1�I����
��n52;�Z"]�K홰��[�0_;��s����ͼr��<ԡ8��� �H���4�NZ���O�{�6���<��zO�Z�OC4P�����r�_�[��oXA�l����Hv�;�#�K����V+���� �j��q��N ���4��!���{���C��"@Z,9mVI#�浩��m_(��<�����s�Rۡ��@d�R��ד\A�
��3ows����oR�G�p*��ķQ��K�in@��/�#Z@s�\��˝V ���	Ԫ����=[«�*p�Zꚰ4o��Zs�ỵ)Z��tUeX��f�]�<�Ӛ}}�������,��C58H�p�_iX0��"A\8�#W������c6�0J�@�ҟ|I]8�+u���(?i��׺�j���̂�]��	���bO����i���CY�L9 x�����y覫N�V��Rm�ӕ��\%m�jv# b�}ƽ'���Z�V,��n���n�3F�|8䌺��yHS�fD����$��mk�q�r]Q�`�����LMm�I�Z��Vat?���8��j˗�r�K����q>t��'U~\?�{��ꖎ���4�Yc)������h�E�}����=_��I�<�>�`���+&Զo
�p�ˁ�|y�}#Z�@#c_��hBYֺ�������1���o�>�Ȓ� [d.�@ �7�.O|u�	�D�������[N9��Y��=���a�)"��uWD�3ma��x��
�+�ͫ�)��̡dߞ����6O�eF���/�e!e�L$���Ԧ�������`��!���j���T����d���!�7u�$QF����-Q]OF6�_	_=K� ����ǇP����ρz���{N��FZ>��grp+gι���g��.�}�{N���	`��(��2��?yA�C��͐4p@R/O��T��3rV��"�Z� ����، ��N�A�k�×.���Q_f�v����C�%}��	�| )�FnQ �4T����Y�8#���X�<v���c�l�)����W"Vo�3���AvBC��Y��a@�V�y�y��@��yK�4��)�{0z8φ��-Z��E�S,�`\@���IF�/��A�_b^p�|k���g����Ph?�Ë)Gg�Z!=Q���3NI�j�Z4�nh��HYLg#TC�]˫|�^V�k�i?)$�y
�9t7����(��=�*�         $   x�3�,,O-*��5�2�1���aLc.��=... r��         �   x�=P�C!:�0}��_w��sۆ�@� D��@��y���8�O�.��SX�*���A���4!"LaL�&�rN�۹@����m@�i��v���y���'yIM�{2/������m��m�ިN�˿�m��Pӥ'�#��	Gʅa����FZ?pС�K�ݺ2[W��߯��ÙO�            x�<�Y���D��W���G2�I��Q�3kk�VQ����Ǳ-���-�_�����:���߱����������;�_�2Z?������o����m�����ߺ��y��;���O[��񗷯��������;/=������o���y7�������-KF�O�[�{�������c_>[f�S��wd�{F���d�#�z����7��ӎ���h��/{��������~�jf���|��>W���������?%�������߽���W{F�gm�����g��Y���ٯ���;�����_=3��L����o�Y�e����S�����|۱|�o���������c�܅�{��|[��f�|����O��;?�w���se�Y��w�ӳGv����������W��?ٕ���w>�o�̎�i�ߺ�׳�{�dt����\_����������{����Y��`�y���m/'�y�[�e�d��ˎf'r������87�������Z.����L���2��@a8'����/'#{���ݗ�O��<�ʿ�d���g�Y��s��;���s��3�~؅�3|��WuE�o�;���A~�t����;��'˜�����_��Z8�Y��jV�\�	�ۧ��\�$'��t��"d��G�W��p�L�7����-_��L��׳g���[��|��R8�KN9�]�O�!�!8�'�'��sܜe��>���f�~�[����f���}N�W�6/��^����_�v�}��)9;/���p{��89�-�e��3���5���:��gr|"	���g��;�.�;�;��w!�^?��<y��	ZY�Z>u�_Y�ș��f�5�������1�>�#S"�r3��9��S
w3�޽h�3���{�L�y>�+�)M�G�<���A�D�q�{Y�����ʦ�t[>��|���޾���)����oq��O�)]��~�9��O�n��|~�0��>]!���/����!�r ���`q6v��ϓܹ�Y�l]e���r�.��s��i��,ς��N�4[;>Y�g�˹E����+՗ON���uyI������Q!�~�ژ�&��i1��0�1~������jn7�N�
6.�73��|����iVp�dN�˶G�dճ���7w���ܜ��#f�iQ���T�I��ϲ2��$�<�߼dDS�������3�|�#�w.|� "�-9x�'���1/����>��і_$��1TS�a�r��GӉ���+����c�����UV{D3�3�ϥ��g���v�&��Z�m��2%�s��L�ш�g����V>т9�QY�ltc�1"L�vGWI�SP�VX�}�8�:�'�lW�9�7�3�f�%�'w#_yw�<���z�\Ȥ��H�/'��sb/\9}0��M�!�=���->���OG���"
�1��`W�FFvfm�2?WoW�d&9����'W=�1&�W�z�����A���S�D�gS�,9D9*��yG�cU�H�5W��h�����5tT^��]�;��h��������$�����0���x�G�@�I&[��(���聜�cyO�D��ҋ��U�Ɉ�\��(��,bN����f�0����L���{^?����M��i�O��S�ܹo��p�}��D�����������i9��NE�f��O��O�H�UP��;��s*w'�jA=�X~9�9YćU�p�|6wڋ�F�Ō�p,a)W*�*�e���1����"Ǭ9��O~,�yj��L<�$�r�X7�an��ǯ���q ����9��oL�F|2|�w�V]V=[2؆��|�� BY.*�5
�T�{�/�n��9�]�po,l:�����p��2
=�@�ATo��S���,&Cy8�+_����ɏ���y:�;s�gP�\�XPk4w�ld)����c�|����9w��}e4w�W��QK¯���."O�2�ѧc�.ҁ<�Ux:�����r�2��������|L���;5<7�f���MՓ��}Q�Gph�m�;�*c�ҍ����\f2Eo��ݰ28$My����'�!g�td'���$�'�ith�w�ҍ��\'��| g0J7��d��c���$J�M�e�rظ�k�k6-{3"�D�1\�U��������%zI��ȁ|�2���:��7��#`�Ѯ٫ȴۼ�b�Ѯy7�j�f�+�v�y�x�ŰL�hW���ǖ��C�a뇟y����Ѽ$�Ǌ���j9�Ϲ�?n�2+3�n(�����zlڗ��vE*|�,ot�9�5�(�C�}Dx�f/��ɾ䋲 �{|����/}��JQ�Qu�3���tVp�D�zO�~��9&(���=
�LT��T�k��>7��$�f�`�(�K �6"%k��Q��z�vE.쓯^�ƛR3��Ѱ�6}��	FVC�(��0�� �@�.M��FǪk�'B2�d�.�E|�}�#�h�#
��l4�d�9*:�;�_x
st&q���FnL=W\-��%1h�&}�G���o��<����N]��Ѿ�T�kzl�<�����Nz�5�d��ocnC4����̫r|�p����d�$rNU4wDtD��599>������lP>tg�8�'g�1����؝x��L���'!�����%�W��I��~�%�׹$Q����y������tApZ��y���w�o�vlW�����QD���B���)Q�ȧ5�V�)���R]����ɹex�>�&�rT8������Zg���N��>�jDx�-��Ds��טJ#�H������\��K*�|�o�0'���t��@�Hl�%�yGs?hT��e�:*kփӎ��X-���aS�U�f1^>plr�xC'b��(Q��߾hT-���%�{ήW�O��������>R3j	Q�t�^�r�=M���Ji����xv��/�p3d�EO0�a��oA�~s!����ܐG%���y�|�R�d�;�+��,b�R��|h�%�y��>�o��:;=�5�_�����9�>1�3���yp�&Q����U՚5y}���2�������%�����?�ulQ߽�7���~?��*�i����*�?Ӵ+��`dl��zTol���U�P��bW�c~e����[.z`�k���z��/W۾D���NSL���'�?���V�qI��c�E(a�|��'OG��q�N��t'�'>w�z��6�H"^�`W��/`q��J�zl�B"���X��y��a��̱�|�Ɖ%"�`ꬬ`�|�����e��֌�!�/d[=�4c#Ax^%zgfE�}:�%z�9��_c_�6�\�Ї'���ɍ�̹\\u>'z>�[� �����}���溽'�!��=���g�dD>Y�"f8�F�;"z5�����ᕸf4�jH2K���Q�sj�U�	6[�B�9��/,m#�;q�\�L=�9�..x�ƻ�y�k���C��H�(���h�27�����㷰�A~eltq$n1Z�{��p�'�P�o\P��%���U9߇�4A�]��)2�I؆h����m�k�1L�|C<lG<���%���X�NV��&Ǉ0yaYil�� O�.~�t�=*��]�+�������6��FBn,�k܋Xo��e�̸=^�'%*���_WװDE����59�݉����cἆ����������5*�yy��c����A
W�z�>Y؅��˘�`m��l�������Ow܉H��Ȍ�];��3�������çp��_g����[~��-��ֵ���l�N�6�Qѹ�Y�,e�� �UU�/�"�FN����B4�P"V��ƔrVEJT�SV	`�L#��Z��s��Hs�Z�jt1�tav��V2]��ġ�����y"��2<A~�w��_�� ˴F�?#�cT�"o;nJa�>C<�b�ˋ	p�T���;�'����l�b���k�.��!�j�A�RE�(�E�����y�8���yi��(�Xu�8�g��(]�k��*tw'Jw����Re	�$5Jm~s�w�?��k�nn@���>�����(�l���tk���t ��sՈ��;_M_��L�TVtqWY�{g��]L��2#    �ŧ��e�`�uD����M	A(b�
�*�8�+��Rk��ɭ�+^Q�3��<H�e���#�0j��ch�"���q ����$&��Iָ�Y�SIKl���I�|-_�J��6��87�?Y�vD��yӺ��w'��M��c]l����?����E�>Z���_�fTt�nDJg��1AT��!W�9ܘIT��W�ʉ���p��9Z:����n:�3�W����Ar�O���=_��vj�9i&�n�8*K���1"*������9>��Sq<4"�HT��ܛ��;c뛑���Y}:�QgΫ�׶
eb|�f����E|���s���.6���ƹ��$�����F�k4���������z��ܧ����1��@��F�I~�I��ǩ���@DE��H�˨Qё�뷶�h>g7`������q��9z�����<��������7K�̈́�5Dt>S�Fr���~rQ��;�;{�o�n��ۦ=X��#q�Z��"���+V膵�"���#/s�2�J�lJ�hn�I�kn�9�
j4w5|N�� H�wԢ�Ƀ�J�9>�aC6��4�*K�3\0�-�����a�~����2ة��F�e3P�K-�0m�ŗ�x�q�Dl�ݧ7NU���c����;��š�EEH�E7����)��E�ͼ-p~��Fr�d�/�w����Ή�|�69-*:oX���V�ǧ��wMԅ���v�����6+�Fs?.Ł�=��ǋ��ɣ�t�V�*ͭ�,�1��h��l�΍�p�ٝ��͍���X�][4�aĚ�݁�;�`4�a��U<|�=آ�cWExGH�?��.U47���|�9||4�k��1.�1n�w��|&��B�z���2(��(��y,%2�C�E�G�dE��'�E���!�&?�wv'�uC�|6:�X0i�=_���}�\}�6$����KҢ�[�����j��ͨ#�o���;��k
iռmQ�I &@�l�*R��/��
F�W�w�M^����\gI��N��n�|�	��ù]X������2���m����kw�5%2R�b�h���E92֗h���;�8��[C�{j��2����W�0�İw��~��dӺ/�������3<Зр�6���i�W���	��=�i�o�4ȡ�(�X���f�o�c��k���`�1�(tR!� ��{:w�F���B�n�����W���6D�G�����81���\�5bU}٢Љ&|��C��\_��w	��<w#��:\�وG�2�u�w|�,�aN�@`�B'��*���޴g�u5�����\�v�CBNs7�բ�q8Mk~U��I:���{ r�TA�B'���z./q&�b��/�r�}w4w�:ec��rh��'��0�N��E��E�N(j~2�8`�����F<9>��1b��o���W�����]���N��Z)�>ھs4ABܬcN��քj�l7	�����]��0>�B��sb���o\&��u�o`q�|�!x0L0� ��.>��06�ۥ�mf9߭���A�kE ~9>���s��[��i�x���W����#�;
����*��X��N�_�%71��أ�#L����/7�@I�ύG\��>�r3�a����ay�(�v@��d*��	0L�<:U蝄�
�5GA���D��P�x,��晎�Q�c�1,P8�hK�B�z�,R~�8��M^fs_�q�z4�e^gHtX�'7rx����)��G�GD}��ؙ��2|^���a��qx�cv1z�=أ�C,�s�L/���6�R<X�b9�m�3�5ê��Xs��~ux 5#L��ȉ�4r�B���>v]w'*:R��d1���a&Q�y('d���k�`�n>a�@l *;_�f����w�G�.b	 ���'7 ��Y��D<n~����`��|��z	��v�u���=J����`޳|�i=J�9��ǌh��Q��d,��n3r�v1Pqb�Ow<�׬V�`�F��� ��r���F^*G��%T�S�������\�9C�iᜐ8��w���c�rm0{�.����c�/{�{믓R<p�<�q���~��q����`��"��Nӣ�wm0���z���*Z+��û�I����x|���������9.���NB[%˗���OF��-�����Q��62)�ͨǇ��k�V�(�~�}�e���*hJ���_�4���o��}�TV߸��웎%��/�v=�H@����^=9O�a���G�"I�z�5XA"�;q��?^G�^���A��}	�X�f�f���:��5��p:�k#��y����'�r���pNt{��:i��
['
���,��ҵ̻}y�=<�:�@�e����J��\M���KRt&NQ�����״5@�M���(ǣ*2IP𕇶��!�sY�6r�b$�n��Lk.�?9�	|�}���)̭}I���A��֝�b<��7ۄ����j�۰�6��(�c̘I���z�ir3�.�gD�n�#�X�ي�5ڄ��f�c������h�m p�]��݀�M���9>iO�B�q�]5.�K��1H:?&��i��h�w"*|���i���&&��1H:PξL`=��v-bf�����+�h�����Y���x��e��x�3X�ɯB9���Y�#/^R\�-���2� �/Zx/z��ж��%E����˹�Nq�G�뢧krC�ܧ+v�f<vh�b��(�bz��h~#J��_��}9>���)��
aD�~
�*������3�EGk���/�����*���F��5h8D]�mċ�����ȏ�dċ޵�N�X_R�R�_��C(è�8����cTnD���*K1;^�(���R����<� Ծf�UG��RԮwv���:A����OJFr4ô�CV��9�A��֋(ć��aa�khm.A�XaӢ�� ��N�-�<&�^EQ���#~2���}`���-Jr�����p��2EASp��xvs�X��y�U �2�E�!v�'�w�	�rݷ��*Z�:������\"�;��~
`�8c�%P4#��O��{�G3���"��Q���6a"^�hnP;��O1���+����d.I��\�&� �,��F�n��&��:,��N�r1x�B�����c^�gċ~D��t�^���f�ɮ�B�#gM���%c�L����8��� ��/�A��#�DD(�3��';�~Lw���-���b́3��:��5�#�� ��t�?�JE�w�|���AE��'FήӐ��,U�k�iM��3��I��+
{�M�A����)��k���܋ٷln��0/��y�/C{h�bhTEs�T,�Fl� L�����c�Ѣ b��;��c�Ldm]>p|�.��8K5���+�[C�oG�#������h���s�ct���@�b�^4@f���2Ý:�|�"��/�!@Xn�g[�lD�o��� �ה'��f)�ô�D}l3���ۋ��m�
��D^��E��*� A��.g�OWl�W<�׌���#z;'���;J2q#Z��~�Ӯ���-�[�"��i���k�x�Z�W���e��@gs:ٴ-����J�i�mQ��d�kZ��E�o���R2/ڊ�7���V�}3�A����{���r��V�lQ�Qhۛ�ms��-��W`*�;
�k&FEG�c�MA9��Sh�V
�T�4�o��-
����Y}�E�/Ftc&��X-{�fX�t�W��0��H�Qm��؆(�Wx֌=��� ��y�b�Q�OG!� u70g�6ѽ�ԅ���&��%e�N_�n3��9X�y��o��6vs2<�����b܉W�B��QDᩡ�ና1}��$D6��_N�˼�����3���8�Õj���(�q�ؚi�\��((��ΰ�E�s���'@�����j��O�Mne��cD�x4���ܱG�Qͧm8�2��^�O��!���r
W3���s-H-���u�_뮚���xy1����c���;#����Vsd^�a�i/	��9Qѯ��� ���GEz���]�Q�ZٷU���9�Q    ���S��ӵ�����T_3�XQ6*�D�R�7���%H�E�X�"p#NU|nJ��Ko�Ç���/p�0=����EM��D]1K�m��9@S7�rW������z�:�BQ��.�/�*�U}�\��#I�	�ܢ]���"Ѐ�|:��Ђ��i&)ݢF��7�{]��݉��}�m��2��E�6���D2�Ű�*�эK-M�m#E�p4o�d��'Teo�%��e޸⛊��h~u��C>���' ��h����ܷ�;�`������wѴ[��e�(��{ٚu�[�.2f�L�\��t�nLp�*j�X�������_8�,ltq<_���1����<�8_�����ifռ�"����;�8��诉�@"0�"g_�$_��Jf�y_��Rnw��h�q�/}�!&�;C�{tq��#ě2��{�@w���kئ�ݣ��� _Bf�.��kV�������
?3נ9�)�ʭ�|�y2ʵ��u�_Zؘ�9O19�:�UV{4m�ǗtvgxҊ^6�{�.�rn3�I[�??E��M�)��ׅ�w䰶���~�w�Ekf1�O�q/�Q�_m�Xax�1�}W�
���3���Z��� �sh��ł\|��;HΏ���=��n�t���Q�	��rx-�ݫ�i�V���۫�Y�W�}����v=q�)N���nc3�f-�' V��i���G�������.��E�ǥ�;f.�S�I�h����3�  0qӔ�nlp!��98�;u�Z��E��J�	]S�(�v����l|��C��Z;pc� O�`n��:g�Y���XY�hW�/�t�bN~�v��4��w*�=�5��S�˼�t#/�eJ��6s�w�|����r$T�����A�`m�����o�[�,'ݣt�d�x �E����h�O�$D���*d�"����$���;{����!���������L����+�hΜ�2� l �#Y�˗�O]���#^5�*2�^��M�ĳ�~�҃Yb��]�	mj�Ǩ�O��C{����a�l�7�;�s�n�z�ܦ�:6{<�W���R6$Dt�f�E9��H�훠��#D��4��=��Z?N ����St����9�ϥ�w�:�Q��g���D!X�@�G��c�$�&# ��MCo֓4Vk{�8���|YNY���ev�'��7������-Jt#P��G�6����%�G�~Œ�����;Q��.�Y�HY*ĥ�z�t�@�������W	J��wo&�u����g��#����<���i*˲iG��Z��z�C>��Mz[[@J�Kd��1��;܈�wYQ�u��X�����+�!rv讚�֥De�o��Wm�Ht��{,&�r��x�sz�G�k�7
�� `tgw�h�_I�Fn�p�Ow����Mǝ��#j�	����w���KY�h�+�d<]jQ��\�؅�v�@�w�&�ωv=s�fq�����K5�nԁ�b�����a�����a�s���~1I�Q����(]Z��G\Z�D'Fe1Ͷ2Aꥬ���X|�F�:�k]e�|t��k��_�rGt�#�n��
�$����zg\MCQ��6�e^&�#J�Z.{� B��K��c�7��g�K{g&Y�i��;�u+���hq�����6T�0��8H#��+��cs�toS˧��b��h�#�^=]X|�����	�<(u,��jbሾ���ZD\,��G_���!)A�`��n��iqZ�YWq�5Ms�*�է+��Ș�Aުu�G�p{Ѵ8M����D��4�<�	h,˅/Ý��|eW��*�Eu5_���#����
v����iv�@��Z���ڨ�¨�'I��a��-�����w~G��%5M������euQ��c��5S�q��ygj戓JB`E��=Uh��� >��
�vE�z3�x�gP�}-�[L-Gjz��]㿏��qEA�+����%ц(]��^��b��L�
z��]��%��-����R�1c�5�����5eV��D*!{��&mxl1�RSmf��&�C5�5{���DvW����s[4!	��_P�d�1�K؂�X�_i!�[h�r�V�"�W���]�2j�-1���6�X��Ku��;M��nE4�f��x5�^�Z�%����|�nC�%`�$d�;D�e�W���%��[�wf�(uC]�W$[J ����[�[� �����J^n���Ղ�f��/{����\` ���#���+`e1�Y8�]�q�w�D�d3_�Q�/X�6\��f����m�k����/e�M�Q��餀���/Ò�q:޽Y���A�i�v&��2����
�K̗�XJ���N���!0���i�\
/)�	̷�Ó������0b����2�n���`fx�$��!
�`�mg}C7o�G_�n�e��|zBw	���3�W` �� ڛ0���j�����҆l�`�kY�~2�r5t[��Y��D_~������;���fl&[ȭ�|3��؍�_!�4�Xef�f��\��Q��/�|�;�+�i���Z25�"�O\}���Ҡ\��vu���Ԙ
+pz="]�&A#U<���ۀy��+������$ 
�{�ݧ�X1���ѮU��$#����b�P�Ⱙ�� �4⾗9�k����('2��1U��_U�_>>�2.��=��!��O�̻;�W'�bw��Rxo�t���q3���g���5��DpLut_@�-�X6X��˘*���\)����Y����<j.�n-�4�gT�̟��~�R��1�a�}�F�
?u��Fn�� ��
t\EYDU�eT���]�YO���p�;:�9D��n���"���MC�K�$:��x�F��c�!: 'h���ѓ͑�R�*�q���B���Y]E�	��dM�Y�qt�p�+�]�ɫ�Z��L�5�G��������/���(|�����#���7���ʕ�Uھ���%�k��b3��C���3�>g�
d��Mⓣ	Lye×��8�Q���U		�$����W�@�ާ;��@�5w�a90w
���baٮ���&-���� R��ʅ!.���U�?or�a���8��
d���.0�f�)��������&}�n�tK���u�dX���HB�Ã����O�>�w��|Kd�U���Ս��j�ܭov����lH�%C�dT����x'rRK)A�o�H�p�!z�'m���p�a�~�k��z���EfúY�b/���,dx-)�N�a�U���A��҅�v�)M����-��`�6_��iCd�X��k�U K׸~%�A���� �i�?ĺ�`��7��*���|Z׿�2�n�$��G7�����ʩ�,�ŋ<4�`�@�Y�s�+,]�2I<��%�p��HL��,7eؠ ��fUHtqت����[���f�Yҭ��ç�٪1ï��{Y�>���B�}>�f��c!}�It�m�b��h^B:���f���|q����*��,0��ݩ:�#T_CF=Br$,l`���s"9���)7�9�ul��d�3���IT�+�/L���wX�!I�n�=��x,4ZMt3�2O��E��g}qV�ı�/�w�֡��ͩ�e�����s+���.f�|����w죢gV�viq,�/pz͊BJ�G�S��z�'EZ]���D˷C�X��3$�Xzt!����殆$_���oZ4�P�dAr��^�7��)-L�n-�{�`�1�'	X��s� ��д�ӋX�ך�S�͍��U��G����Q寥]��y^6X5�E����ޛ������	%�N
�ur��Y���`�(ϟj{�"
���q��Rdb�N�Caz���=4�����}�
�2?~���$��)!���ѩ�}X�%�����ń3٭��匠d}�*pz���n��-{�^SC|�rp7�DG
�*���f��,��K۹$Q���\��H�<��`H�2�pY�bbJt&�a!����D�l11j��j��w�Ѩ����*��b�i�	���2 �ؕ���05!>�������҆�簸�G��5+o��pz�����pz�mS�=,i�i	�>���    {Ȼ^��s��fx�	l�B/ު�ፐ����+`�pzu�Ǜ

�����x�k#�EN/+;�``���������&���a�aUB֎�ΰj-�.݃i���굒˚r����i,��d���Wj��tw��by�����˰����|%��[jD�1�ye����Q^7%�N�~T)!�%�z��6���O��i1�5�R�8����.�bh��;F����]�"�c�&4�û��'piK��,/�w���?�im��kHM�#�y�ca�z]�.2w�A!�z|�����6����Fg��1S\>�d�ϒ,̛��Ư�x�
�2��7	~W�,]���_��t-�?.V$�b�2�>3s�L��C7�;����y&L�KҬU���y:��a9G/7q�v�r&���o\*�8l�����La+�=��5t_g�{�'|I��D%W.	�ٖ7B-?xe&x�Z�Ͷ�z6�k�}e$j]çͻ~A#�M��k��6�K�Ùlxі/Xߴ֡�&�y��� O��Ϲ�rG���3�x�$�}�w�5�C�[��E�@����g]�-��{{H`l
�����y�	 �KVA � ^��]��W�2�p���l��C�7K�?$���v5�[��n*H���N��y��������.f�Q�P)ɩ��_����:e�ʓ��K뱚i"��L��w��v�ʃ�u^$%^+�v`����u���fJ;%_�M�eX��g��ǧ�&Q�\ ]�l�wJ��h*�����b�� �=��6��-?��̵@V=1�K+wV����[�8���SMp�"s��L��$g`$���p��hš=�J/�;\�
�mF^�0������C?�g�0Ù�f��k�;��k�&�}j�(��To���yr���o;8��e��S�I��?_ث���2��s�m�`=��+�������z�OÕ���`�* ��%�q����j����r�*�E�B6�����8�{�ȁJ�P|q���6�Жݚ�5z~�f���a�D�<�k���Ӆm�R��a���зG��n"��K��Z��S0��q�_cJm�2v�L#*�wR�eV��������+�%�1 ����	caAzM
�C+{7>����C���>)���Y&v�L��2l�tTb���zV�Q�l�t.>�˧4Y��C�aJ��g���VT�$���X�jذȺ���ł����O��|����K-E �V�8> �n	����n����_�ѳN����ˁ�_+��>��G�G�����秱 $`�6�� ��V��C�U�z���/�&`���(�^T⺉S0o<t���ƈ^��ŏ��_Ij0�U�E�^,���'[�UH���W�^���:���+a�����¦E�WX�ǐJ�I:h��gn�c�s���9!0J�U��A_���D��Z]�Ij(�z�`�T���+�݅�?���=���r hua�>���ƃa�w�:������E�?O��Ӎ��Uɟ�ԉm��j�"ڑyL0���Q#R��%Ss/$�[�0��C��d�39�����s���'�WÁ��i�����>��/Bu
�`�������9�@qB����VC��:���6�z�J�좢�'6
�M?}��[���I��'D\�w�M��J��<�B���zY�T,�_e�=��(t������0}6��"��l0�B/�v��ת_�"}��>�.7��V^���daxG�w�}� k�$ЈU;\��k?]����I����,Uz��r38�k`����}�����lrv�"�<�"���YҚ|%��m��8�� 4b���޿?���B����a������.��պ���_X�,��e<k0l��Va���p��� �~�|I�J���K���]���KnQG�ӲӬ&j�eBd�1���+$�TN��g�����|a_��&/���X�PR!� _X��Q=�ު/���]����������%Ҏx�~�bXr����Q=[��_Z�ۀ9��nYO�r;�t���lB[�>�;*zѥ�ft��2\��y�@�B����9�~坷��_�2[h� 5�T���c4X_����5�_ش"��n1{�<�*
���mU{ga�q�K����	P�>I[f@�JTeyI�q���c9ή|+ò`�}��2,���I#'�WV�K�R���;Q$S�.ҭQ���������F�6��U^�����d��v0���Ok��"�6�N��8�Ѧ"��3���8]�n��`u	��Y�����An;��,U��0iA���{b�f/����!I���s_R�s�8�]�w�B�+�_��#�\��o�k�⢙��#��6k��r�~ۼ����.ҩH����4�6���l����g������3H��#���o�'m��E��p(sg��R���/I<��a��iϥ!u��ᕗ��U��$V�mo�!z�<�@#����n�5~�`�:���̈�ښ�S��K�/��iF�6�뜪X�G�6�=�39�Z�"�3j�͗l�z�e&�b��j
��%�l�]�1��͆D����bf�bI����-�����9����ݥ �����=��f�0^���O��������V���Kv�vӄ �öpx,^�%��ˀ/��[v�;���a�_Y�F7��m��0j�]�R���wL��O�Cy�O�-�#��U{�9[N�b��6�#:oI�A�	����M��T�R��C..�ݫ`�n�Ω��� /_ؐϒ��})�K�ei��V=.E�͒���| $2lÚ��z)�K�b�ީ��s���Flr/l{���J�a�����gK���~�����C#��>3�y|gl�7&N�X^��aq�������N�'�r,M/�8^����Pb҈Y��M�vk>
4b�l���U��ءQ�����2�Ք�+2
����®6�8[�wv�E)���x�,��Q�����]�{[���d�(Ј��i?��>"��ivAaՊK�&4b�|�<˧c��09�_���3@O�C\���.��%��&KW����	\}uY�V�I}��nX��e6���a��6�k�b�Л��-��Z�*�C���k(E��m_��!�d��$�<�������>�La�TQ��ro�ݖ��UN�	��3N��N�2_9m6�߾� ������݉U��Z�N>�fP�]�j��,܎��I@z���D�Q�2qJ�@��A����K�ܴf��"-hv�(�rQO�e�T�^��nO��nTݮ����Z :����P�=�&7/>�M�����l�5�#�˚�˹i���eZQ�{�������c���0P&˛���In�+' Q�'I�1t.Y���\�L�6����8����"��V)�|��Rg�e� �=l�4�!��B���kF��@��rY�l��6�l}(�W��I�aC�����Lc2��5n�'q��ل 
}X:��59� ���'�&^w\S"o�t���ڛ��B�z��p��&Q�D�f�n�՗�D��|�m��AhVek�0ݼ���]r�o��y/��W�u����!+�����~;���9#4m�! ��H�Ũ�bn�C�G�bP��2���Y��Ք�Ds�_�6X��?�e�^�W�T���f�H��Zͧe�P�7"ڷ��ʱ�4<t����Y�Z$4��Ro�W��&����\�`[�aGbp�;�n�����Ѣ��*0�6�����[rI�0l��۸����2��lW1B5k܏@7e_�`ۣo�膢촊�(���.�b���S	λ�gy�${��-H�.�ߓFn�٩�.��<�F�1>�7�b�Z)x덿>=��<�y�U��a2������a�v[�0"3¼i����o-��pw
p;dH� {0\~��w�`��󰋽�\QB;Ov�Hp�ќ.��	F��*��nc�X��̷�3��f6��QP������H�R͆s���b�� �5+d2W���Ɍ���2,9�*�p�Mx����5X��:�K�Ū    E)��
�Wa
��k;��1���T{�{1cE@�2l[�H�E�������b�[�J b0�Vz�.�v�L:��ʔ�����R���O�u�>��V�W�"�Ow��q��4P��v��/����#�u��/V��Yl ��-���tZ���A8�T�Ӧ���
��y�����F�2���=�Ȋ�n� ;�:�ǒ�7��]�Y�泚�]���5AP�`#�.6��T�:Lgp���ЏHtJ4b��M�dV��&��i�\�bhĊ�+G�<�VZ@#��%-4�r���e<d�3��5�m����ᎍ�6��:%�����x�`ؾo�-���Ɏ��8�c���W�/�V�ӱw� �z����%ͦw���<��t����n/*Zb0���$�w�;�&��Ke5P�������񕻎;�А�"�a�Lp�~�&裸�Q��|��8�qM95
�AV�&�̛���~��^�/�Un�0 d(qax�J�f�x��f�&���&�U�A�{y��?睏�d���L��yH�>E�%[�z'������w@�Ul���<�;�r�z��s���)��mǺO�������� �؈d����0lo�!���,����k�mu?~��I���~��7�����據'�0������2+���� d�X�M	A��&��+�,v%�?T_��Χ�}�
0�U�=&5�%��m�����9������C�-�^�;�O�.,����U��ag�嚰i�7Zz�UA`�_��[�דTp�i�46P�����2����C�į�.�{�!��q ` k����-Iaq�h�q��K���E2N@�"B	���u�����jY` �(�B�!�.��Yb5�bY�������g�0���{:��a ��������!J�۴�wmR���,/�)$ga�
�4������[��m6����R�l.V��S�R��#gѼ�}6�V�wDP=�{b�b��̇�W:���/���́،^?[�y|�;���Z^o>'�yGs����#����F,�Њ�j1Yo`nZO��r ��q��3�k��4)wy��ˀ]l�?AV�5�G����V���`9'�4��o��hb�W�3��\�Lf��"ï1<���9�Ŵ`�x�>�çe�~u!'�V��Bu�x�*���L��\,*曨A��D��W.Bp��sk6��~\d�����5��(p�M��ͪ��ł���T;Ld}7]��R.:,�5q�j��&*aZ�Ⱦ���|�����eF8�P�@��!Z�����2�J� 6����;��K�;��8��d3����c�CQ�	�9gW�[{p۴51��LY��Y�:��Wm�m�yH3�f�턹�K�T��y������8� 4��'����/�Z�Ba��qRن��5������L�������ؔ�,Ul�2{PZ,E����m��K%rkF���쵽M���;�R����������K�K�(�'���G}Id��۬�fQ�u���� ����~1<g����<Q�vH�z�?;��&3!�>ۄK�{�z������QI݆��9��o���	�r7�i�Dby_"�b�סs��y0i�v�X�!yԜ��'�B3�e��}�5!�|��z�6���+�4�����鿦�/>]�(��;��7@���cӠ?[d99�h�&6�6�X_t#��}�?k杊�ݾ����a-�e������fCL�4�ϐ�P��i
�}R�Va�^�RПM"�nܫ�%�g��#=ȎR�¼W�/�Q��X �V��0�Wh�+�Q�Bi��ph��
�,m�V��Z��*��MD�%�P����>��YTp����:�S45��>�u�>�e���� ���r3zQB@����$����yo���uv axP1��?�A�j5}s8�4h3\�B��|�
��d����"�֯`8�6���m�T [�qpl=�ȚTACD��k���_�!�)0�j���v�j͙���_M=�ә�ROUK�Og�ͻ�5מ�OP~��M��i1w0�]�(]H��0�X]D�j���	6��˨ܔ�ī`\#�\$��'K��~'�G�"�O��_r��R1¸��G��hK�^�� �4y�˨h��ٮ�y�j����cGG|�Ӛ>_RAN��K��ŗ�]/U"]o��՚�����
�5(�좄	��D|�6�hvĤsy۬��v��d���)�I8Ժ�0���L�-ĚeїˬR�C��~n��Հ��ڄ�n�/�s  �j���N�*��T�6����+�������1�m����k��>���i���Зl��@'�547%�.�;��z�
�)O�w����>j; yLp���\E��2��Z7=����7Vp���=��lZ�O�ӹ��狭�j���u"c˻I�knͦ��;t�d���ɚL�Ӫs}�h#�V�޳��=�8Q��&��g�G��}�n_v�ΰEW�،���o��)%����|SvԿ&�BE-Wv����Z$ "q����U�4�3>��������#�l�h,0'�MYu�e��F���B�֤D;K��=I�$�	��	?�����r����k5}�l��;��m��*@���p!m_��?,�a���j�ì�����pC����;����xb���?ixB�j[)v���g���<�`�3�3򥭳dh0|  ;ǯ��OG�7)�.�be��~��z�pT3���ZFIį�녶m3��E��
g��ޖ�΢pj���B���e� �6�]|U����1%\�p����V�?��w�s}��(E�)8�#ln�D�+���ʚ��)	���_>�6+�=A:X�idܛUԗU�C-m��Fywk^�hC��M��Mx#��g��[��z�q?�֓����'W�+���;�S���u�`c�| ڶf���M ��RU�˷W�;�AE|���|h�'���F�*3�k�~�(f_���$
��6b����W��Y�s��]
���F%�B4%6�H�n��ݬ�Y*zh��<�P�W�75�-R��!��9�Wu;	!��vD,�x�+bx*�\@|sMk�N�roƿ/�fUn=���#!`Y �-$o1�N3[��I�oH�N������
���lD�~ [�[��#��zH��E�q�1�$ y�>����f�{�y]������h���%���T�*��T�j2�$o���`-d�*%8�=���	Ǭ}#
&z��/��0��.ݳ�;L�ؒ���TCf�Gj�]FT�oSaϮV��x	޿��	��&���!ULQ�����ߊ�<�Lj0lp/�!b+�G���x(����µ��m�VA��½���P��Dˢ��qb7	���v���&�حK֨w�K���y)�v�Ƽ���Q�4#��aU�j��)ԁ�8�o���h>��ۤb\d� ���GE�|�}���`���ONt��P���FE�߉`;{�(�2�
٣�oB�����٪�m�=I���x��W	�q���I�@�ڧ��l�5�S�p/�Y� ��f�/9���y�L?��*�p�f
Ɛ�s0\�!:~���X�P�V�?R,�k�a������T��+�Sm�	��p���Ok(��{"3^�l�a�+�F���_�;F��e�N���1�8:�)�Ԯ�YW��(O+����TK���z�~�o2<�iׄ��F�T(�^���4��?v���k���:|�e�SJ!?������9�hY.hWȁ����-�XeNXd(X�I�M�l9���3o�yI��TL����5S�T�9�p��!=�D�`�n��Ȭ�Tw��U��C'�֟��:{�66r�,��a�L�\D&�U|�e_�jIM�+�]1��f�1]��
��-D�M�yR!y{��?�#���fT1CvΊ��J���!O�U�W�ܾ��M�i�L
�a��j����V� ����P�ˬ�bfd�T�P�yӎ�O)�rv�Io����E�v����xJ�(� ua�����Uv~��YXj�g��_k���t��e�#]e���{��$Jd>*$ot���Hv���n��܆ŌMG~WH�6�p����    B����ǌ�*�.D�%�9��!�x罌�|m���Q���IIQ�����
���S�d��������{�7͞���c�eך��+$o��xk'����}i[
/|<T1��D��?dxg�\'��.�p�f��������א;;�i�m�Mz\S�~D��9iXNS�
��c��%���p���X�6&#�$�W�8l������m�6���WB�j%�A�çm*�X�D�8��wMP���֎�$^t9��CN�����%��+���zV�I��ߪi��X�aO�U��B鰶sXfpL�����a�zc��!~8z &f�YTxzNt$o�-Gɬ�|e+<�K����U=k��?ig�"�ꦮd���#�^dgZ���,!��rЇ��O~�&J�5Y�_\mEG)Z3� �9d~%}F1����^g�q�ӢF�~���&��;ó��+ Kpp��
%��k;o��g�{�Z�9���2,%�j��OG�%�:lK�-�\�I�n5cq��5t����0W�~�����4��H(�&��
�S_J	w�+I:G�Rg�������.�ZU��&x޵*������9&9���FE_�8^� ;�nW�u_CM,��͐�W�*x�C�w�T�`t�Y��Yj�7ts��#
�EY����M�M��T���n$�-"��:���j��eޘ`�?-
�,Od<Ö�6��F҃�m�<�N(}�_[nW��[f��f��9�)�Ӣ`��	�7���g�>�Z1|�`�$��K'����Z�r/Wx�^���� �������)`�T���*f��b�^�!��$!&��^�i�~�2��,l���/[�y]�O���J/c�rV�O^�Y�2X�6)����;~qӢ�io#��f@T��f�K^�ڼ��3�䫉CjP��e���Gpj|aq��� ���1+�H��U!�dx���\����-�U0;�`ʘ;�؆X�]�f�r{ծ���\����6�?dO�\g�/�(�ZR3��+Z�k�4��*�r��̉F9�y�B=z��ò2��L5e�ePݸ��WU�� ���C�1v�3��-���l�Qx�6�Q�w;�\sp��8������sf���6�}N�b*O�D��s8���?����0l�ARc.E��
S\l,�g��%�Sa�+tL#�{��_�\��W�
%ܢ���5mǻ'#,��i�o
�6Z~V*z�a�*�d�۵�����͎�����To��P*���������^��T����Mt�⊟���E<�T�ᆟ��1��e���|ɣL�Q�l�D����-����L�/ih iM�+x��J'#���Pp���T2o&X�� ,E�m}��e��#�0�`�#7�H����Q�0��E�i�pT���nkKG��y���Z�\���;��G�3!����D��!�U�J8���&��P����@����b1����v�n^�Ø�WB��-���>��*r|��p�	�3��Z�>3κ��@	G_�{2W��ˁ�Jm�ۣ������u�\e�-��٩�"VN,Lq���o�|T��
S�6;�L_s��1�v.�X2�U�� Un�S��Z��n�4@��K���J�W3��L$b�HdV�뭅��n|�5��������m_GH
XA����g���C�B ���&hn�*8x6\l��e�U�K5����᝝��c�F�w3$���\">��1�v�/�!W��d�[fv��v�M�-f@g��חH�v��L�Ct�`�dȹg�vӃ�u�}sE/�p���>6��9�0�|�Ɨ��ۗϤ��䗤qk��\�i<v0\>��pVcU�6��H��ؿ��2�(t�_ے�7nZ�N>������B	w
�mJi�A}zC<.�~҈R���:�.���7q�N�7�=�$�mq>�c?lk��T�RBT�ɘ�[�Ѻ4%'�(n�9�;.M~(��U��q�ĿB	W��V�RR�ݡo�l��)c���T��$|j��i��O⡿Ft�S6Ѭж�È�j�J1Ý������@����p��ͧ5�g����l1�Nڶ� e��5�����<Df�bJ��;�r1���Pk���0f:��$��ڐ���g;�� ˟C۪�Ҳn�r��x�*Ƶ	��cL�^���l.���'yoa�1$I
�c��ga2COJ�
��Q����T�ժ�Թ��>��R�ь-��«P����X�I�U�Zm�W믳VX�b��Rߤ$ÖeI[!Í�*��a@�z�6�,2|�x�Z-�dZ�[6ʥ+�j��͜��ԀP��ަuwc<m0|`h�lW?�2�p��aExVk� a\{C�I�v�B�I�t��/��ɪ�<��P>�
��b�ݬ̮�Z}�l@B�Y�lj��d���GTS�Z�4��R=�L���Zm5=f�Y>,,j�����ǘ�^��f�K�I@ƵWR5�R?������!;��7|�S�{���;�W��hB�"��@�1���'�}E"t��I����:*�8�6�9��5
[���ݴθ}���$%H�x�mCd�Q@�pϙD�n2Z��b�6���؇Ma
m����a`r��~65�M���eޓ�%ǵJ�5�	
?��;�n�}?�&M���vn�|7��l>�v~�h�&Vd0�� MN$Pۥ9h:���6�~Ln�'��m��/�
�5�}9�N���������iߍ6���K;e����OK(��l�����/�����rN�/����3)�@�V��,t��v<�����U�����ƛ���� �Z��N�I�3Z�Z�V�K�F�#���\��g�u��0�Q�8}��	bӆ�ÖV�
�¡օN@4� C¡��8�"9���o2d�/��rN6��7�d��D�Y���B�+Y�n�L����s���f��G@���� �'5��0,��P�tieq��P�zb�$:4X�㩹�,��q����h�\�Y/5c�ávZ��6�8�y��v�P)�T�~��5�����	�Ew���?}��Ww��-�
!��j��L��"/(Û�L�ffr��v�lE��U�ק-��xa��&�?y� ���j�������P*�j�T����U�V�X���/��3�4�8�k��5�����t*�À=���-�+��aW_'x]�hFs߻ )�Y�` ��c���Hư�����C�j5bN�y�Ge���v)
7K�0*�V�H�D^6��ax�u���(��2�f�K�h���R���`�R�f��P�̔VȜ�¡8�^U���V�����cޫ\6]����e�Kk�,x������\9�硈nﶌ8�&X��=?�{x��I�m�FoiS8��x�1�b������m��أB,�#�Y��yl5G��?9�FU<����` K��Bf��e�`K9�������3!rC��3�ip�Q2a|�2F���Z���,ȥ����$��)�;K��*4斘�J6_�P���*7o��)j��կ�+��¡v(z�Jɰ��@�����mu��"^����R&�� ��lm ��2���yCQ%,�gZ�V������'K�.�y�zu�4V8�2o*�w+��Z3<�g��g7dU�H��fq�a\R�p�M[c谐�b���̦�ۯy\�,m7�xK���޽B��51|��v�aM�,m�=�^q�%H\le�
Lu�pi���lN��wo�zo�=������6�}5�n��sil��� �"6�Z�5�(��v�t,�]W�V4j@ۯ��̀C��.
6�z�[�P�-�p�T'�֜�!��:Ʉ��=,,Ͳ�Y�%x����,�^T�{3�+�%��w&7�S<n�������M�V�EN��v��6G���	�,�-Ǻ� ��$�Z�x�,����P�ڹ���*dU�^�di��}!1�.�i���u��gy�d3iw�)9
�1���Y�x��F�2)����| ��C-����V��ɡ6��F�%�n�Ir������v[�H�a7.�7l{�!'�u�����]}�OFs�n�f�旑�,��:t���~_�e4�W޸���#ph3�g�_�m���mFڅ�cw��f��o�    Q�W�ϲH�8���u����q�U����2\�X�KՉafX���~��֭Q)��\�����iПmڝB����_�+�□����Z��
��eX�r�ؾ�P��c6�����=�+�g�*��_�vG�3��~�c���Vk�V�Z U�w4�*��-o�φ�� �3���&HQ���Pj���	v܉w����J���rП�`�ː�J�%�g@^�ɡ���������#��b��$��mh]�?[d3{�s7Vc���YIt�����X��Q��I�9{���V��w.��Zv�R&��`�^�6��ڿ�tc��+_�hV��xN����6YDT�itŖ��@���֟�hVHS��B��f^X���L|NUy��0���ʧ\�C�����I|�b�6g���:A��ba�5�Ý6!N��4a��"t�zu�!4�Z/���f}X���Ǣ��P��ʰ��+7�n�v��;�:_o�	��f���
H6�9Q�Զ�L��Wd�f�?U���s�)ܮ?_b���,U�|JKf��
s�i���rks��	V���ƦM��aM�Y��ტp�ʶK�4'��c�v1�D2v��^����5/��	Uq���;��gʲ���e�0�-�B�;��!
��%Y8��$���E�V��_su�ϴ�\���嬿�D��\6y�	����l�f�~^��[U�2��w�S��ڬF>���ٗ4|I�t����!�� ڰ;��X��z!�ŝ|�@�͝p��xΦ5���k����z��$g�N��L�W`��T�f�Ց�T�"��rn�Μ/�v����`�=��-F�n�/���6�9��*��z�-�{��Z�����8����U.�u�IbxŮZf���������%�<u��e�.x+/%u��Bh����b�o�����aZ&�}ZL�*g�0�Z�nZ�:�(����z���N,ha���8�̆��0�e���ӱ�21���չ�?��W��X�Ķ+ ��OJqE��p׉<��7T" 	�U0Ǫ��$��������4�����W�s�i��,�������~��y�k�wy��P���2,?�W6��;uL�I�@l~�I9QD��\g��-��-eY�b��]���"��?[�F[��<�%����ΑD�Ͱ��q�z�XeͰп�ǀ }�����u�j��Z�g[�y(F�˚�'��^�#OG�Rqf������ ���4�����T��a�����Ӎ��vRXE�Ƃ�l���1Ѵ�X�Qe�8��$��s٭,��.S�O)���ʦ�]m;t���#��ɇ�Y)b� �Y�����=�fE�Ϊ�]d��M��6d8K�v���|�r�[�Og� 9��s�k$��?ih�\YQJ�$8���6`�21��*11l)0@j�r ��m�����
`��7mu#W �l�k�����rY Q�t����j�\v����'�*9��v$$<��3l.S������k�_Y���]���@�1WI�VO�$-l���N�)D��I��_'�X����?�����݅�ɦ0s�=|�۩�6I�]&�>r� �#L=�.���4� 7�B�M)�FDx��*��3Q��@3�g�>��ǦyI�'�@���i^r7�l�0�,�)<쐁���_@�)tt�x�����:A6d ͊����Bj	�E�вK'(B~�fSq,�c�Xg��I�vd����)@A.{M"N[8�zl���[����of[��i��mi�E:�M��t=f6
��]�QM��I��d} DO�9����-�.@��������9��A�_0��RR��5|����^�ǰ�Q����2�^�T��2�.�=�7ۼo��k8Δ�ɓ[�^�תvK�W�%�zC����|P���z���;=�iz�aOf�jM,��@�ch�*�;A-X�x�� ��nB�rg���6~f9�aݨ��!B�}!�!�t���ɻ�6EFS��e����ξ�����a��F�����^7��]x5Rװ���-]7Q�=�,�R-�����b����a�����*(�0D����5(���e���2��KQ��VI�s��y����0U_��&�2���#����o�Q�6
e��l��uK�)SQ,���H	�.n/�"@�
�*�G��	����a�{:��S��#Q�{���!5)���h�.���%��Bf�bS,�%��E��Z/o5�}�|����Y.�g�e}��P�{F�[Z0b�B��g���4��Ɇ}�k7�m��"t��p�h^
b�d��Iq��h�r�Z�{��vk�A=<,��k��ǪY�E�����FLzEW���}��d:[��=*!N�$�r �u]��� K�����ܓ�^^���$^M6�qL���˜wp��#B��%mr6{�2��jRgP�A ��������"7wGS=*��=���7���D�̟� �F�mmMPޓn���5ȸ��Z/�Hl�/.<b ��¨x�h���O�G��J�d����5j`5�]$^A}�1ﾟ)�Q_�w�2�NQ����|��_7�3J��6���Ro_��lӯ�ڗ�k���G�):�#�����k�s��O�Z�w�-.�� l�#t��&�.B���M�h��S�M�b6��l$�w]n�i�{�w��2C�kWg=��0d@�� �3(]Wh)���f��kZ,>�M�8�~-w�j�y�.Gp�.w�p#��3䇻U���P�D��y�x� lM�N�*x�� ���w���N��4�O)���7<bIZ)�6��M/�VԋOm*��.Z�]B����0\uoD+$�)[
���E��3��� >�~��Q�f��lU3�#����Z/��N
9��d��M����8
Ö�ػO7Mze�X����	��?����'�6��
k0�{W��\�Z���襭ގ��B��7���VDǗ�N��/É�~��ɔ����\v��J��U�E;�İ;�W�SvJ��U�t���#�`Odn�}��cY�]uw��QY�H\<�Q,?8�� �vU\`��~�ӕ�U9>�����T �*����G���D����G	��jp�"w��Użf?>�?.~���0���j������J8
g�ƤG�k!��.��
XB�}|����v)d��f%�v�ir��f���C�k7�o�Zɽ���]�<�p3���>:��ZG$b�=�����6�b�t0�x-���â�)��ך��k�~�'�c���"�2ks���sQF�uub|�I4�"�����
�Ɗ�kA�S���R��25SI��yU�=R�@��cؾ�����r�1�A֎�V@ʚ��CJ	c X��L&�8 ?��V��!*ZЦ*+[����v5{�mם9�4��L���'Юzx"*pLO��ka�u��6�}�2��aB��p�#z��w�R��<b|$�/���UxO�ӵm~��8>�Ƃvu)e�ᦑ>]hW�����u�:�j�e_�\y:�L�@��K���]�aD=u/���B�:�q�n>�r*�-���Z��5�8��nH^.eG����cKba�x�9�A@���l���K����y���0��69��t���7_M��E�{���X^��u�U�iÞ���`]���L����9L&���(��0�°[��5�D��`:��m� Ó�_�>)2��=������<+I X���Y?r�� ��m�B���������F���ZMUk�x֔��ku�*�T\ɍ]�P��;������k��}'���}�Qg��#=�IgO�IhWh�Y�	��]t�'E��uhW�~
X�E���p�|r���}$��lY�ͩa�M���=�����s��
�<M?R`_	,H���9%T�@�n	o T�RǍ͢���!{�
A��c3�mj�Cn�Z�����tK�4	��`!������v�$�ho���$2yh���b����꣊���0l3ͺ��|-ǎޠK���F÷��_h��1<�FAf=>�[&磛w���*�A/��2Ȭ]�Sm���cAf%    h	rr�-�A�w�!U��g2-�+'!��}�Y�-hgxܝ��@f���->y6�sm��z�W��$Τ�6�Y��O������y�iz�4*Hb��k�w��h�׃��hg*R�#�r��7��J2�C��Oъ�F_��ދ�k ��=.�����z��U��]�"Sӵ0vhA�P��_QA5F�h�f��V3��e�<nl i��c<���53�����u�rt��6��]��a��u۬�+�-�?�v�C�ƷC���v��a��p��k~��]B�1�hHZG��M�5�s2$�����%�'�����W��M��I�]:�AT���;��l�&u�Ђ�.II&'���K8t���Ӝ�dϽ�Uw�� ��"[(�fh��g @N�e��O�;f칛l餏$�\�E�NRT��o�pǨx�Z��)T�⸒Y0���uk-�E�V}0�و�gl�#&�m!����րE������\�?Q��u	(��%=�r�-^0+r5�<<�,��5�h�y:+X �鳤}dƍ��>��4mǄ��[I�(�+��纆-hg4i������l
RZ�$��ֈ�}|���[�t�+AD���Z]�۵l�+Ћ��㲌6�o՜����i��M�9�����G�|�$��vKns "*p�+*`m�WL\��
����)@�gCg{U�'�4.�+��s%�� ��b�Ʃ�'_�w�ޕ$@��w�Xs�@��O����Ui�l9��!�����.ֆ���tn�`��{�2�U{g��j�>��X�s�VN��RЮ�� �ҊG>p`��B��D���6Z`z��;�`B��{��54%�]�8�aT�.ؓ="ñ������p�IY�cUV۸Z�B9W��<ϰ>�͠��*�c��x�a-����Ɔl�N�Er3�P_�忻}�G�wy�{�hP@��cX1�t�j���1\ �=BKn{�;U%��9��K���`O��(��T``��8)w]�>�a��9s:ܙ�� �c�ԁaWW�eÐ��'E�zh�)b^M���w�l�C���:��ۏ���|��if.�$��%��2���,��)�{R�q��S8ARv(S�9?X�j`
��Z�y����%��2L
��YY��۹U���Ri9��ĿVg��h�aX�f��)l{x:��Y�����8�pC�rZ»������I���6�p�����L�vMS�=Y�|*���c0/B��_���UW#@l[�����lA�b�ِk~���r��V��q­Յ��Z�/+g�l3� �-�c����,ׂ�ᩄ�7}J��+G=�9.0s�Q�:R+[�[`z=�z�6�&
�C�ȩ&|�Λ�@4��a����W-���_k��FQH�%� ﺜ���=�Q�Tl�+	0�3����L��f��ß��b9�w���5�
3#���ep2]z3�Ӝ�`?�t��]"��R�Kj��/���T�wa?'��� ��+�ˈ,O��2�I�	bb�v��$M��
��p�n�^���*�rXOD�ggؚW�HI��s2<�Ec�h#1Y�u9���.F���g"�]��lh�_������k���=�
��+�|)�R��X'ԝ��#����ǃ����[c�����ۿ�_�V�Ã}�c7ĚXH��G��<��X��=�`r_v� ��2��2<�T=����0�xݐܦ�<�r_�'�y�τ�@�BH�����Vc�[��4DU�{��
��������d��*Q�FZ
-����RVlwS�qM��&�{Sd
����Ě�Z����2�]	� Í�,���>�Y�m>�>yĻ���'')�[)iu��5����/�\eq�_��#ќ*��V�3�V��ypl�[��&� ��Њ�����P1W<H#�P��(O�If��P[�x�?,
O�^@ޮ2�4./[e�{oٍ�qd�D�t�)���a��w��)�gM6̱P������0��ɯ�8E�I�V-Qo(P����#H�;x���nēB�h~�����P�{H�_{�w��_5�w\�Z]7UrlUD�'��+�m�gwn�Z]��A��Oq��*�v>VPX'���C浾'�D� m��~Z3�Y�O�Y�`dX�d;��37�	|��/��B���	�uq����������&f�%�sc��7�*�f~P���VRL^�n�����p�+�b���nA�*n�QG#��q���OLP���D@�����#�&��� m4��aV��s�`���J�r��՛��5V	m��[���8-W���p��r��N����oC�߽�.GA�7ɔ�bz��N`�l�vmL{�a��iˮJW����!1���kAo9�.tu����׫�ZC���pc�����;]_�D��N[)�p�����B���R�;p��5[�z#Lr6��v���2����5�����t�	RW	`k�.���۲��ՠh	�9��'So�7����i�������p����ʶ���{���h!���eF�+P<TU���j���c!iU�G� ��'�)�"�K�8��ְ���+3��Ʋ�	eѶ\�o�X��y�a��U���T7���l@�����n>�H�'ԹOO� �6�������F���0>�\<�0��dGa��p���Ym��<�Z/�WiA��٭�*�_o{�ɬq�YHP��è�s�;�h���dmiI�^��;;�B*�׏*Y�[�Y�"7M�¡��������U�s�^o��󧩼�nR��*х!��-��7�t�l�$���L�_�
���ut��S��	-�	����KI��Fcr�Uft?) �e�&�˩7hÝ���x3~�@�{��U(�Җz�I��z�+L�	�c�q����c�`؆��\�M�^Df�W�Ylx�C�Y��ܩ�n"T�"�ރŰ�C���
���n�T
�����w���h�.$���Й�W3l�e� �+� � 2�*�������辊5�ˑ:����{�� ��'��fk����j,��]#����r�nmL�`�r6��,�α��G��F'e�m$~�`��Bn�Zw�7���@ [��`G�IpQݹ��.dc���y���x�#��v"B�Y�VC��i��.:��2*��0�&����9쨉c���4��Mr�P��&��I��m���f��ﺭ>�߅�����th�y��;�c&G�����Rx9-�7��p�ǅ~�=:�.���ػ���K�`B��TAc$��W��)}��8��%u�p�*g2��F��P^y�����z�?	�+�T|�2[l��.۰����qwX�����|6�k�Ⱦ�'�����̂H�d�m�K
A�Łq1B��$��ږ��_��f�����޵�IT�7��w��9> �-�l'vu��ޖ�0�WV�Ѓ�(�^���n�Z$^s��m���,^0��9��>�bV�^  ;7d3i@^�WSλK�$Z�����ؚ����ߟ-���p���]���T�D��UD|t������e<�\�^[UL�!j���ha���$|��"8o�^�aD)�֍���#�+ɮ^�]{�͟ɣj�����E1�>�:k]�޸�G�{S�yT��|$0�p\�d�)r�.��{YBv�0��3��3���,�<P��{x��i�w%E����\兏���p�����}�#�	FR�<\���H%���o� �Ta\@}{$w;ݙ$�Uk�}���Q8\	-��$t���`�Ƶh*�!���T���#���Ȝ�s�H�r���Gqa$��n��]�x_·4g{�Ks&m��0����iQ�pe�}���~�\�o�{$��TȾ]ƫЄ����ХB�^"	�{-�$�^1�:3�,[��U���ތ8r�2"�>��^���]'�$�(Lf��ڃY��_h6X��Fgՙ�� JD��H�"0�l��g��0F�h[��$�y�Ma�
��mF;���y1%�uX�B�L���'�.v��r�	q�+*�E\ZcVq3�A��j�Fqjyh�멯as+�ꚣ��ot�o��jm����xق���d�[��8�D`�v�]�đ�7�+�'�8�WP*�v�w�d�f�O��o��r&+    X�n�����Ud�����K���۰1
,)�r{9>��U��WT�1ϑ��D��0�f�����H�ӟ�P<�[[��yO����
s"j�`�X��*�ΐ���L{#��TEV���Q)2xaX����a��WL��ja�\�-��]i2�j�����Q3�fx�U�U�v�������B�qg�"����r�-mY�W���4+� Z�!�<d����NK�%�$����꺈� è�Ĝ^�>o����JDomx),��'��8��VvFr�qW]�,���A'Q�.�ٓ7�-W��蝡�չ[��.��<�7�'�V]얷C���^x����n!A�X���}O,�\�
�j�nY�� �c�p�-�:'��5��Z$%`�"����\����t��M�>y29\<�bn̓{	4�\|R�D���a[}�E���&x�z��C[�ݱ7�'���f`��/t�B�H�E�k��MC��,�OF�q�;���,��4�wƂ�,��:��/�r�h_lUN�D�/ÍJ���0o�N�a�cK\�1���K�����qw_�N=b��L��:���:�"�OaD�]'*����x$U7��r[ڗB�+�\1D� ��ϔ��([�*�q�VP�<4ܥ��	KJs�s&볿?�ige��C�4u�wQ��)���2�r���Ky�+�讇Ia5!�]�+g��15��r�z�st�²��<�I�-�~+��j���ծ�Zht���h��N����ى@��s|nT���m"���"ߦj�V���.G�2�g��6oe��P�A�D�"
۹!kR��D��Iu�#^��e5��A䟔mXB�(g���W�q	���G���l&����n*ƙmE�W�*B}�Z�f�@c͚aCK	�YK_n}�X8�Ǧ�@�DUΛ���:l��
��{'SD��r�R�}9ﮁx��f�\ �=�pE���G�/W/ZE��m��k+���ٕ$�C탟;͌C���hؿ;#Z��4�8C��Y2a�f^a�����}#Knv	�ʊO��Mŕ���Ğ&��ZXf��c�w��P�~�W^��ؓމ�|eAPI����̮OhL��Sˈ[2v�j��BE�T�� �����΍�!�[q�h�Y*tJԷ<H%[�����߃4R׏��.u{��Nu�aP�2����tػ_<����9>q�����f^3Pқ����^�U�ǄgfX���<�Z;c#	qm:k�1��'��Q(�6�;|��.OpZ��"mqm���ϟfb�$z>?���t���֕$����q-,'����|�jt�u���&�	qm�ӕ��6ּ�=�:"�kO43����.0צ~0��)b��h�0�:�h��f����S!��ΰ���w��JK�"�M�[�w�6���pk!����5�0�56����z(kKs�V#����OU",'a����+���*o�+�t͜`�b�V�U��_w�{�9r�_Z���~UT��=��LY��9�l�	�Z���W62��Z������fj��v�
n7�`�ַ�ѽ�.>��'c�S9y}V4�,Rj����q�	H�k:#Cs��F��Z���~gS�RE1���H]g�=�I�����R(Ԡ�]����[�~N<4�.-�
4�g��G�	��y�7����x�i-r�e��֥�?��6:�~{T�e���!��R�`U|�Mݾ��:w�F����H5sW|���$ _Z�C��/��ө���6	�茏���l��˩��pu=���[)��*Ҳ��A]�ɡ7��T`g�Ԗw�P����ɦ)o3�|,ѓ��vX�#�y�r���5ؔܓp�6 w>
V�E~�oł�G؎=��6�#*vӠ��(Q�Q�?�ǟǀ��Г����d�@­����qEk�K��ΐ��8�E2�Pb�H?2�Hw6->��y�W�2lkaۥ���p݆Jf;�#�p���<���������
 �=�q[o2�l��f1H�G4�$��Z���d��Uq�	t�b���
�ݦ����*HqTHݙ����0э$�
�) �^�IA�CQ�=!"�n���)�@�;ܞߢ�JHD!�=?�m���U0���������
VX�ΐ�NK*��r2CL�`M�c���:}�8�[x����Ud��K�12���n�B�͌H����X�.nqx�	�-��������%�$��@��/�;�ΫZ��u������ش�A���mw2��A^�r�c�_��)����4�;�1�\�?��]n�����*�5��;�d�6��r�a�ʰ�	LT���1kFf�Y������~�����{cة�4�{jݸ�]����xvQ&)�vS�k]=l����3<�n{�>i�R�.���с��*Q���JD�����7��zx�I��n��v�\��!(�����VȰB���35����=B����,TD���Н�Fv;�z�u����?<��.o
���.������\�X봣��;�-p:��zZC�8�����x�f%.g������ygS@f���{�8ݭ}j�,�a=����ңF����,��&Q�Nw�9Ƭ�p�M����&z8��m ���\�<̺��.�����v�9�� #X`>5�Ef�!��6�L��31�sX�X�8Aa�M{	�F�-d�0�~/=:���0<١��j���̓��v��C\�3� �P�T��.�1Tםh-�:I0ၲni�y��u�k3�����_�H���n�:mZ}���K�(Q�߾�|�0x�5��V�z�u�}�2-|�m	�������Y��=	��8�m��?�96v���u������]��k� � Pv]\Ѯ����ewh̶�΀1Ñ�K��ˆf]�����̺;�}��Y��]�f�d�y�:�I8���'��(L#�k��Z�]���������*��HO��ue�ئ�5��!�,��n�APv��p�$n!KeWܡ�y�o�*^�)0z���c	n��40���ضyWS�h�x�X��B��רE>�]�c�n7r!z�pw��{�����=�I]A8�j�zB��z��x�](�T}*�\%m��^��$]�7]�_옣����D�fCͮ������� �)K�̟\��OkT��Z�{��E�kE�o7�yI� �V��8$�t�n�c���K��d_�
`vQ����O�n�;���&&������m��.ڊ����@�:�e5e=�{��I�z0��ֳq}l�N�A`�/|�#5��*��~�� z60y�	J��E��A��0�a4�R=�1%S�} �:)e&D���''����J�;��WT�.��ۮF7�T��N斺2#) T��۽�#b8�6�=��<���Q/<�?�+ ��t��hEH��׍�p�_2���ք�����I2�T���j����ʤ+_��х�#P��|����I���o'&Ѩ��%�Le��y
��K���V�(��Z�_��6�턌�IK�����2��k��f�j�ug�=ջ4<��$�9æ��0JSU��H��|���[�{��o�
�A�X��6�.�z��84K�=�F3�����kAD�%��7�k����"�{i�=�����o�`�F�^��j��az��g�զp�&fdX{+�{5�A�]�Q�ڻTm���;\-�5{��N^����z�v��A���:�+?<������7O&r�D�dD@�]�:6��(+ ��N:I�#Q��|l�#�)��L M�'��
�'*�S�V��Q2�K�4�x9\��oJ�U��C���P����lZ@f]����0�/�zVy�y:�54m��S��-�;�h���C�*JF�|Ň�J��Ի����o����H-��0Xn;�%}�oۣ�a���a�˳vR�g�����]�%݁���%��/Ƕ#DS5�:�Ǭ��;���6�V�3��C0�������)f.-h���n�T��އǖ�p�h&ڬ<�-�:�a�L|t�&YcK�k?$�6A��3�C�i3��{���b�~T�����    ���ҙ������iT��%���F��U6{�����a�����1kNk0�^uD/�nR��S�0�r*���}.g���$��v��� I�\|'SL�G� �M4>nl�vC�nf7������b�#G�q�+_C5`����7�������f�9`
�%m��/dO���.��2�#������I���eF��PЏ=�x3#D�zc8�i3�)ȧ@�����21E�����΃,a��ZT��B�M������_ΰ�;������?�4= kf�(�i� ��n�;��a�i��H���H{D�n��i�F��O�;�����&����\��?��S�v�^TO���@�R���Z����?-�^���s���b^B��;�v�����rd-�ڭn�L�	D���k��:�	fS�2���
�=@���4S$�3�Ί
��y�[� 
�mP}�J`ք(x�w}�n�X�����C<8����,,�I�d���&=��آsޮ-l:���Z�}Հ�0<�Xr�{���;�)�6�� 4��?c,Z�����GRm��/Wn'��ǽ�i%�OjE��D����-�����g�,�
��)UF�k�ͼ'T�e����AI`��]����F$�$��-�cU���Q�{��>�b7���
Z�-v��)7�;��d��o�bb2���������:�c7��)LyM�#| 4H'~9�>�/m��鉮��>ݐ���O��TE���n+��dZm��ݏ{*i[wAÉb��N%*��K(�ኤ~�s,�%�8�̠O��\�|��i��*`	o��YK3�d�DxM�Q��֙��/���V�:<�O`&�A<��Khr�1\ wp-��R�(P�D*Zal�iO���c��/Co�D�/:h�MI�eTH�a�r�G��V4��@���{�)t�>Gh;�~O�0�a;���p����6� u�0���>��͊L� �B����D94�~��-@�o�`��5F@���Ӻw��Z�4 Ba�>�8�2i�b�_M���[�c2iÂ�k�f���h0��:{�Jvs�j�>�������(/��a3PEO5��n���y�F�0��_΀Zv�v��<>�������4s�T��GQ0:^%��53��1f��v̀� 
���{��E>���W�c�x�Ƀ@�D�*��)r�f�a^W�9I�l"0w�4��>%>n,�l�8o�r��@&�P�r9#��}���e"8Tߊ^R���F�1�;�����ޛS�uEg_��%:X����t�%����4t&���%�X�R�L6� ���#{��u��*M���4�7�!���\L��U�]���y@��-h��~g=-{[����a#<Y�I�`F`��[,��ȖD6��>E�5��޼tL�u`��6GE�:�b`�&0df�!8<5�jFoZ9`��)h^��0q���mY	
B`��Z��9�.|[��h!���?_mD�b�z���[Z^����7F^�t���Kj�+���?x�W�2|�b��p�-��v�RR��^JS�&�\N���袽� �-p�|�Dw�[�Õ��f�DX��G�����Q��p��N)D��BD#C��M��v����N6/�Z��'��uqh��A祺s�;�)�Xr�j��}��.#����$�]'�[���ٿ����Dp�^�Bn���K�u����@��?����oҬ ��p���*���l��P���O%l�u�����;�_g8~���f��?w��$�"���4{�_ǚ�8~Żk����cӆb�b#I����~�C�P��a��(�5�#B��/����1:�#�l̳;�lr��ź6����1��WTqxcI>�L14wL&�s�s���nE�Zܪ�U�}��aZhhd��g�J-R���"�"�ϊ+��ګ6�
���c�R�?���]���0{L��r�KÿEk����O�=�o#����Ubk=�ڿN�wʱAl��s}$kx��_��d6��gbxJ1A�n6$�}k!�K�i�&� ���e*g�}�^{�#ݻ��
�.:�'Mc6�d
{2���5��pH��m���_�ؤ
!�4����jVw��w�ZI66���>]A�}c�+gs�Q>q�y96T�C]��n?`�pW4��,@!go���S�T���<�X�z�<�Alb�e��%[*�;N�.v�ξ'žh���12��杖멱�H�a�A�
�*���r�W<X�C�� Jd�����
�.ټQ\�Z�dy��[+���}��i����W�p�x?lR��Ww�N�5������m��6���;���E�b�r�޵��=�H!	ɓ_�(Ee�DazW���x��&�4����Hك��#�f�@mX�es*�����^{�-�Fr�����2D���|\��ku���yļ��ߌ�OS�Q�Z�E��J�K���A*A|��z��sR�M� �Z`F�����U����ݢ��H#*�ְ5������I݂ ���T5X���6�I��b�Y��4�u���A�g	~ٹ�&���fo�B�Kf�_�Z/�[�]�C�#ܪ&��b<J_w�A�Kw�G`X(a���?����V0y-r�*~{��m䯬ƚ4��������k����a��6�)��H���͘l&���1����n�Y�9��,o�_���c�3�����ƾ�cA?�jNAl�L�
oM�{$������h��^��]��n�[����؎�����
=f`�3,�Y�u�C���L��G�͂^˷'tֿw����W��V���2ڎ_�[gX |Xf{G<�.4k��[
e�e���f��н4�����->7��+(�CIb��vK�53�C7��r&8�e���:�m����+��n'��C�]i�
�*(��.�,��/�*Y�o��r�^ܓp
?�RG�q&X�b��Q\��7����V9A�>���
XU%>o�*1<?ǿ$9���Y�ά?�L�l^���N�/Y/)�;�&x̸�Z��2���6�MÕ�ԭ/�c rq��!������c��^�C���D.��3XA�Um?I�K9g�e���u��:OCPvH��8�g8켭�촽ܬKQ'��kѽC�l�U���B��T8��I��&e�Ue�/�ڍVU�B��[��iS��AtxA|��oj�P!�U3�=��ө�F;J���oU8�&�X�uw�JPvYQ�|?�tߪ�S����WPvIC���/�N^���fMLB��VER�M��j�X!�5�jܞ� `�h�>kC��L��`��_����b�z�f'�\'��K�w�7����w����I������ke�5�>ϫ����w ��T�L���Z��\`����@ˈ%�w�(w{��,)�BhH��c�Ȱ;�bv'���
{N�I���W�f*�]�3�Xtڍ��G]A�����7|piԩ��m_�my���ujޏ��;8d�1��O^��I]��a�0��]\����GG�����61��ăj���@x�Ukѝ��,e�yhC�C`�iʙn�@�Q��s8q\�Z���,�'/2;�=`��l�:���0,��q�-p8�*����.�e�۲N��cXk1��y�Mbㅘ6n�Z�	-vCF�KyG���~�!9�]i� �Q���d�L�3�d�M�ܓD��ѷq|�#w������!�p�>�M��6{�pz�P��VӾ!�<����᷆w�������4����vGI�&�$<<��SJ�>o��U�P��س�cc�Bj�N.ӡ�e�T���\&|�����Nu�@��$�%:�G��=��j~|͚B����c���S�`�n[�è��p^��U���0x��p�5sj�l��>e,�~<��X��L�/�aMe��M�'�C�pv�cZ���i���k�"�l0Ls�i�����*_掗�}z?��f�CM�'���Ώv]Ug|�`�.E�P�ԗ�t� ׯ}u�����S��jϖ̧ί�mޛv����k>4���>����~���L�X0y��/w|��1\���    d��=�����Ev��N�+���"�(� �1������e��cb�$W��7O�ڛ��C]Q��m~��.R��~�D���M����5a:]�`f�'k�i�����W0yT�TeFOn�L�_4S	u��{�)�".����=��";��5�V�K��!����!�m����	�A�UeN*���vv��Չ�wy�����k���'��p������te_B�����V�e4��$8ܪ������	h�=)�"��qEf%��K���q(��zp�YO̡�l��ˮ�KX��5<r��Ar��<㝘�w ܡw��^���3�ު��:d� �Uee���C���S7MM�T���-�'kW�T@��٭f��`��T���H�h�[�k���`�vuV�L)����S����{��0��a��'��v{�	��������ֻ�������*�/��@��
}X��+����v݆T��:o�t�=�#�'��;���� '����v#�,0�)̺b����Z�
�nX��r�1e��v���!P�I�����.�-xfx�%r�w���I�ka�a�������>{U
���an
b��f뿮/��+��Υ� �*�ΰ>�l����V<v�V�ޟ�g6�77�v��azf��Bn��]a�É�IqE
C>��hs_X��p�+wO	�����WV�n�e&�2z��F��u�ܫ�t�2@B���`��[���ps|�CE���kf]�O�?7��ľ�1���� �ۮ׾:�A+�rr��J�IVo���*a�}3<0P)��b�Բ��ʮ|��&��=Y�e���J������	�@e�[ �p�:xb�ɏ��L�kp)���w�Q쁮}�=aK[|Cbo��]B�ۯ�3�
y-�O�p4Jɭ �z��H(�t���v|�C�\ w�&��;a� g���H�p���9�M�7ތ�'تI����3�k�RO�/5-8�����&�t-���x�Hw�䊘<����,^����;�fWE>�rðQ؍���� r�J?$^�b*h6����y�J��E�m���҂�{"�d�k�~��:�><5>�.���s���_�Dhc&�Al[�A��۩��A�|6��J��V��]�Ӗ�AF�J����ɶ5�r-u�!H�9X�9���}�������~�}M[ 8�Խ�7e�I|�{H��>�[ʞ��)`x�4Yt��[n�V�ھm���H��S��.^0��,c���;�z�Ҿn���V�F�4���)�)�&1�����a{�o�op
Ù����$�Cm� 5��[C�U:pk�X`�%3z$�٬��΍�󋞊=��ڦ�J8��˨0ԪO�f��0M@��}�j*V駱�<��B5��kM^J(M�x!`��CM����1t-AV}�c���(��P{�(��/������C�A��_��-IY�����E�@�q@r�3/{�[=��PUX���n��v�a!�����f��XڡO�ezQ�Ű&U�,T���;v%��a*�?T���`w� T�bO���0�e�a��_��E��G��L j�ŷ-J��$p�x�ك�zE$s��F=�e��1D�\/�9\NwP�P�]v���1�J�Z1Q�>�U=H�&�`1U�~����֡<�-�W��Èc*2�~�'�V�@ZN��/�:��1V�4R�2\>W>m��J/��?���� ���H���-������Qb�oQ�fXl[	���R�' �؛m�Y��x�t,t���c�� [��hOe~~�k��V�w=���L��6���3��uE�0l:ڵ}x�.A������$<H�"�Q�L9�I�}UtEQ�px�rϡ�uG�嬅1G�4"q&M�Ǌ
�nM���vh�Y����6��P�K���<���������x7����wu�I��Aqk�&�8��(��|�f�7��!��dt��s���F7E�r�2"k�!�ЖЇ���_'IV�9�h�6��)W�"{���ARM��@�?�ߡ�-f�e����vu:�IYd*q7���#��U�T-�$mq�C���U���/a���W��]�)��$Ö�G\<�b�0H'�ݾc7��*]����� Vx�^a������A􉊬�v��A�J"jc��fv�a Q����
[N��{4�pވ���q�i����ւ)�M�����	�����|]+��bE�xq�������m���s]/��Ȭ���#��@�-�y60b�=^QD�}f8S�ڍ㊵��p�u27^���c7����"S��v�˚�Z���ֵ��u��ɹ[#6�cV�Vs�]eաr�f�'6d�����ՙ6�3@��Jxa��yW�=��W��믲�#�ps���lE��C�u����R���
/LT��fjY����ϑw3�lW(��.ׄc�cc�.�@{3�fa�Z���ܪ�)�(�Z�b�ޥ�����
�k�]�Tb��û'�Ë?��7�.j�Eޓ��nJi��Ut��C��zys�.;�+������F��]��Ƞ!�V�P
P�a'4z�oLN�K���vlx9�hf��|���c��huD�Ⱦ���v�4�fH]H~޵�y�6��9�״")���ԏ��>���^��p������	7v��I�Zls)�s���Oe�6�3l���S�1�g
[�rH�=zL�CW�^0¶@�Y�\Ktuo^�(d���u� �F/"�2�^c��X���K7p-HG8��DOC��62r���9��t�G�3�Z�w�$�U�~�=Y���-�e����p�Ͷ�p��0�X���g���L��U��鳞`��k3��®3e+�+��8ShW�p��6�fI��{2ܿ&����2zr�M�V^���Հ�6���(z6)]z�T��&�J�cM�2��_+���f�Jԋ�n��آ&\;���2|�x�]c���J���j4��L�����%W���g2���K�P�s�pA������N�pS=Cmi�s����<Tܪ��i8՚h�@�֩<2��̓L�U�0*�U�_�n%�k՜�b8�Ѿo� .��u
�{��ʀ�Tt������8.:�e�S�'7���!x��	�oQ�7�Ϭ95�[���%�f�q��y*���Ӱ�\�JՠnWp\\�i�NC\�*p\{W[}|Fܯ���>Zf�vk���Z�E�.�TF_��5oYEú�V���Td$bnQn�$Q ���L��� �!QV)�[(]ì+)@7�l;�t�[�c]
�Ͱh�ý{a��P���R�iG�It=�r�4_#%(]Cy�a�%�*��Z�Y�ͭ��qSˀ�u8�R�?�`��n2#:��r5"�gMW5|�N����h�5%�Uf���v�#W�>g��d��cS���r����FD��'��B�JSB��ǐԅU����%��a����2�8�t�6~�ҝ�Pf@��4Bk*g�ΐJ׺���\y5F(]���ʽ6$�]�����b�n����M�*��EJ��|�*��� �_�$9P���Y�ϥGJ ��r�����w���Nl���l�%� �k���M��o�Cmbl�ޱJ	�2�˺M��7�ލ]�cB�R`bX)��^� �q\n�Q�̗�\9��A�_Z���^�(3<���c���\�d��9�1�jo4��b��u�ל��;�/V [٬��s��G���>Ok���'�6*DX6���ux� �WnA�oq����~ݬ1&�f�=hX'+]�u5��C[�kɸfILI�Ʋ��&�!I~�ĵ�e�1mr�p�N�C�Fb�)x���Ո����t��q�������B��N�������^Z�d�E��.�Y!ˡ��O�=�i�8��5T [�X٩��(n;!i=6�=Z*�K+$-��Sg�����V�x�]��Չ��D/��Q��װ^JO�>mt Xh�K�m1���P�ɤ��փDX��v�`��j�(��C��:��V�CC�ྺ�\�Ӟ�S���&tœ����]��mw�� #��T�p��Ȧ�Q���$�JbX!ie�t3����V�S�P|���\�Z�%�2�L{ŝ���]%�>a�Y
k�-V���3���*��d���0z    d [�f�H �H�2���޶(5��aߪ�����˱Ʊ�DJz�V��hb3�<�PwV;Н�g~�WE�1<���4�]!y�����T@���߳|�O�GY�V1��:D��I��[L���ܭ�
��!G���R��"q�iΫ ��x��/������T�{��cd����;+$-�^l���6�9��7Ֆ�ص?�Ӛy���z���_���.��+"����T*a"Ȭ�p��D���YK4�|�h�vCg�Y�Ȥ�,87�[�L!��ӌ�O�n6a��R�=ۜ�E(��2�-T���v �*��S��7w �N5��9}E7��𐎺:����F�}��뗛��5,���2��A��xOF29
w+ �+��mV'�n5Q��a�~1�$ֈV���*���Y">N�$��w��=v��0�=V�^����ަ��rC�B�m�u"Q1�G�Q��/�5iG������3)s����WK:꼱���u�W�X�Hf@�ʖD� ��x5ac��P�4���AH�,[�6_N백���Ζl�?��ܧP��l�{��k��ۇ�IjS	�`c]6�m.T�s�tI�����1���s!��V������Q�Ƣ+>����c8`���<bx(@�ƚ**v��[6VӾ~ݐGn9I�XI�G� �!�T�Ƣ6d�^�W�:o��9_8�n�X�޷������F�Z�NS�t�`!fRHuD�[E�jy����Ҽ�f�EڂG��"|>�D\E��`>Y���-����V�X�Cj��:�H�,���pZ���連�bTmyTW]G�U�y+;�,��1��@�['Ni����`cU)Ϸf��g2�����ƍ����F�M5�`cE�V';�����걥��r����9dܲ΃�w6��$3�$]B[�ʳMK�
2�t~	k����"�H���	r
�j�^7�O
֡O{�� 0�x�X��&9"F�v���U���_W�4m��u!�Ю��ț���i���l �=���n+�a Fs��a.H�/W����yw�
{��`f盜3��߰��:lo��	�*|�9C��ֺ���[�ܥ��n<�-��h�&e�A�v�������u1K�.����*����EW��� ��2����6@�+�Vk�ɣ;�-Z �J�\��G�'1�[�#T�����d��̊���D7D�%�8������h�|x�
2+yIL�<�$��� {��e�O��0*l,�|���������V����#���vn_���<H%�
κx�⟴�k����N ��ʰ����$�K�a�h�yTG�1�#`W����V��$ť���8�=P��j�3ŭ�����f� i�<2znNZ�_W��U��]����f�d���$��V�а2z������l��V��U��`xE��KC���P I��B��Y�f�
���v�_�u#����������ɭ+�J�8ڦT~�+������p���Qy5���B��������5�(C�]��;��MuЮ��i��`2�Ю.=
	�]�Y�Z5��N[�,q�a�.��Q7����gKAa�L��ˆ\�w�xr�����ܵ�C��3�fo_��O��!�W��~759����]���Iy����6�������6���~��|��k�G�U����`Z�����"�.��f�b1W�r�J�-�#�b2�fJt�B��cRh�[��~�������-�?"j�,���W�=;+PT���Nh�D�vP�+tj]ѡp����,>ש�������\��a.OA�	�O��r�ࣚ{)Y*������M��]+�
���|�
���6PU�KHP� �kq��^�?� �y.n"���+�Wv�d�bOCyZ�#�ʖ��} �R0ܙz�0�)�xpb�eFoszh��T��[�;pV}�h;!wՈ�$��6�zSB��	F#1�&��H`O�Mtc�D�d�ˀ����3<1�As׿�jn.u��*�r�WQ�|hnl�|� z�X��+d �\|�rHI���z���O���o��W^�)��N��n���>�����L��I�Ob��~�i;����3���9�����j����&�U�n��o��6���� ��J�؍�Y�:�&�ѫ�Vk�Q5p���1� ����GJ2
P���{�#}�/$�X$J���]y�C¯�
��]�t�q�b�X�FOk��r3r��g6�7�
����ޮs��Bz%��� P�%q+��AKT�N6*{"�Q��j	��2GN��<�z�ߊ�ѳ���d�[Ɣ��#���7�_[���*��;(�,c*���Vg�*��%����_u	�'8Q<I�i���ce���@��A�.+~��l9��;:���A2b9��[]�eĬ� �UV[�H~���W)���h��u����~[��#�*
Z�V���d���n_i�_e���l%� �b��y�"��>��Y�a�5~�����2F�ϳ\kq�ʳkӜ =M���b��	�EC��:k��X�b�B���V��fO�$�u�TՏ;�ϴdFA�R���~��OR$��=c#	�
j�cNE
�����g�LUq���x��.j&W^=xcQ-��È���!�_�V7~������|��
�j���
9*����T{:�S��H%v����䡭���K�ftI����Qc��@��=�g8v���Uo�L+�P�a{�)��ΰ��fy(�[w۾D�qcW#�&�5�R7Y�=$��XsW���� �m�ˉ��e�?��
�}����7��!�CM�B��6�N�kx-�U�Щ�7A���C$-#�h�a8�]V��3ʕ��e=Nw�-3lQn�26�ɃT�$��>pmn�d��8�������ӭ8�d�����D�[Z?9�-h��u`�Z\�4�fgÉt�n��v��t�z��^	ؒ�!�M���n��t�d��JΟ�Ҩ2���&Q���W��@fU��Sc��9�vS�U����څCO-X؂�'�.f�>��l�����jO0�i��<¸+w��h孙�)�{_9H1L<��&��_ۄ�"��}q�vUv�R��=���N�N��dL�u�c�q��۸x�z�G����[U�.���ע�͋L����X��_W���\:�{���T��{C��pE��T{�G9o�ˆ��>�����>T�*�˩z B�n\��o�,N��z���X���I�"s�^[�3e�.[�{��>k�6���q�i�zjJݦv݃�����)�=E��"����bJ�2������.�^k�o�����v�[�cH�8^���l3\ҭ�d>Y#WY�z�k�̚S6�)��7��&#� lp��t��'�D#9���>E�<z:O�i�ո��Q�� h+|�/kp��^�c���G �A�_���.�6��*�T>_,y�Ú�+ �M�b��7;�)�5*kxh�hC�����Ick5��%��{j�25�;d�z��h����;��ZCu���:�/�%��ps-�Z/aT�Rh΃~d�7�}B3��Y"��5sDP°���Y
n��&�ai@��a9v�_��ꂿN�Ӄ��Z��#)�ek?wk��~`�`ǰ9<�j.u�5����MiӃ\��$���k�Z������ɭ�|]��G�A�׶T4%��9)���^f-ojLW4_3�C�ӄ�n�Jı�%�t��!��>.���f����嬅q�!�l�n�n��>?Un����,���č��w���-_Ó����k�~��ǖӅ�[O.�7��a��?	;ö	���8a�q����
�:�KE��\���|r7�;u�[�[��؃��|��<��-��|�}����Uխ�#�&q��"���=<ߙ�~Um%&��lYÙm�fcLX��d֋�&;AE��̪n��*�#��-^{ra��i$>��hV�{x&S��--\E,�&���#��G���cG��Ғ��̓�v���IZ�<��W���!5V�-D�zK�k��<H��v���N�3hW=���9 ں���#Vl��yU��b����`�    ���h��j�:B��I����������>�N��$3lq�|U�xnH�F�,/%|����+��v!���Ƃ�T��s�=�izB�/��k������ooE�1��[ʃ���.�ڭ�wS���7�^]��=l��s9:���f�־ ��������ψBF��A$zS������q'�.O�%M�k�K\T�+-�064��
�4˳\�z!Z�+7!ꅍ�-�>rJ_��M6V�L@�|����ô�z��9l�{J���+�7V����/e�Ǧ�ƪ�ԧ�#��Z�ˮ��p����#,1�xHj������sx�^hܾ �bhX̧CM�A X����|����0�"8����yR��q,U��TP{��;j�wr��%���ﵠU�.y���5LṚ����`ݺL!���vHF�u��qw�p��3��Iܪ)��i��<����,�BH���ec:z?S�k�U�����K�v�h��q��
\���dV�=ێY2&��/�n G3w+�����h]�!��F_�c��e���2���}��=�r���NuZG�z3l���T%��+�E9:!#�Ʊw���{�W��`�\@bz(����Κ���*p��p�Ko����A���2��4�M��M��K�B�EYS�b��*ء=�g�(���b����+T�k�zq�|��-t���С�5][5�p!!��R��M$c'�7�ݪ<ۧ]˖}������0����3���# ��Rh�OT�3o����V�u��b8�Je�o x$s�=�Rz[�^x9k�������~Xb6p\���.�s�X�zb���]��V��53��h����6hXz[�yOFP�zɬ01S�����`��q�� ����!��Tț��#�ٸ�O$���n����&x�E�N� �:>�ƪ�*��C�=�|���[EC�S4������>���f�M+��jZ29�P���'*8l�YV��t1���d�Y}�e�$B+"����$0N���2��.7��)W=�˃4��[�G�R{��p��a��� �ڴ��A��bX�8�Ep0�L�D?���"{��:����:��u*��hʪ��L�m)�u7Ǒ�8�F@4��`jz����Mua�&)YMyFvYJvE���q��5�|����N���\�fU<�(��Kn]�OwUl��#�\���޲#�_��:Pk^"�M��z�9�0o�-�e`�>]J�	a{�F,G�������������0�����Ʈ��N9}�ɒ�r?�G���"�D|�U�y�{7�/�2I����v�/,�<"E�\�]��ZHr�d2ܐZ����D�tP
��i�氄͎�ذ2?|��wp"�f�R��n�LAȏ��i#1� 0b�B^�Y���1��lr�:��qj���m��~���P״i���0��Ii�]�`�2��]D�k&�hnzl3,ۖ���V��]�lI������TS�':����0]8ϝ�,,��(v�t��K�H2+]kJpG�ʬ3��G[�^�r�n�_w�r�U;���:v��'���Zdx��]�0�#� �"K�S�|����N�9�K8�N���ݑ�֊�б�|�-�G��4�c�]�ce�!���m���u3<��A�iĲ�8oڼw�Z�OY
U����Ĝv����j��, ��;��Y�x�c��ڳ1�I��vw��#�j�ON�=j�<��3�Y�&��Ev�2��Sn��vQ_۱��p�鷐�q��I/XdM�WS���;�B��ZKVH���Ж7׾Gy=�B^��n��T�V]���ˆ�����'�^q�b�Rb��*�e:$c�D#�����IY�J�5\�	W��+�bx���i�=�gRȽ痣�o�a���ַ�zFT���BG[��'��N��[�ex�M��hW� ��,����ݱ}:vH�*�����4�cg r�O׋ws&U33?�y]���{�Z��Ò'�;%���f^�?t=���jex����[�{bO�ߧ\H<����l�r:��eM��t��8#�(t0��mI{I�6��|_Z�O�$䮯�	e�qs5ǃw���6�Q�Tjn��*�M+~$k�Pj�����sS~zǅZٹ�����/	���N���֨�H�V�� �7�6Zڙ5��a���[�(ÍW3�p~ټG��=��M;�Ү�.��� ��a��&�E�� �M-萉C��a%��J�@�ǯ�1���!v�{��|*
��A�L�8/e%F}$=y�����h��
!Ǧ��fْG�������oL5���54g'��ע;��Wq���:XZR��U��ʩ�����'�A�U!t{�(�FzX�.��d5a��Gs�dd:�#����j��.6Å����ڀ��{����!��HDz*��ۆ]��Vn�h��d�vi��5�SS[/T��PEdM��='��Ѯ�.F���:,	�u�B����lln-1��"�XPѨ��M\��`��3�:��Zv���~0��mL����M`^B���O,m8s�>_���p���V��k�FT ��vz��ϩ���Y���ڃ��ը@�k?�ma?�L�L(�t�wr���Y������}���`��+eE�m��P�r�h3K=����Gmk�R.�MOl:2��P�V�E#�]opθ�Ym�z���̫#q��6��^:c"jn|R��1���'o�Zt���抹UY� b��?�;.~-�S�J�xr����^Z�/�3�����J4��U��V���S�p<����m�}w�]�غ6�L�Ք$�=�m�qva;�j�ķ�k��NW�Zâ���-ޓ����!.�W�P���t���!H���}m������y�i_F�X�e�ݖ
�`iM��z�	���O�����"�����_4��G�lPц}|�g�4(nUk��]v��?���%�'�Ϧ�#��drJ8F��?�
n&�=�{4v�-,���Rc�']�7��|t,N{�x��;�����>)�h����LӳBE���W�jb�	���f�ouPA��?슫,�,���l�;`+�yc��Z���*�FܴA���f�c�o8�+B���� �y4M��'5�\HY>�ta�5����;��\%+���!*��s&�D	���d��vX�5&����m���ʙV�2,��K��ή��-��Z盐�S�}+kOv(C?���K;-)EY����T��6���8�S�	�╏�u����'������e����+�m{|�i��ZQ�����,�sslq�ö&P�ݙ�`ȭ��fe��|�}����u~�>���n�J�X�&þU�u�������$�Q���@�`c��^>����%����=6>E!u����7(�{�m��]T�ἓ�oɨ{���TY l�a�=���)���p�T0,�NWi�;��=�����nT�f)l:,De��о�BE� ����E`]�e�xl܆�W-��d��i꺛�� �U]�XgV�Q�:��K��z�n�V{��l�#�<���u?z�=���f}�T�)�3��@o���4�,b{�s��9����@��l!;\��O]Z()e�M����$8T^e��M���!^_Fj0׆� ,)�x�s���5 m}~*H9�hnb�S��Sg�d��k���j$�����/��	]���ᠯUI8���l�۫���2�8T�+nװZ�����7~g����E�1�ņ}�����B��j�Âa��b���|�_�8���,��߈��2᷺�=)�zOu��d�6�GR�	�*R�o�hћ��י{r*�z,J�V�-�E��
J�ו���>�=�nΤ�mY��&�7v��kV��`8�k��Ӭku�a
�
y����'�VF�Mä;��u��yj��} Ù��eA$E΁�oV>�ZV<I� X�࢚�H\�ZЛ����-�D %,��Ӿۄ�uwp��HX�V�祁F^�a9*�%��5E�ɵhP�N����Z�������Æ��/���`��t�a��kэ��S�}�N�έ��f�z�b    ��"�sS��y�F��i��\��@���w�#	̬�,(O�����;U#�R�Z��KvT�qc�Z�7�z �P#d�\���R�+榺�|N�=5�>^�<�H8iu��D�w���+���7���|>�/:SjT�� �Zf�P�#��/�l�Ǯh[�d�W���� �O d���l0�(�>Qn����L�X�(�A!X����U�2j�T4`id����,�灥�P�ۗ�B>���.9)C��]����o�R�|G���%���(:i��CE�퀹�s�1l����7�d�A�tU�@S�AE[So�}��ʨ @E��������L�U�7?�co�؟���_M]�9��5=���2��{x=���ͳ�9�m����*s9,ѯ�wn�m��lCk���53��=����(�rl���eA����)@��9��>穾� ͒&��\6�=?'NvO��!�혆����rٺ�$��K�r�0~O�8�`��<T`���M]_-��cՃT�P�Q��߯��nsC��NFr:��I���r֢;mHݔDԘ} ���k��џ��"H�N�o�ضV�Ǯެ3Ϛ�YZ1���H���� ���'�d	#��� �9���n�K�A|��Z<( ��'� ��Z�2�	U֞�o���J�μ>��r�x�T����f�XF�U��we����S8d&��GDܪʣ��`��-����zھ6�f�O@!�BC<�>cGX�����p��]&�����Jj�n�2��Ѧ�jb�@l:\��ؙ���`X����q؃���Ywb�B�)+ @��m���{¢+���o���ښ�9�f�ӻ5�FG��^qq,ە��'��3"BM�p�N�&\{�vz�A꺪�Y_d"D<B������^k�#�
����-�����9��tΙu����Y��࿉7�m�	���f�yx�Ro���Ew}�Y��Z���=��(��ĩֆ������*�G�!��s�<)�� S7��� -?�43m$Na�"r���m�h�1w�AӰ;���_-�en��N�zA�%˭(�+�'�0eO8h��a%!��^y!@����{7�21��(3[|A��.�l ��6����|b�ʮ��L� �v�z��z�0�y�o���-� ʶ���B�Y�<ؔ�{�w�`��Mӳ�7�����.J�RX�-=v��h��m.>}�M��W���mb��" t��~�Z���ǟ�z������5�H�=v
�^�f��e-��,��.�R�z��W���X��4�t���au��ц.����t鱂��vj�t���Y�YC�W�r�n��XH��zoQ`�;|Iz�7ʞ���^CZ��褀�!V5����� ������6�\Kݥ�=�(���kx���,�پ���ɦm��b��ܼ[�ѓ�B��s6�P�`ɼ��Ш�W�(BL���ΰo,�.sa F=�Qڦ@��NP��~}>��#d����H�s&k]Ϫ�MBnR��40b�-A��	c0b�b�l��I��L_��m'hqς3&'�����P%����\��%$���Ê�Ú����͍��:��H��f��jK�$Tmqc���K�
�]W<��>6���źax����V��+׹~�����F�����#���Hf�� �^0b�,VD�dl.Gkv�͟b�[.(0KSD:����
�����X���
�32��a��X��OQ���3�VR���[0l�i��!����HWh�!�.��Hu��H�e#��cRZԿ'O��[�|�������~7i�g�z��AW��zF&�^��݃h!�Ĭ��j9�$s2��.���әX�m�ai�Y��m�H�L�D�o��`��2�&@A�2G�w�_vkz&�X��-N7k��Ř��s��UN�>��Z8fXN�n��t߁�����fhH�s9:��̾���J�u�6�����R�k�.��O;�	�������UB7����l�Y�U�@?�� #֋M����m;w}).�ɏ��:���W��^�+)�KX��u���)�hr�y5����k�����&(��I ��#v�%	�H��u��w�H[p8iOf$ԕ�]gB�S�D����k�8�L�������'l������_��^�N ��?v�n�I�A ��h�Ȭ��5$e\) 15B�M�(o�i�crh����E(]�ծ�p�ǅ�ǰV�".��,&�2�w9ɼb�]����l��ޕ�ʳGv1����X�:��~mu��s˯3������ܠK	XÓp9	zN6�3 �z��Y�d�]�P�"ݠA麄��8��!F�:��r�sKѿ��	E��&F2v�ο��G|e�e��5��3�=�`py6cWp\�5���#�� -a1Ë�����.��2aL��)�����d��0�^:à��1<ɳM���N`��G��D��.�9R���.��]�r�d�����E�*-�����6P����#�	����g$
E����g����;4�5<؜=F+��8?�]�i��t�<��I�!�2I��?�:��$I�c���m����6]��ߔc�y$i�)ju0�7���2
M�d����w�j���0��̙�h����hp6\�;H-�W�ln6)zޓ��z�}6��w%�8a�҅]6�]Ci�m����c��`���k�;8�kvK�{�5`��@��_f��؉�.� ��`�V��;`q#D(�� ��2h"{������v�Z"�����������85�A�~jv��L����ǥ��.pX/���~:��=j˃�[����^�keq����֜QI]7��5��bB��צ(
٬�g�#�^�5 [�A1�.#���فw�Ǧgb��xW�\���3�W)�:$>��=���ڨ� �}�wMw�/1{��7�]������vǬ���� ��|i4z$��]3�\�_��@}}ޙ��R��\��)�v�$m��]�lKR����ŰW���l�w�۪��u�E��N�3�?��0�v7����%�^�+*�h�R0��B;���c7v��:e͙:��}�J��ex�n�7�g��$@}���LY҂�
S%�Ψ�7���G���fx�E�*=w��Ӯ0P_T߆r�I݃4�D�������p'��|���2dn����u�Ұ�������Ӆ����P\����{pƢkͲ#;�!����yŴqY^3�3��膙��M6�9��zM:�}]��UD�rK�R6�|R,K��N� �,�͔)�n�/�lIչ|l�#P_�v��:@	|i����j8?���6�>�
J9��k�^3<}@����*�+����"�<ܓ�DJ�Բ������o�Bh�	��������ű�k
�����/���?��6��J&{M���j�(^-T>��um:��dP<�����W�I����nU�R|�k����'�T����q����k��)Q���uͯ�?�bY�`zU5@�^�[�~��ЬOb�������T����>U�X�I�ɴ�Ze=t�D��̰M���#Q�ı����X�PM�xY���������NG��	��/(�jd^����E}�~��'8����rA��Z��`=�)�/��xI�ptf�G�$D�!h�ᝩ��Ib��b�K=��&j��ȲՂ�.ӆ�����7��Ĥ.�SO�*§KF?�L���+����Yw�長�my��q����xu��G��Ė���-:���+Ki՘��pQ�m���*�WJ�I�MO�b��q���IS���ᜮ/�m8^r���&=���I�|g8�p��M�������χ�"��r�2>�$���<w�a�s�Z��G�Y�U^̆���³!}Mn��_��b��_��&vp\�mފ��'�����R��%�u.'Y
{����0�|�	��/�´��;0�pV"�<�an��ص*.��EW�尌V�N&�h���K�R��>�vXg�f3�#��pijny�'�ֹ����c��T��az��Ҽ&�n�uxף��+�Xr)O+V��Aq��z�    � �[!�㞬��6����X��^3+բ{塭�����<1�+[���n�	�<������~Rk�����ӿrc�z9�O�)g�ӫ�	��!�
��]l�A&��*K�t�.Z�g.�� ���C�
i�
[�8�$�\�Z]��0���6*�{��]�rjF�/'�A��ŧ���A:������_��������}����љ>i�S�1�E��x��=�����"}��U�L3M�P��:�g29ʹ�W [�Y�(�z������{���-�07&�+�ѡsX����o�a�x�k-���n5B�D��k-���A���7�֒�-Ykq���E����Q�T�ui�0=Ha厶�ir����0u�����>]�����+$iL���c���y닼��n���ߘ
֢��Dp'��d-��hW�[a^�$(����T3T�`�#�.�$�Z]/���]o�q���J�.��n��7v�=h%K�	��Zt���shx{c;���Ł�s�ke>I6�w�HY��B��� <~܂�����jR�7Ҹ'W9�w%��߬wR6��z��LU�o�)�x���\���֭#V��m
���p����W)xa���D�G/�R�L!֨/b\��"�Ԓ��ϙ��%S��m_]І��z�ʫ73TA�2,��v�-6�_뛇����q�'f�uC��)�1���ꤼ��ى3��sD�����?t�g��1,���S8���w�`|C���%�]b��K���g[ȩ1?�l�V�-�k�azܓ]Է=�)0y�a=�F��s��Z��%{7^����+���^���LY��x�:k�~���Ɋ˪,�;
�\<�P]����T���]��f���ÅR�.����c���<�x�x�������2<u��|= �;/4N��R�0%X�6ӰFC���&���|��n�
��y-J��[Cq�ƪ����^wh�4ssؽ}�1����ʵr%[�څ�^6"]�)��L-�7P;��-�x���;�$��i@18�r�H�j�G���Z՜Qts%�4~YÕ�=a��5�%΄u2�W�����VUA���[�v����l{�h<<A��S�H�K��6%t�l�̱�f8!g/�ڌJ�3y�Mo\����u�`�T�ma��y�5y4��!Rqע;�RL�*C��q�4��xOX������^���p��w�ӛ���?��#��

�;7��Z�׷q
��z5�ݕ��&���sf8��2�w)0^|ם�Tް��~scAzZ��y��n���� �ɱ!K�遬������՘�_�/����w� �aɩ��\R|�C��3��3C_��uO1ۣ�l�wmyn�-x����Lh��+g���V�ıgFq�W�nn��y�+v��~;���?�[�z���&P����z&��& ֘-k�ցw�v$��܌I��FQ�?����t17�x���A�:�KE��g��ƗÃ8w3\��%��ѳ�c��u�V�5�ɰⲪa�);�Jץ�\��vMW)(]�I�ݭN�X��{�̴x��`X�������*�ɏ�?�]�Jf}
{nux�0\xh�k����'������f }Í�0�l��(�V��CQ/��5w+z����jrc���=p��ˢ�KĜ�G��J�}̖o6U>V�;8�S8�:�nZ|4��B������ؤW�D�����Ut���~%Ѡ�Jq\[�|ӡt�м��G�	�k[�Gԯk<���� �ha@f�?��X^
r9w�3\���4��8�`5�X	���=B��N�����Y!�N3p��-����5z#_�Ŧ2�w��jS��Zw2�ș�v:Kd� ������ňU�}��f{[�|���c���t�S��$-rfji��"�q��d���p'��{ğj�:$���)�8�HH!@�zxcj���p!���l�	�V�ݳS�6���CGk���x��Z��|&u�����C��P�CFdVv6_7�+�����j�=N�X�AfU�'���cp��y3�GZ�<�&L���+��m
������_7��G�<5n�t;�,���>�e+2k��I���ߘ8X���e��xs��r��}�i�D ��m�g���;l����mл1��>R���(o6���j��_K����d��I�\K��GYU�c��L���1v6��4��CO��p�W�|;�3'�������O���W���3��������}\g�}@d���q4!�ف`�U��Fdo�`%��&��>s&���b���Í�����>�I�E���A��^z��{(B�2�[5�||p�|Ǘ}�l��lGǰw4�#�&u�]��2�AP��^+w��vo���B����)7Q�f[�q����)e8��N^�VMLxЮ�+\T��2��zmQc�1�ɰ�5��7���PU�� �c��a�c�"x[��Ipl�2v�9�K�U����۬��A��� 5���1\�0��h-�=�;��`���Ƀ�Jny�v���ImKȟ�z����Iv�?рa�E&~�ZZ�i�WQ{�Uwd�lcm���h��peġ�����"�s3B��[�_uI"�e�Pz�鬵�pS�M;���,�xVJ�*E�r9I�۝I�ҋ�*$kv�\�}'w�^Z;]�md�rq;�b=�J<����b�����pWb����\�K\��J����U���I�f��	�mr�]تg�]fiA��n�"հX�i�{)�]Õ��+*��?�"�e��[> i���d����c�ʷC/�m���0�
7:�rT�
��L2z6��wuz>:��S(�4�wi��U)<��b�3��@����o��P�!���2��˩�	�nw}��`x v��wfsC�ڥ. ��w�]:�_���T�t�M��K�Z���|�HCӒph0���ʦ~p:�D�v�c�*��	���	M0��T�Ó�><ܒ�'m���s��}��I��������'��ٛ8��K<��������m렧��$�C^���&��M��\+~���@�����~��e�q9�|գVpTr����@ǌ�z�t�TV�PT�J"U�$�' ��q�K�ĸ��#��嬅�D?��0%��Zc�P�G&��Hu� IJ��u�I�]w.Se{{�Tͅ���u�����LȺ���k���0�u�`X$�eA��*�>ka<u�o��[�b-��U�a*�i`��')�ӹ�i���'���,%Պ{fx'yD�Eɣ��Y8DܬO�4�����%�;������G%�a����-�x2<yb���^���Ƿڡ�� {���$-п�?j��(L�����t�Pw�TU䄞�<����_��ٚ�����+����N���~D\D�O�(,��/����[�*j�I�q9���� �mލ�<���PU�� Tt|�\e���V:Tt���H5�c_W\꩕��C+6�lF�>��A�WU��=q.�����h����2��}LD��d���hd�s�Q>L�?v�~�H�.��6�~	����)ꨩH��`��6�!Ǐ�-�)�,�x���Ç�v�7�[�ý��!�Dk����K�=�I`��z�Em����$:詪 ���0�����>��o�dӎ�[Ul��8	���aL�m�&���['�1�1l- !���15Mc�i��ˍ]����<$l�c�c�Մ-�u�F|�U��Mڜ�^�������C��Q3��h<�y��(�b]B��O��9�c�P"{z�AtD碠c�q���&�A�,-���"r�g��{�k���Y���������c���og����e��F�1����Ɛ��n�ok���p��vyx�6�[9M��2
�R��c;%%`R�� T��ň�I� ؟h����[�a�V�^���Bx3����'@�c	o���w��M L
Խ���W�m{ȢB�l8_�aՐ�6)�0�5j�56�`��3�j�����V���eY5��>��Y#��)P}��m�%���g���>��-��iq`R����<r�    ����$J�6�]�%����I�?���&,���pf�K��RE�\tCC�0����:�1>�{-�_��d�]�TR��B�������Y��x�祝k��Ĥ�~g2)���S���	uS�w��
l�2�.�uU��-��Øz��q�w�_[c<41G�|(e�1u�M��O@r0��|�lX^�3��ʮN�A���i�T�gZ�=��0�B�R�`��� �t�װ���;Aj����Cl��0��=!d'���˦�)��0�J���]�Ƣ�ԫ��n��TW ���g�垰�<��:�Y`R�4�E����v�W��j�#It`R%����s�v�w[�]�	�fX�&�����pG.��o���fr6�s�J�����]�����5����:���Q�0�L
��_;˻0��h��Hw��;�h}�r-я�yH$�	� ��a��I������/S�"	�[�հ��J��L��oc�[r�t�]c�&�y��.e���c{č�f_q�Y�6�R����S���Zl��j�^�r���
��[��5���l�l@OM�W�S'�w�j�s��[o�QD�j��-{Y��k��/�z`�����kDX�"B�O����s�D���U�u�>��@kx:t�>?���ԏ�vF���6����d������:�4�z�<U����ؼ��a��V��~�?S��j� ��G[DO)��-TS��L��.A}3�G"�� ��iA�r|H�j�=4o��f�m!Bg>��X�~?*u� ,�^\�M$#�	v�`��07IQ�v�G�j��`jt��Z���/�UUc..��9���NE3��#�[�U+��h�"D��Z�_QC��)�ï*B=�m]��-~գ�j��I��W�VJ�I(�9$��Fy&�s�P����g���v��>��^_�ŋ<��#5UEE�;�H��IBآw��@���7��Y�'S�ͫ�'�ïIF@Uٴ�i"���rԊ��VE���T���$����n�K���z�j8FE�VM#�Sa����n�e� )����_�-m-�(�hk�f{�T���d����!Re����Ɠ���ġ���������d�2���ˑ� Be�
�8w�$JH.1,�l��d��{��b-Z�kn�!R=J����c٭C�:C�2�j�pVYGB���.֢�K�}�h���LI��%����Vfu������P���AR��=��6V����T^���`@fsa�����,e��0�É
��?���)w�VC��m{[����g���=&ѓ��ae1�v����)��q�7?WhW�0�z���v�X�d4�4��@��^��j�cJ/�^[f��&B7gt��D�3������͞��Ю 
��M���@��a	b��i-��s�66��(��aG=�#d�:X����)iW�rPE�dr�]u��61�Ir9E��[?��qP� ����kB�H�̟��:���~]��,��B~�i�Z@N#�G`�7�4<���ر�z��6�)(Oh΀`%���c���UT��ʜ��as�}(!��ٟ[���l0_"���0�������굋��۩j�ס]�R.x�&��w�]�5�����>�4��F��g<���� 6	��}0�UW��~e/w�V���у����.p5���٤d
�
4�SȸbQ�U����y�k�f�|>?�-�`��pٞS�;���f�ި��2�ThWo�+�aEhW�I�4��v�b-�Wk�R�tŃȄ�tӻo�� �u�����`ݢ�Jx�7I X�a�����Z�#���PR�����U����E{LP܏pfX�H�Ĩ�*W^�qVR[�Vn7�@�t�Ю�@����g�V�k�7z�� ��m
K��7[.Λܺ�OQ5%�{�V�ӊ�nlGC�&��<�P��Eʋ*�a��'b��5d�w���P'�b��!�Y����%G�i=���@�+���z�ۉt
�YP.�[y�dV�_���ږ�_dV�Йi�AfeA�]��K�u��	�k�ٛ��faә���U�[�f���wBA�����6�=���̓��  zT�{O�5��:ÇB���h��Ŷ��C�
�V5�{�.�V�<�
�z���7e@[��_���.5�V$�n <L��`g� �k��0�'��0��loj��ή�-"yrdX!ie0����[�֦]��z�X6��H�ỲR�%��T��o�dX���Z�7n�O�`�
#H��lWon�8a��_琎�i��#�<b4��H�����!z��5	���~*���պ�4F�%��=taU�Y?�[�u�D����^�����7��O�q��Y�W<�����>�5����c����g��q��|�$�(�D.�7Y�>>4�?8.��>	���SOͳ��no��	��k�ۊ��n5yAk���nr잫e���[LM��PF��ϭ��C0�����z,� �>-���:����͌>F�[�A6��n�犭�%^��=Tt냋	]��7���0p�E,w+�H�$r%� ]�����2G�$�b�~�.�KA�*�����o�^C��a�|��^�C�#��f4
Ik;�&
�C͟�1JEo��e�
�pV�m7�a���=�����?k������~<�b��Wم�\ؔsI�갱؟��VWqx��+C�3�#�X��ӭ��a�XE	�[:*='�K�K�谱ֳ:��w!������Y�{XІ��y�w�J�����w�]��bX�Z����-?��$q�'*mȏ�0��f�
��ϝ5f��\K�0#0��QR����Ϙl�!IfXVS�5��{]A�t����-l�j^��r+1�i+�n��5�c�2�m��EۚǞ�wђ�Ҕ�b9Ȭ�i�I����"�Yl�b�'���ee�yvHZ�h�Rx�.^����M��@���M3���]����U��6	�HO����V����<I��/a���cs5$�� �����_��M�y����/�I��w5� ��}���¢��� �!>⣺�"��2�g��?�sZs.lr8v?ܵZ����E_fwJ�Z��f le��i���d���_A��d�b�����Laޓ���<��W�馚�t��|���w9���Kh ��� �np�*�Z�*2N(],*J�n��lP�N+2�m~y(]��_޾�ׂr��>�uR#S�ua���Y��#\�Z���u�aj���lP�O:�!�p����k�#,~��Px?���6c�9�vЂ�A2�e�p�v�*a�|��0�ܣ�k�m��<���
�-�V���,G�w�E��m��U�*)������S�3�U"�kW_S�ߢ0��TY]�e�N ��N_����!i�V��#^K��#���pj�'E�N����B�P_U�9�\OE
���R��#1��X���{V����ꌦX]�/�>0��w0+i�C&�k��� �*�j�n����7Ӌ����#ߓ�4Sl|Lj\���Z��msq�5��xW�Z'(�2�˔���+�U�
��9H�\%�h3GQ
ڊ:S�](��IV/�����i6�P0�YҤ,���D�*J�.����|��Z����R��>�A�[��a�vM��wm%١5T޵�+�:y�X��w%�rل�*�]�
����R�#(],�bۆy�˃���\�b:M��&�g�)0zkx��lU�)��d�q5�֎0���4�:_���=Ę�;^;��m=��t�%��V�+[�*u9���k���q�{����q*-`mX�UP�H��,^4�w{>�t��*vQ������ʆ=��4-mv�6uݤl�w�&�[�*�]�e��]�ZI^�dC�P��5Q��[�򙯡ɭ9�A�jV����A�����nh}�5@���r�Yc8vt#�j1N"'Å���>��?i\��@ㄢ�M�����ܿGL��RΝ�lX�twk٭��?(]aRthˌşLZqe�E�8�#����n�y��3�����yL��
�; ��Y3��c�fV���.0����ϖ>Q��p7[�8%    �42 �b/m*wr���,��(��iT�q���SBX�׉�(+g+_,0������Hrg6N�lm��i�a�N����m��#��ҳ��Ds��.<:I�Ҩ�\���j@i�/ȶJ�X�ɞE���h��a.��/�˪�ifC���(�C\��,�x׫O����a�����{�z�έ�������x-���V��D�ɍ-j�n�� ���'v�v�����R�N���:���E�X�da焯��[${E}uy+�ۋv���_��C@�Ic���ԥ=ōEn#Cփ 0���p6.,�����.H�ߟ��Z����m�@;���os��J�UF�������lƀ�GtW�0�c�r�ĐI��te�	G�j�
�k`H��9s��3��N%�z͗ǰ������~�i^����p��;ʗ)N����F�|Ɩ^��ȭ ��I�W�'J�@ ���b�P���p�N��j�7�r�͗���31M;^A>Q8�K�j�����w�Ի��+�H��L! {4h��ţ��[5�&3̯�h�K�`[����uk���Q�cb�.><�Q�Q+:���ٞ��Jy;�_������7���~�U��FG<`0d�~�����	N1yS��$9'8��T�嬡�����K���R�2�o�p/�
⟔ s8�7�Xv����:�T�=tK���zZwx�ŘFL�?-����Œ�t*V"�Fd@C�t��<��W��=��k�ð�����k9�� ��ɐ,>a~˰�k�ϗ�����׮�\�ho�׮R��!d��?��ݓ��h�'ٖa�k��q����8�6
"D�:��f!��i0���(#jѲ����iDM�d�(�uN�tso�pc��=vqk��Ɏ���A/�i�~@.����7�B���j�
uO�ː���k���ɤ_��d�3�g�aP�i��v������E���e���e�=�\��C �V��J|8y���s4=E��ǐ��"�w�[�yOȭ��~T�M�c�W��|���_+�2��w���h�6>���R��ǀ��Xp�L��1q����KA(7�k�����v`�ǰ>אz�~)<=��2��k-���E�S.�[23�����]&��b�%�aX�,a4��ݴ%����>vmey��Ux:0��>t�ۧ=�aMի1�n�_y!0X~�#��v�g	��'�f %���YP���g��U�>�ʝ3�a���ox�s�k�,�ӧ+%"���W�λ��ݘ!��ƪu�~W'���F�p�Q�2���3�v#�5�d��r�ٖK���:ɢ�����3��(@�k����"�İ`��*5$�->�pR�U5�n���\��*f�����e�������]�=jR�͡�t�"�̦�M�'H��־�\��M�]�)���B�.�߬o\�Z����s�5@�!lQ����\<�t]�p�Xd�;az,Z�"��ל�u�
����H�uuSH���C�(���A�]'�:�L�Fg�8o�+,�_�a��:�P6k9�A?��ϻ�_��t�Xqެ󲀻��,b�(���la����B�p���˶�$5L�H�q��Q�}Ч��֚-Q�E��Xd�yr6qq� ]lr�ȩ��E���a���7!T���o	�t�R
�g�"��Þ�^N|ŏ�#T�� ,�&G_�H�U����]����f�B��9���l劕�K!��n��I)c��� �������T\e8٧���s��`���"�&��_�񛚊��̚���ǐ�J���]�Dq�צ~r'�	ҕ����'��Z6�+$�Lrr��:�;e1���[�;��,�����1�y�����{-#oAU�����[�`lq�����\�~|����X/o=!�0�c��������Qlb8sc��r)\��vIh�ׅ��pW��nY�1�y^��}ZOf�v+��7*:.9�Z�+�a^`3�4 ��H��7h��E)@�qB������"�c(ړ�b ^/Z�}�7=;�M�;�_���7���E��;�2�2#(���0,��m+��k8`$*��Џ��`�����l'�#1�� ߈���W�X�����v���bO=�c1l��+Ea������624sƧ*��۲~�����g���): ��aXd{(A�Ք͐ �:%]���kDS(P��M� ��sK���&,�{��������>�Ƚ����A+�&�7��C�]�#s��Z�,�i]r#��p&�\������=YK]$�6X�3/�Ҧ��e0)�r�0)��y]��=Z&�4�m<�!PxڿQ4�n�	d�];m���r���5�#�����nKU��N���M��UYN��� #�1?��伇N�d�M\P����n� o˃^�k��#��������3������Έ�7/��î�7��x3N?@�^���]p&�4�w]��>���g�M����(G �� 6�t��=(`��|$�.��a8C��)b*�8��`�q�r�۲�+V@��iA=n�t����[�`�bjg��$#�!,��ƪ�r2l4�����l\�.
�DY@c���.�L-�<W����>KĪ��=`��"Un���YA��z3��.��_X�'�	�=v��,��V���a���Q��~�;m@h�ci�^�+�0>kk��j>S�����)ú)~�²�#4�f������6��$����)�s��.͏��<���͠���b��/n��^�]�R�e�=ܓ��R��\JK/=׊�6)��k��*�b[XfX�xhYc����֒i�X�X��u{�B
��q����E�nrF,���'�ܲi������c�����+t�bj����ư ���p3A�&�������	�UE��A9 ���.�U"g�#`)y!��]4y8M�Ha8.���Wb��p���hA���$�IE"�~�4mOz߲�CW���5\-�^�z��r�@���6���m�����I��H�ؘW�ǘm./����"���K�˩&�#s�����nV;��u��q���� H]+σ��t[K6*b�n^��DW�FN�5��� ���+l��p��bQ EoAs��E�N�a]�p���]@K1���Cu�1m&�o�{�F{W��S�*�U]�l�h�h�������g�Uvsa5}�f?� �E�V�(z\e���8vO������0��߈���j^1�U��h�9�������4*ˉ=2��G�B��P��Q]��4[�ݔ�`�z���ҭ�n�Gr�W��.�7�O���g9�Z�nAn���d������p��E�3Q�,�[:ܐC�`ɿ4U��}�A���9n�N���p��0��#��=�� v~��;�ʭƏ4u��;��]q6Ӝ1�+�-�8ͦ�ɰ��u�;L�����B��P�V�Cp]MflF�^1R�k)N렾��3�x����k��s^c�l	�G�I�ω�Էs6�'���چ��P^X�R >� ��]��)<�	����
�Im2�7�N]�P+����"	8��'Kݤ��	���������!�E;=���v;��ex�j�s �a��N
����H"�;���2�,'w���^���Iř$ۿ�7�,fdP_a0p*N���3<�Ŵ�:b3�
�+�4��̺��(��3���n��V��.|ʌ&lwWX5d�ʍͶ�CQD�ͳ��wV�N�2�w���e�n����� ��7���nǍE�f��Q/�:��"=��k7c�&��ޱk����UԠP|\����.�+��q�kaL���P���I� �S�:���2}N���,��/jc�C^ͪwl�ɏ>��������2���ka:��ma��U���M.�%�]_��!=�O�ڋU�L�ސ ��[��=ql�#G�wQ[�k�jL목���W�����ۤm�%����+���J+�XO��H�Ϯ�F����
i���~��׾i��6vwPr/S6�����2�*�Ə�����8��ak�C	�fO�oUׅ�4ɈD��;�
^By�����\�y%�mH`��    5�ڽ_�^ئt�W���^XL��'�|�lD����C��'��ǵW�6��L�f�ᅽJ�3�@׸'C
�zT��/a_�c-."��yz�Cd8�.� ����o��#�)�+\ΰ���T:�IL����s��v�?�k�v�w�H�9��Xi����[y�i��a������K�VR�tp����WW�C��\Q��|MW���v��7��ٽx*�tN9�@O<��7̬~v�*�+��t�i��F[�� 1�q9$�������k�E��_6	T�i���l�~{3�?	�[�7����}я�U쨙��R6�nz�Z��e=v̖ b/�yŧ�'Τ�$n}C�-Ã�f��m��?9i��`��x�K���	j�R��n�/	�%"
�l�k8u7��g8�~l�y�;H�~�c�N��K; �5{h�3�bzhvI�־Ǎe���i�RR5�a�1�В���9{Tls!�{�ɫ�"�����:�ʺ�a��ot��ƙ���:���Ņ-�շ��77��P"{�0���9K&Q��t�u�����ӝ_g�OC���ϖ�Y6�^\�~R ��J�f���?@����!������a)!���d�
I~�y�yc~�"-s5�	�l������ �R��1��� ͦ�y��z°���4��T4�a�|�����R�4��~���͂)�̈́�q��*�ť)S�؃�ư�;��'&��@ޱ��V�I�Ƴ\Q�
;ȭ{4 � �(��&���4ۂT��Kk�5�"��(}���r�kk1T�]V�_�c���%�5\�8gw���b��b�KӍl	�ʀ���ɭoPv7sz�О.��r���b�����d
�`�(�9�ʵ�`�{>��E��=�t�˒���%��3�����,��h����A�����C+����[���On9�����	mH̬���]T��f��Z��b'StaF(]��`�m&�?B��m@E������5\�����8����;���u�4��lD��ew���qM�r�
��Z'yŴO�$iq_�boQ�&�ax=�Y�H�٦z�)p<�����]{��x��'���k{qO0ݸTgۃBP���?���u��6$u�i�W��(��9��z�Ł˙2��K+������V%1i#�<vC�qZ`D�U͖4;�����Wh��Z����#E ͎�?�/��@��>�]H��p4]��! �� �H9Q��|!v�\��F6ϛ<Lg�\��� _scئ�͢$Q�����Q�o��a��]��ӌ/I�fS�B�uf�t�5kU�U��qNp���9�'cQ�Qo��N�gJ�K�(�,['�dօ����i�+ ��=YK�ag9���\�G8g�D��@k����%:�kٌt����um�6�=�d�hݪ�9 �ʰ=d�4�f��ƒ-�ذ��c�Å��%��+n�?��i��0��uG����?{�����(��t����D�����Y �����5�������z-Yt�aa*���~�g�;�y���C.��Wϡ��]2 �S�G �y�e�<��B��O�h��mn8� #k��_���4%	��ܓ������2\�!���͙� �Q�67E�a����]��E�p�,GY`��E�2�/�=VD>@��b��V-uV��nW��M����������xcQc�N�mN�����2J\D�B��\6�FÇʩ��vʁU[���I���0p�^��rd�t�@�����Y��(�+��z���\�<fxW$��R�M�	Ќ���S�M}�Mo�MWd��#�� ����9�)�%�Y�AKͫ�! >���S��"-�e28t�a�hr٫9�n3�5�Di�T=ЫVe�q+I�?���aI���f�=!���8Ӱm�E����@�΃���6�؜��>sM�����B��R�F�ʄ��v��
p����ɰ,��@Q�!{�p�����~H$^a�QUG~m�O=��2�*?��^�yci��Y#:�!�B.��;�{�����/ἧ}����\��,2�A��J�k��}���0(�
š)�r7{G�c�-1���Z�p'\ެO���A���n&��s��b�%�ln��,���{�\d�T�������-��i-#/IJ�2� б]2r"{$)T��SR���&Ýp9�Ox��:v��Nk�yM򱍂�l�e-�?��a������n�``��n����[�Eƌ��C�"y�8��S,�M=W����c�?��GVQD��X����ڹ�3l�∼�Ǧ�$t�ֱG"��`�c���{xF^f���v,�b��f��X�IzS�嬵xX2l�?�d8\Yw�I�jsY�c[4X�� �3ܩ��w�Vi^��P�?�g7~x&�)��ż��й%_���i�3`�����$����&�M[�����a:���·E��]�JA+&����0x�vT}�,��7�׸�?��BP�8]RD,2B�ˌ��v(�e�	(ia`yƓ��Rm�@��	�������c2��+�t���� ,�(���紅�;X���t�z�&��E�l�@�UC�(�J�ݬ��5��������6Op0W���HO�Ǟ��K"B�=��'���E���N�t�r}UN�VU5�BK\�Rpζ�WfKˑцs�+fn�0{ 4�m�xtq�q��wi/.������
�;Tp�%m*��QWU��5��%�/��K�,[���=b����in[�T�-X��r�c�7v�T>��&�^���SI=�ӲPT�-���9v}V��M?�ujٺ���������b]��B̀;�e���f�n[�~�
Cp�1���EE�m�r�VpMh`C*Aܥ�rYRXmN���)�e�ތӨ7�(Bb�=;��1�m�,�Ӻ��0��ʗ��5���6[��G�Q�eO��q�5���Ƅ����6~O�Áԑ\�r�t�L�_�m��,ٓ��cf��r���&K��V Y�);�Ϭ��R�7��ÎKj��f�̚aE�w֕]�B�c�TS�*n�d����1��Tw
d�O�eI���>v��Ƃ({]�p�G0� Q���M��7�� ʲqo0��d83\�`�A,�j��ڎd�y�C�"<ۢcԿ]�����<�Ù�.�Uz��#�r_Xd(Zw+�,��]R܋ݛ�R�["e��� Zd;�ه�D�+�z����]$.��$�t>,2W�Z�l8��R�^�q��Ƕ�1�=�� 9{_z�^�n�)�;���G �a��	�?���(��oM({�D�C�M���I���0�=��
xw��[K�i=p�E!�e���Y�������kS?�͠{SM<x�k->~)�͢$���Mf�
�HY�Ʈ�Œ����z� *ݴ�W�gW@�b�Ky�BD??睽ߏ�g
�Q:���>��ݵ;�S�lA�X�ltl�7M��D�$1w�^�;?�{{�cNu���:<���Y[�Bx�tl(���<x�ku%�jg&X�dZ����a��_%���J���S�ﵺ^�
��16,��k3nDGϟD�map��*�b�sJ�q&�����19�E���v�WF0�U��6��YG��o7���R���a:V�ǚ2��F��7C�|�bj�����Ӥ����rx�B���X�◳������]*�A�5���[��)�(�<���8�E�ᐳWws�Hə�([�b
�o�SN�]����떀w1Wu	`�Y}#Q�p����
<�f�Di"YR��� ��uZ+ 3;g�������~�P̙5w��ᡔX���:Go@3g�����O��:�J��û{d-�.��-s 4+�R��/ �v�LBߟ0�`���>͍�.䲤Zz�P�&[��d�ls���_`�f�|�	�e�(�4=e�j�rw��0ǒ�{���<HR��
��(9��?�D �n5�]����	�3#��0�II���=U����d����I�L�	��?)���M*��N@.�u��@f��rY7h�c�P]�]�ݰ�[@���p�
9��a�J��J:�������@.��G�؅�T�m�b� �l��<�A���J    �Q �e�_S{�]J�ˎ��>:$�xA.68�w��ͱ�[гO�x7Å��e��j@��kX�|mc׏���A�!�3�go3� @ԡk�9˖�2�|:��/\�.�h���I�ܧ��&r43F+)f�f!I��i�9@��$�3:�lo��:X�� �vE��Tmw>nj��C��.lD�[�W�o�~���������.4�͒\���3a���X�ڦ��DD�;f&�$��L��7�^������<N8���רي	S��,�׺ƗB�4p	�j�{����n^��)&;���شn��x��sw���C�,��m
�Sj�n���1����Y F���D )2�gI�j�&�a�<��W���	��Nb������c�x�)筪�4+��_ƫ��f��f���p�#�|�x��1��]�z��M����%X���݇�6=\>����)�YS6������ĂD�;��V�L�u�|i@ą|�@�Vw�cm�4j��>)̝�!�b����%	�w��`�P��nAG4@��pX�?n���m����H�olA>�Qv�Y5���:�����.i��8��6 �!���yk�1\?q����IW㗃@�3�؂Nv�6��#҅s����(Q��V��^:E�C�<��t�i�.BG��p��v~R� 8gYءI �	��a���n�ŀ=��݆y��V�;<���(벬�_K4W&[���Y{�D����3�@u�8^��o�Z��p�U�y]� �5�?��>q���C���sm��9�/o�Ն��XK4��d�)[�d� �N�?`q=�e�����?��f��pβ2�ӆ6�]��L������QLQ��]12R��pS����c����n�S�N(�_kZ���S�*���Yu>�j<ٳ4Í^ǚ��q޻-C�Z�c�[9�f��#V���[�l��p�
+��,GfӁ-��f�yd�g}'�s4��秞S f6H͚�`MPͰ4Cj)1t���[ЌF���g��˒�l=��}��\ׯ�� �e�y��ǩe� h�+���_9. �N���(���� Q�XL"IxM9�dr������Q�Q���r�a�D�e�x}�|rͮue�my�g�b����ݡ��dKDY�݅�M��װ�0OC�S�.!�u{cnۃ�r�����f��:�e��8�!|A�	�l��۫4S\%�k}ӛ�	?��w��!h��-f-N�w�#\|�(7���'�"�/|���Њ�䪓M?U�� �.���+ ��'8�C��������(3�ؔn�_���"�ҀO��*�k!o���3
~��I�[4��1`�nKV�B8����9^xQК�#����@:2��^_�0��k����?7*�oEC��3��]�e87��oXdm�ܹ���xXdY%DV��6�d�a�����o%O�7�R���E�'�����|�������������+�z_cq�A��#N6is��I��ȻY"R���p�D6X��1��iy^��� #��l�|�����klD5��?pQު�	Vz��&uFl�A@q	�Niw��C^]�Kc��|���^Y��	�I8ln�!��.um&3Ny��A�	s��p!��~"�鎅v�d+?l��L�����~_����=�	�Yx�\\y��,d� X����iI)��	�j ��n<�}�½�u��/�Oj�&0m-�'���ީK��h����2�pdȊa�;Z���_�m������?�����&���d�yP��។���~� S�O�wܓ�H�τ�u����g+�M�=�ht [����D��LA�H�	.W�8��|k�[�<�w~0r�-7���������#��2�`x�S��D;���C�}�E��f.g����@�.������f���i���2)O�����ESlҏӤ	�NUiحH����y���"��0�ng�bYo(��[]^b�n�ω���)�~��y\k�>��{����u�t�Oپ0,�hhO�m�̜�Zt�͵ń߶��������G�x����VF^�k��������a����n�p�'az�/#R�J>��+��@�W��:�UE�=R�p9�.���K���p�l�������UB�"��7�������<;Ý�!,H�g������.v���3Yk�i��+�+ ^M�
�ح�����¹zZD�h���5�2�2�R�0l3{1���&<`��ZO���!��g��I����~��ͱ�+�bH�0}9'��a����}���~DZZ�a����.�7�K:[�3�,�V\w��7)��I�V�I��&�Ǧ��L<�I����	���ӹ'+���Q�pqc�t��j��}��	�k3#^B�h�OVB�;:�EVl��k��6�J'W��#�$ݲ�'�:�Z�D�ȱ���C�f��;�����_�䡱��)v��yuyhC�~�%�ƶ7��Z]'�P��)>�]f�=��\N����dxW�'+������1�����G�:�R��i�����*�'V@�Rv�v÷	���y�v��r�l@:�C�Fx�����KZ�![xc�[��4�寫�rC��E����w]�.�䝯��ᝍHw��$L��p2�gS]O�Ѩ�6�Ey՝L�w]�Y�"�𰢺	�$�~S���pДM�uZ���@y4̅�F��Z�S�d���ٛ��6��f���K4A}��6���ǎ�p�:a�r�ԟ�aQv4\�������i�<׏Pzs�tQK�:�8v��'�db��=m0ܱX
<�fVz�؃����3�n�㽐A�5C�{�H��(=���~������p"���/K��1��3��>�t�qOX�U
��V06kQE�ߊ��-�ZpOQ�a-�h7=b�)���Q�S
�w��ߠ[��;)���S�穫(y~�Vn^3�A9��:Q�����o��Χ��B�7��0���8�xO��b���${{%���X�L�<�FD7�s�]dخ���B��R�{��6�M�(�ʰ��׋��|5������0z�ע�ړZ��ܒ�&1���x��`9�F]ꔜI��DZ��{�s��Uն�f9�����+*��.�X�b0b[�z�-ֽ0��n�(8I�����|\W-]]����l��݅"���+v%Yp>� �_k�����Mxa�oL�}�Og�����K�[�N��S,���W���l�=v��eSg6�ٞŝ_�E��Ve���'��)�u�������8��{���a�eʎ,?���$q�`�|5�ydW�34;X�5�c�(�g��D|�zKp�q�������V8|t�K�B���@c�>��;�=�?��i���X���52\�l�D��?�E^��/��j���	,O����,���B2�X���lq��1���_O��u�1kNS3r��8����&�t�)o,~��^ɓMa�:�-�S;s��1��9���T�����Q����W��Ѩ�4^^�.?.#��ٿ�L��M;�S�#ðȠW�1��),������t�`؎�Գ���c؇�9��J��)�U��O�^�+µafe��=��J><�ɇ;SYdSWpho_Xd��9喀�[t,�w�4�۪�:֔������gR�c��=t�lԾ��Y����ε�����p������U�̄.V���"=�{\<t1w���$i�5t1Ys�A'�6��d������kueY�"�{��0l���������o=VM/����{�Mc:6���R�����i<yX��@�"�,���K����C����:��^�m��!�N�$\e�_@��n� �M�з(�*g����g6�P��o��q-�iq�V� �.a��/�ַÓ�(Y/���bC׺�)��eN�D�c5;�a�Iѓ�<%83Ò*6%=���ɭZ��-�{�[Ǩ�3)Brx��O<�N�*��p�s��#My}.;��Ш�f2z�b6n���!VQښb
�vSV�G�)3l/��U�s�w�k��߸�~��C�j��O64P���:A�;^�*��kx�؟6��EJ*��|���    ɯ1P�ߗ���X�+�:"K
û���pp뉽�б��T�B5��WE�E�\ᡭ(ѧ5{V_;��p#k�B^�=7λ��y��>w;�`s#]�C���/�YI#�����@�M'��'B��_�u~r���؈�(;�9h��sf�Qv�oF��1%.dn����­Z��{~R� u�(낮Q�4#A.������Q��������0l3iMo�ޅ�w�H���4-{Me�tP
3���H]W�����[P�8�Xa�ʰ���jş�h�(��yN��k:;<�����8�.Lj�(��ğ�X�]�DY7?�6�=�W�]�"�C�K��w@�UM�s�5E�0M}>֋J����p%N[�+I_����\6T�ޢ�q��VM��(j̇w��+�u5��Qv����OcMfX�a��Y@�� � }hr���wD3�c_A���X�W,�rz�N5�P~����Y��9>��&,�Guȥ9{��,�"�-d�����e�E�����}d�L�c�CUb����
�h%��]�1n��*�j,�GBǢ�gIn�[бb:���px��=��=�qs9tW=
3m)9�Юa�p���z[p�;�GRGy#��pf����7��a[AN�`��Z�fزf�h�m��ƾj*��	�'�Yt׍%3.��'����՟48lw�@[P��r:��n��#�$ޓ,����n��e�9K�ݯ9v����Oҥ"�r���]�G�iw|Rp�3��}^�������Ѷ��Ꞡh��,�z���+��*
�}�n'��^z$;m£r�?��C������6����JAE��۵D�	��@lIQ+����
�l�ݎ���؛R�Y�z7"/�o�gn*Y��D�<�P�g]��\�����
�7�7mT>���V*����'u�/���7�]-n�g��6���ڽ��ow�X�Ҳf���G��TJn5���� �H�^v\[$Z��ia٬7 K�ĩ�
=�<�4S����#�텥�	.����.��D<���>����DbUz7��]�����<aI�K���L�1RV����(y-���<���a$7��Q���TXoe��z�	��?iT�T�� ß��f��p����%�lߑK�7l�.��.��6��E�to�O��eS-Y8�z.�.j�(�����ƪ�r�G��x�$��m8g,���]�r���)F�l�=H�ܖbf�p&p�L(=��9��Z�osa�=��	o�ܬ�gV�1<�i��A1��5<u�j/v�I�4�6�N1�'�B�M�CO��+�{��w�Ƃ��;��BM5Y���+;����~�8�P����-��Ii*؈�:�ۭ3��dkl6��/���w)bh�@�u8gY��t}���� ����e�&~e8�-�����/u���SQ�e7��C���+�c�\V���H+��7����-�+��dw0��u!�ኛ���=s9�b1�J�9�Tr&k��F�kC3$�����y4�}\F�@�Y`Q0��)��(;�F��3�`���
g����fo��z���<y���Y�"���ج��%� Թ%	�����	�l���K4,�׺�>�L��)k����Fb��
���y���j
6a�]v��etר��YP�O%���5<)�s뇠��$-.�9v8\.�
����X�8���,%`(�1�ų�GBp)+7r-��B-r��B��S�:�K��':�x���o'<ԗ]\<�����&\A-���5/�r�.��rS1Lt���.����M�Y����+�A�b)d�(� ]�b���]���L��ж��Cn���>{����Q#�
t ���a��q&+�V.��c���ii6���O��'H/V���4{縜���+9��2
tLy�̓�����-YbSق�ۃ�!��?=Gq�?�Kfю�����%Eժ\��#N�ObAd�E�qL"	>~e�T=i�0�Y�������oa��T��q�%3~@�69�I�6�{R�����_���A	��n��b�V+�U�KtKPX :6q�D2k�B�tl��9\H(�z�:vZq>]� 4�'1�R�������<б�������a�c#7A�랼��!O�����fB4]l�bC�ym!�M���'�y���~	vO~���ͬ�/�>	�
���N�;�u ʰ��7��I�;*�ܭ^� '�Ӊ*�F�+Ù;�ӱ��aߴ$��S����m�==���3���S�s��"9�ɭ&3�?�!@�����s���"d�G�E`7]�e .�a��D.���ŢT�L�z�9�bI��������;7�y���;�� r�#G�T��>�k��XwЌ{y:(Դ���K�5� ��U	�u�`�r�g��!&櫎yp�M�Q�U6�#h�ٹ_�-� �����	��)�c�[�
�h6��n��AN�חa�I�����E��]CK�&����s~4{\5��h�;���Y���a�m�MS�!�!�*��N��_c������i�	@���!��vts��Vqv�4˰�N����T?�c��A��d ͂ԛ=�p8�1�}>�Ķe9Z�f�"�Gk�G�� h�t@�ӖH�4;�Y	J�� @��W��I2>h���N�D���,w��SeB�!�x�N�c�X(�4v��:�GO>�����sѪ�����=T�s�ថ�W���=bo8���N�I���{Ϩ �vSD����?)�o��!%A��ŌR!U3GK_O>{b��hN;�b�gE��G�ל-d[��S2�&.�o��G��π������:��E^3OI��3X�֊D��0����1b��4ğ��J�R��s���է��B
Ι(YY&e|:�T�t�מ��}H����Y;ֵ�M���!�����O����4k��u8g��H���,��s���&��,L6J�zTv��o�(�-���-�%#�2�ҟ�M���>r6#���3�ă���/�;�l�=�Z7o�:W�#2񟬢#j��x��]����_�U �6yӛ�v�2�P0:�HwvdpΆ`�[&�8��9c�FLǥ*������'-`��mn�C2��Qu�p��t����|X���vki�}��7�hUQ~���j�8���EZ��vuw��=d���s�ls�LOq���ݶ�d
������?����ۛ����6ݕ�a��Ud��!��T�S�"t���w��2F����/���eG$�~?g�ݡ�C��-�"jH�i�H�U*�}�NK.��=��/pz?��������t��<�a����=|�	*�%�ť��CS�t:$�զxYM�Y�li1�C�U�~h�B�m<X�`�Y��ѓ<6tx�:$|~ڰTζ�cn7B9Z��!�Q�ly�E�#�tQkc�Y�"0G�[txT���O翰�z�߀C��'��n>�&�Y1Dx��6�9{�u�0w��ɋt9����Ű��F�!��S4@����|��?����T<e�������ggi��"��n��H15d?���t�Ea�� :6E}v�W<˹_n�{��Uc�c�ߡ��N��t,�21�صh�Ћ��m�|c����N9,,67�yH�s�-:����N���
t�MQf�;���,Bh��SO�.ִ���
ҍͳ,��6�Ý�qXe�����$E�l`�,�U�:�V��ES�[]����`��X�%�xy�#v)wlZ;n�iZxaf���A�`8i
f�Ǥ����7��,3�ՠ^�q-�0�#��v�е��	��m0�[�M1�m�9En��]�0KV�G���f˿� &�d�3զ���#m�w��(4Bʓ#�i���!B�s���s�atyCb�ŚFB�J��׵
y{� Wp�>��a���mM�*������J����Y�}��ɯ��𞻖_2DE�d�zx�&�.��E��"�D6�X�2c�.̕�am6�%�z5�ݙ�߬\g��d#��sӽ5;f����$��3��2�V�8��kհ�_D��`�ńh����Ų�e���ye�o�Ssn�������Ο���i=x�K�U��l�]A���������d�TDq��>S��;-<�g��/����i�}�F��I�B��    "�x}$����N��ɛef�H�fg=F^�	�7��H-�x��Ϛ���n�7�]�u�I���7�t�>�>�$���V�≽-���Eo"|ۣ0�1̣�)���%�<��u�[]z�yc���c̧�g�[��Z.f���;Z�C*�+z��@����Mo��p!��r�x澬	�9��f����)�9;��:=#qZ?�Rl��gw�^ۨw3�>�͋�;E�X[�aR�:�\2!����U�K �ޖ$}6S�C�?��pΆL�d��a,?g��T��z �����=���ډ1l-c�^yZ�#��s��Ҡ�M�Sq8T�Z���=_��g�f�(�j���+��(i�N��,$��Ϛ�@���&�{u�hv[C|̣�(�~�7�Rrڌ
�<�"Ȱe��6��Vw$%���wqz���t��������uJ6q6������dUO.3p��*�+�p�g������|w�Y���-R ̀(e�~�D �f�2��d`���%@�OҭX�l���*,Q�^�<ZQG}kk������&�wp�s6��G�'}" �H٨��Y�5��l��vK"���ޭs+��� ���L��s�f��?]�=^��n�D�� �}?�4D�@���sc�u��hvE|��k@��V�6�`S�E�>?�.|���q�}����E2G��9<�e �e����pe��d��O��5䲢ܱH�������#+���\�u?��e���rY1#r�����k!1�sm�K~M�B.��9c��su�X�p��D�!�u��Q�������S���ᚅ��[�o�e�T4�g��9<��Gkқ�qm,:.�mN�����z�D��	���qofvC�ueó`?{�}Ӻ��n�L3/�[ ʲu�-[A�Us����}NZr�,xÄq��(z%y�l��[M5�iZ٦�M��V�blXd!��=����t�1~?����8�;K8��*��1�nl ��i#Vl&y�Z������S����)A�i<��\�8�U�Bo�b�vAt���:,���-��Š��{	�������Kr�E}���&����tj�5ot�az��Ʀ23lX޻��+�`8K1����O�$�&�j�w�����)�U�ċ#<���<��0b�3햌Ru���6�-PW"�����Q0ܕ��˭��)�
ǰ�j/F��4
���`��s����������n����!��I��b0b�(��0����-��n���NӍ�9?�� ��.�)�Oa�uẏ.v�.�� ����"��^��.�u�b�]��.�6�R��^q�͊{���ϺЖ���t�b���SB��E:�1T��qً��m�P���B�h衁~��s1�Z��|��f8��λ���fu�O��suij6-h��a¬j���;w����p�쯩kxaŔ��k�9����Ew.B��GL�]@���]?iG�75�#� ��������Oj�P�{�<�%�uW0��E*O'.�|��r��'����0ئK�+��	�$(���mV>�8�;�G���ʰi,t����=��7+�o���<\�Ë��s4�3lF�v�=��^�	j�Zwk'��qS͐r�.�X�̷��@+6����j�㢥H��E�A���h�n��T�X
��8���R�s���)�_+�IP��5K��+L:F��M@���˦�/ь�t��M:2�|�t�m�EaC�=�c��(��Vħi��V���a�Le��u1؏������nF���s�wa��W���u���^=���ܹ����������Pp������[��Y�NWd[JTs��3vh,:7��sd� �U�}��Ȱs�U�e�pa��Lz$a���s�r��f����>I�O͒���\��F���_�7�euQUq8:��,������c8�?����:qYL[퍰Ț��GI�t�s��O��tl����e7מ{�~�.Qv�<���;ۍ:w�12б�LՐltE|/7_�;�Q/`�l�U�XwO��v���6ʻ��0�)�G���& �S�T��ݣ�o�E�X��NF���]��%�DM�uxa�2)+LO ��Ht*K�m�ߤ�qڟF��`Fl\�I��}�8 ���C#��� 9"}�S*��Å��!0� �2|P�	��C�#� `��7���k?��
���7$��s/�D�u�[���f�M��?`0�%L��?��V{�|ٞ���2�������`߲%q�9 �]j�wa��'7��nU���fX��=�kz�?yh��J���+��KOQ��v�3b�͚�p�V'`YT�ʻ�.����6YP`����`��D��yW���C #ؓ�H��W$�!#�&��j+�S\dnuEf�\�v-V�QR�2z�}��4�+�k��4�^��K�����#�a#=�
�H�+J+�r�EH��U����9ͼ}U4U|������]�;�)�7�MN�������工)�=��ѯC��<����`�s�L qp�ҕ�"#'#2"P��]���p\�zb��W���NB̝�:+�����,E�I\�0;�*�yh��O
JWU�#� �WjXAh�`oC�i��x�v���h�׾�sy�3\�t![���V����2A�q��}�,|kt'��6x\��ue�%�����d���P}��`Үp�� �j�d!��2;^i�/�������b�C��@�帾5���.(l�ϫ�k�f�Dz��'�gO2^���OHN�-iC�����)��
��25>�YrnE	�u���1����x�-��i��A��z �Cv�p��kl��(�͔���S˒�H1��|��mLSOǇDB���h�>�O��;ˎl>�w�`U�[MV�~��6�)��x(�t�9�}$���n�����Km�l���^����r���<S�ޟl�(����]�<��y��
�e|^��Q�R�<���oP�@^rn�������u�{zz���ICntf�3n[2GQ��VǇ^/b�N����[�/�m�[��$ ؤ��oh���s�,��XpO���%���� �����oRy��0��pϛs�ל���}+V����������h1��4Ƶ�R`H8t?�9��b���/��'�q�EV r10���t�r쫓�nޫ�͝�ܬ�$1��y{h��%�����>��]��y��ui&������j�u�T�5���k#ʸ���]6I�)��~�t�@^��-/���E�<����l���q�JZ���g���'��uY<D����/��>�4�)�y�3��-_�9��<6��$��zOÆ"�����| N"Kg��4�8�؜C���l;^T\)�٤b�>�f�L5�Ҏx)�>���J>t�f������}%���w!��b���l�U/5g�$��`�Xgɚ��:�z�bf�������<�֐k����٥;�{=����fd�����{�UL�P�K�~���<X�G/�B���\����)ӝq��&F4ƺ����߈�e8a2.��T��u��>C�Qp���V9"�(����}�f	IzCI�5�MW���$,)��3J`y�snd�|���o~�q`ǐ(s<�Bf�&���2��"�5��>��[r	����$�w���I�F����,����񻠋�>[X`w�4�x�d� ���וX	��|�cs\3yƄ�%����Qz���[���"{��l-�%c��+_� ���m��M!wq� Ԍ�^)(]��W��Қ�xe}��g���ѝ��~AX-���*�ng�d�K5��{��9��(�u(�*�!����	}�i�F��hk���Izc�+D���d'>�.�j���#9^��PpT$Y��3>�e�j�y�O��}�?����z�ǘ\�#l�Ì+��yhXCϓ����Q��R�!+�Ϭ�U�q�j��I�����:�1^-�܁��c߇%�k��Y�����,]�,��H5�ٞ�['�Mo��'3N�2?��x��� ���!�^59~j�5�W(e�]��N�Q�2�J�DoF&b%�f�w#�    06S�c��_+f����yrX{���dC�I����x��}��el浌���5�S���]8n��N�4��7̢�f]�Չ����͔��t�yx�8�����u��Qk-Q-��z����۝o����������-�HJ2�	�ٗ2D~Ƽ�qš���9p[�ƌ+80Zk!�y׺A� Bvۖ�u���G}"���5Mt���z�Z|�MX���x�B��z�GBx����8�;�~}.�	*̻�f��{�,��nm����������0è�u~����Z�p�ηl�޳\>�f�|��2��|���ߕ�ױ��"����h�#�ק��A�e�v) b���}�(?�|�q���E5="N��e{?g<@^����+;���S�N�z\G1qf$rH�:><'���s|�l�/A~��&O���b�f3����?>�X͍�xf<�-B��[��VPeC��+�@Kp�u��m� �>�^ݦ���gr��uʙ�ɷˣp�Ajm�����u�������¦u�̀d��j��9�٩ �k��G�A���9���v�{��*�����J���������Z$��ap�K��T<:��q��>׫�G'�3�Z���Ӝq @���6ʬ���)#��J0��:��g��
�y)�!���('am�?�V�H	��;��3N�u�������~g�lWg�b����LY��v�u�3�OM�#�4�ɦ����Q��1�دO�0>�ҳ�ߍW�mL��L���l�*+�#�p�R�eN���x�3���\�����=w�T��ݟ,��g��=��R����l�4n�2��;@4�/��f���m%=�z�M�ϑ4�l(����K�;/��������	ѡ�-�8�f�pz���ͮ}��}�NT��}.Z9W�2A��3`�W���\ �h�CIm�z1���:���:��~Z��Y���C���I�^=QU���;.��y�1�<"N��v����M6�_�՛")Sp����3~8��J��G2�ЋPK�L��]�^�S�j����v�8�m����R�ƋT��_4`'�b�Q���� C�KS�����

�k�����/��Q��8�cަn���gL1�Ƣ�in�ޟP������z���6Xҽ2�HDx�i�6��՘�ό6ç�)-F�����7*��Ⱥ��M��X����&�n���|����S:�g\q��[������C
���I�Cx��_�[�g��p�3�!�f{?��v�i~��y��e(���ޣ'�M�s�j�{ ��=��p�R���6�We��d�+��SecW5��������ߵ�t߄NF�O�׹��+?�,�_�u���͗E� z���C��x��"8~�P�A-Mm���1�-�]�$Ǻ:�L"�h,�h0f<X��{$}���i��]x�<�2E7?���莧�(�:�lt$8�`����K��K������+�m0ݭ
��{
�,+��ͿqP:�?��[���
ƛu�8�z0�\�K���2�θΰ5B���±����g]���x��w(���yԜ\��+�x94��q1;�j.��qEN*R�l߫���q����Ր=�OE�P�U�E>��?��&'��{9>?�n���H;�/�hٰ�U�O��s�,t�H$51�4Mh&�s�|`4�2Gk(n�?s/B#��h}���gWќ�a��4=�>�15G<mW�F|G��;t�K�|�F�a���=�%�0o�o���<m�Z��s�߬�!\�b=���/Z��g3F̷��w���dg�8FZ5,�ܤ�;�]�,���x�?��v�-�׻�(�k`��m
0�}�[u����_���[f<y�Hb�ExA�Jn���x�����C���\XiC��k�ԦҒ�L�UO��g��5� O+ǀqɉ]�]b��0jZ�39X�z\�!�y�6�v��NW��~�1����`$]@��Ì�"$q~C�M���LuՋ��������{�̓Y��$�����}�ȗ
�����><�&��*Z�v\����Ο���p�y��02Ee�=7�>��<��A�����`��W���F�)��;�������-�5�*�ϡ�6N�v�д��a�ڰ�{�����1�Is��L����#"z�(=3N���cq|�ߧ��R��&E�;0j�E���|���"��#yĸΎ�u�������	�8��7|^����'U�jj��=!T�&�������f���#�=����v9���Uڵ*�IB��8�.v�p�4�b�ulW� ��E^F�!��}�^R?�y�ޣ�Юg������"C���z]���2�[���;�m��Y�q5a��']7�WK�_5+�>Y\tR4��}���;��ǹRÃ��91�&Tw~�Y��0�N�f�h�8b��ԙj�@�3�x��В��h�>�Ρ��t�l+2�4IuE��� �i���O�5r|��{�)Ӭ����/Cͤk��M�i��HZ#�b��M+©rtޑO(���M&c�OD�q���Z}�ky:��J���MY�݃�[r'},T�>�T�w�0�������wwԗ�����u���3�[�˛A�n���ڰltEP��:3~ u"{�G�j�'�!v�P�߻�x�6��p��q�gr�M��F��f�q�=m]�4�����4�:.`������g�	|�7����x ����u��xs�|���h�g��j�-*��?��E;-�#~}� ��e{�r�=����e��١\��6D�xg�+�/�l���X�~�w{	����?�cq��[�y�B~�z4��3-�g؍[�W=��~O�ʝ�I�;q�ϥX7yL��U�����⨚�/���ө��N!�d�N�GS�]�{��h�"�X���}�[�F�&m=���ۦ�9�����tS ��q��c�0h/��Q��m��AKU^�z��,vU/��N�-���w��b߇���1�3�̀ڊl��/�b��t �9�m�� ��"���Pt1��3��fQ�Z�7�-Yt�lv�=���zTHU�����p�k�{�]Go�ǐ5y��y^�3&S
3x��~bۮ��g#�M�m�{�'L&w���v����R��z=<�N51NƓ��˛���|��f�]��c�njD?-bw���s�	�I�6L�c��H�$3�|8��h:������uf�ܧ���c{\�_��6ރǆg�%�c���q>�84���j�L�[҄PV0�!є\ˮ�����t�*C=d���j�4m@rv����]�@6tL�������|/F��{Oo�]`�擝w �6�(�?��m)��%�u`����S��޷o|���C*�6��ڑ��g�q),7d !�?�� ̭je����ֹO�O(:f���O �Uߋۨ[�JǅO���=Z���|�������9�x����/�1���e�C����c�~}���:��|�lT%|��WWf`g;��߁��7��"ӿK\!H��b�<��M�%�Ԍ�H �߭��&�q����p\~�>c�y9��KdCSU�P�N;������B`�|�7SH��>3 ۉvC�����æv����z�6{?�N ��x[u�[]5���N]�i+�NG�Ƥո,%��s<Kϋ����q�:Ɛ�|6\���b#��n[��1�8�z7�.�0>�DQ��������n���C�]u\�����>�� xl]�.G]K��+�ц]<���_�W3M��/��[3�����j?^��]})H>��6���(���v�<��#�Ohm�>$\���wAk�B��G�?�O�z��<�ct��[t}Ei������@�Sq��3�ޗl��n�@��6]���� ���M���L��7�ߩ[}�g�w\g��W� ��3��d%kaEz£J��mӮ��78�smFUCTZ��:��V�}<*;�`�$�C�
 �W� �͔��F� x�5A�FO?u� �v����+�w��!цbw����k_r�[���M���D�,��Y�䱿kZ�w��E��.�6���i���mr���wtz���hɉu�mn��^�Xk�AxәOc�'ke)��ܡ����<��ڹ��I���    ��(�����6�:�}���cG�i���ר@m\�)\���l�|���2�kE���V
��3�SR��?P�6DjHf�v�3�n�{�]���?����s/N��ݖ't�p��`����wN�vD����;�N�.^n���ϡ��D{�Ŏ��W��[���!X��m�U=��v;�e~x�Mt]�6�`�;���i`���0tv�Lhx>�VM;���H,WǛ�����O�� ۲=ߨ��0 t|X�@v�.+�y����P���(Px��s�F�¡�ę7����t��R�~ݤq��}�s���:T�#�	v;^��K��pq�� �+����!�߀��z8�ϥ1~ �����{�޷}�	�X<�gC;����l�P�-��y9����6�T�d��С�\�^o�`��ǲ�8�e��6������s���U6�q�ꏨ������/�)8s�ɫj3*	��6y��Ԡ7G^����{d�$�x6/487!Z�qn*W������1��Yg��R.jZ+��O��q^�+���*:2�'y����'2��5ߊD�*5�Dw�<'h9tA��P���})b&y��á�����x�H��H���ZT��S�/���!Ig���n��Lt�	�T�ݡ�͵�V�;�)�.ۿ��4����|{�U�a��.�W��Kݻ�S s5:�8� ��!���N�Ɏ�����(����̸�J$:��x\gWgwd0<ϚWx�����k�N
S.����T�o@�v����m} �8�4��n�f\?��wZ���sAg�W��+��8��g�-��gߗy�G�%z�����o��I���.hq�"iv.ub���ιD|�'ݏ �+�l�(q"�?<�����y5]åR�a����ܛ�����w�u��|�96g��鶧���l4�/ԧ6��s���=� ����-�g�̝W���н�k�����2j}�����Ug߯��l���b���f��+���J��S�=�}j�d6�N+���l�ℛ�&�{PU�)�yG�9Pے'�l
��!�O��x���V�}�h�p�k�E�y\XL?���ȫ@n���0�-�n@��AT:2N���ݶ���-���/ǥ��8ͪ;�{
�-�ˮ^�y��;nڻ�k j#'&P�Q�����ę���~��0ي�[��J6���D����( F�?������"��)O���@ ��[W�*�_��V�P�u*2ؖ�_��
����s�N�r�Ŀ)���mޓ0�	�1�q�� +�
i�uXn����T���@�I(<Mzew<S�$�Zm:^�>�)uWg���ϰ+W�G��߾��z�}�Ȼ�+^6+���n%�����?����h5]�Xo)/��w����/`ӏ�<�煖�H�N�+3����T��l�UZ۰�l����o��u"���}����~�qG�-0�WEr�l�sY�g��9b��D���$uh�����3�Ţz�������T�o��%��:�nÎ�wxpt�~ �yR$/���1K�j�㽭�#��׺E��K�M1�f<�����D]tl�� (ܖ�#(@z������M��:ETu,nE���K�}���)���C�)��z� 7�YvLh��:0�w��|�s6J�w|�g���t��u�j���u=��u������$��8`r�o�iZ�-�49����}�cͻ�Z�e��p�?�Пx�|�|��7�7���h.tΧ}7󯫯�4��է�D'��^5]����kn��8dz�=�Z��h3U^t�s�BGZ@����
��[���EA�q�b�a�Rʺ��<����:��đ	rEۚ�L���dĺ��P��3fo�z���F���/]=�:�&�����}#ް�ᕮ�-���:�`�]�4��}�G��)�T�����*ΏUl�6�<�ϥ���b1�3����F��O��lV[�Ս4LY��)2bߺ�/���>��y	huoȞ-J�G���Յ�ɦ_��|C?���G�m�gh�h�����|�p�S���������9��Q����Vn�Vs<�|?��)W�Ÿy�l�M��={��_�C�����b��Ǿ?�U�sԈ�w^�e8�>�c��:6�g<P\4N�VZ�s4:<u�Os�@�/8�'����)K�бR�G�k��N]�����ܟ��A����<�����v�S���3@��U=Xb<�4������$�:Xw��6�~hu���8����"(El�)8O]1��/�,w��� ����D]!�L�{��=� ���ת�
�^?�����D�sG� o.*ˁK%��������V�������X��}���M�6)���[q^�}�<,^o<�l<��t_m���]Z	���x����I���P�x�����;`/�p�����$�GW
����u{�O�:��d���$����y���}����ӳG~T���`���������QV�t}t���9�S;=��FN�.z���B�xu�6o�dߚ��]�+0{���Ւ�a :�����93C�L�U|^/�d~5ۗm�,;ړ���&N��0;ZHe�+�u�:��k�(�P�O��N}���0�5���ƛ��kD< �nӽ�P5�V����,�Z	|��<���,��W�7L��z������
�N�ͩ7��3�e%6�C���ϻ�B�y`��p�N����p�x�n��1a�܁�*��4[9W�Ļyܸ��W /�{kQQc+�9�}�
�;S��]zW�$]'Z���ʓ�%��M��]|���U��h-a�'�{�r�.k�B{����{^Q�+-PU���^�N��U	]
4�-/%C2[����c�˜�پ��ע�0�՞���_ �.*PYuDq�A�;lQn�{���_X�3� ~��o��o�Coه�fY]
�s�� ������ q}�񄂶��o�{�JϩD;[�s�'�����<ø��SR�Q��s��x%E��ֳ��1�:7�-�1��%���#�ͧ]QA6e�>5f�p��)S���kS���05�������τ��xe�{�������L��~���A��������٩d��r�x�/���4N����=ח@i>�G0�?�쥤ҭ��u���Fb��ߣ�ԧ��M���H��{X�j������t����� �ۤc=B���d|רe�O�R�b<3>��M���������K�ʽ�pǮ�&��z`��ǵ}LmV���������x_���w�3rj_�GO\_�g�g������@����8��7�K�����@�v���s�6� ޯ�!y,��8��q��6����C�L�@Sm���`{8ί�5��"Ƿ�d�ߧ�[��XJ�;�6�Uor_���E���uD_����
l����8��E�,R�J�������%�'9���OB��P����Y�N�y@��M��+h\���4{�ˠo���}L��E�P7>ԁ�s�q�M�B{0!���F�!����%���8d>�ܗ�+>fq�"��w`6����x���{�8����
��0�^\_�Ha�<dq���XO�٥�.� �X��Y�80�sЊL���_喐�K7nw|_:�d)�*������s��8og�mB%�X�\���d]RȦ�x��B�[֯㍼��k��~q6 �,����X"Dʨ{p���>�BҒ�X���}C�Є*�5?wgutP
��㤨`N�1�]qQ�����|a�CAi����v���g���4�`�Q��M��]}�p���~��	rW������n�~�aW_ æ~�j0Ҟ����l���2b��.ܯ����>t�9�qf�ܧ�m�8�Kj�TQ_����-�����{�����x�o1[kF���;AD<��G��;��KtC�b_:�t���|� �o�a��,�c=��h���j�p�o?�$�'�+�Ϝ���}�o�'�s��?�b��ޝ7�s(�¿�H�$���<t8�­ڍz4�9��vf�h�E�ި�d�Ä4��0~h�k��K(�}:/�n��x���}�x���R�������#>?    dz?���� ���N�:��zx�O�>$��[��?^��.$���NC����C 4��+PE��Y�Z�紀�������܋�V��8���(�>����uϳ�m[P׫�/�N���>� ^�}��� 
��u��o�y�a$�4�!0�g�q}q��a^NŁ��~�0i���j��;=ߚW{[d�yW�Y�߳3�v�H,�q����)��,4W?���um��}��?�U��5'y�ſK^���?ү�H�"�C�X�TL�]�'�ۿ���Sv��/��l��%����ܞ��g�]��I�S�����[������>��Y�96���������L���	=�=��:Էޟ}��K��o����u@����yA9.��0W�i�ׂ:5�һ�?Z�+>�M�7��G��?�L��;����a6��2�?�F9xX�{���傪K�9og�V<]�=:��<��=��nߣC���W����:�u�3�s� 9�o5�v�3^Iǵ�|�Q���y2�S,��>U��)���b��J�E|�	�������7�f7����������hu�D�ϱ��jƍ�z���٢����PP�z���w�q�J��q�a��a�����/|�d���&�����j�?�ܻ<��Z��m������}�$FɇT��wUǛ�F�%�DkQ<�L�_3h*R�7G��q=l����w+y�fh2|��ٿ5�V�c�v�w���B��}��+e9���|�\buO{�c���<̛u�����9���sEq_~�:��%r�_����g��.ZI����s���0��0ټoC]_8'ѩ��wD�Y˩/��_���Y���F�~1�'o���H����}O<��8��x��'�M�9�3IΡǇb����x�7�j�E::&�_t�݆W�x �cw���u�_�a��m�R��q��Q+
��:�x�v��Z	D]g���uں	���ԑ�>�T8��\D�w�Sv����E���Ђ��>%Q�O��4�')E?#�E)����I�e�z �Np���HCF��y��!�Ov���yO�m߯s�8.b���jr����-�ޒ������-I2�'>w�SԼ��s�!�JzF�G��YV���?eߣ�c���ѻ�\wґ���q>����%j/�[��~���nܾ	�AX�*���?slѴx�J�C�r�Z�K�r��>g���o��*��h�zλ����G��ѕ�5?9��N�a�ϰ�v<�z������s�n�a��O��g��3���	W����U��D�܀7Jr�rD�l��T�/E'�MEb�0�Ì^W��z`����MI�\�<y|~��(�
���8�W�ؠ��h�?G��5�}���O�.G��	!�ϝ|���:
�t�!�xW�|(�5����d��t�(�l�/��z�{\�Sǯzs%�9�3<o�<�C:V��W�_MF�� ��͚�7��}=�W\6��J���&��L^b3��u�C���T:��>/�-Ӭ��ͼY���m��� ?���v}N���]_����u[>�4Ha��M]����TX��)�c,�uk^h���5��6�þ<N�q���W(����q�x��p�n��:r�v�;D���L���^"��{�zTN�r�jp�w��s+A���s�����+�%%ցn?�-T�a����.ʪoQ��{��S�EGF����]��W�~��3�H�ë�AЌ��m8:��:0�&�"���:r���ފ��������!Z�b^��|����f�~��k�m��7�N	^�)��	��g~2�K�6X���{$x�(Ͷ�� ����u��TS־��#=����1�=/��f��%�K<ݩ�����>/�^�H��SN�_ݱ��l���KDde�4���������&�4�#\��'w���E��D%�e�.�]CFb^��.�/̣�[�O������kR���3�ӓ��9��@�q��*)%���O)\L��@������UCʮ8�9�G��������rNN��z���C��F������ �?��RX2�8��?��:Lb����v}Q K�=EWKs\�F�lv�Ľ�=���^j�c� �^]%��G�2�E��<���5��E�iv�'\��y�Kr����.�CP�\�+�f�M���%���Z��D뫿��:�K�ȷ�;����@����~����g1����4�\��������QM�{��L�mA%U�<,���z6�M����A�zՀ=����v`����9n�4)��6���>��n�"�q��p�>��!t���=&�<����{D��67)�K�1<�LK�<��ت��8x���'ՇK����vK������� x�Ȣe#�/����������~(^ɶR.)����]�Њ�w���wEe�<�^}�nS|��`�1��Q����b��ό֮)��U������W�>߹/W���7���>a-J�.���^�����u�$�Ц�C�����-���Uo���qy&�g|Y��i'8��F栐�����Vث������ȭ*�q#��b)�X�{W���d�E�:�����+�ip��9��T�Ϲ��O4����M8�TN�w���\q}9�"4_%���c`e���'�1�W���{��/�f����Ǻ�Td�:j 3J� k;?�(���Y���!7�&h�C�>�9����D��j"�P�!�#�$��}�\̋}�i��,�h]���:B[���p�<<F{9�!���w�c�AҬ���:���帣�Q�p����_�[��1����]~lG\�Z���N��~L�M�C������C_W�©=�!��E��I~�Z��b�翀������8^�'d�+��'��Ȑ����}H��H>A�+n��NxS�w�&C_�G1�j�q����-�ټ����Mx8?�{]]޷'�E��*�3�.GQ}Wu4^5�3��f��P�P|��1�,��K��t<����\���$8��i�t.s��o��k�����#�Q܏��V��{G�5m��DR��$8���#X�O�o�GN�}g�x�'l��n
����C������񂮀�euz�[��(�p �.�>G��>�p���&�+t_	�b����-���iޢ Z)�n����:ia�x^"0
��M����{��G<&/Q\�#2�}"/1��vRn+�����#Vm���ƹݎy��O����M��}�	^�+t���@O�uo�O���ߝ�CMѮ��د��%�n�F0;?g����va#��?G�K3�l��}9��&JdM}�>L]���x�~M�u��������SC�%�%b��6�-����t���9W>.����Ż�^7�E$�����汝?�Ċ��[�5�q�ɏ��,��累�c�!��~|�n�\�VW��[8p�@Lr����������~� zML?�|~���Ͽ�5g���\?��@~�<_1�b?Z�R[�wE��m������4t����w;��f{�q��_�'���S6����~����������n>'�r=
����|�+uk�nq]u?Mֆ���3�m�K#�Xrܸtx~�U;'�c<-�S�y�g�1F]��BJ�>�x����Z�H�:y���#Q��/�w����>c�ԍ��16댘��k��<�1tw�����=�����]�6�lN&��3~��o��t����y8A��oԝ�.����x�K�c�֮[����?!K�[���sRB�ؚ��!xwJ����i�0�tM��}����L+F�;$�������Խ���W�m[�����}�4ݜ<2���M1�l�V�]3��B�@�o�z_�ʠ���T��.�t��`�ud����Mڴ�6�(����P^U@_��/�K���/8���/�c�e�r#`<	qޱ�X�9 �����}��>�5yĝ�:��GeB�Nͥ:>�-����X�����`�����0//�Ԭ�6+2V>����<DW���!~�dùS4)M�o��Q���I��H�?������Ħ�e�V�BW��%�'T�� �	  ��b�-Y>�c�+��W� G��K�u̶�p�h��ߓ�»x��~�]�����7�Q<��Q|����{\���<�H)4�G1�˲��\�G��6)"@鳈�4�j���=�18��}i�R�suY�>������[Q�mv���"�������n�Pǁ���q<�}mZ\&��ь����v(ݼ�󑇷?�����|#N���W��2��z�hf$"{� ��K)^c�K�YX�Ou� d�;��[G¾�K�^J-�H����8��9��K}Ŭ{��o��ߺ��q}�9G���c⼝�@*�����,�8�V$��ɋS7R���6���o�W�MF3�)��<�sdh��j�E�C�_��?�Z�'Xv��+k1�������>M���w;}I�E�׃���ic��04r��7�%u��WZ^�'t韥��nž���b�������C���#?㸾9�̓����'�W��G�K��T����O�������|/��:n_̫c]3P��_�d�K��#5���-�����[�x��}���N�*���G�|�T������>t2������@��0�jG?�G�N�|�+6}9�|�-x�	�bp��T[�A$x�a*T/M�jԩ�%~&�^S�"c���i�@���Y��ݻa}�"5��I}
���T���U��qy�5܅iu������v�G~��0ٲ������+�$p�x�����Qdw�_�W��5�h赻㻾$֏>���ϸb�����b_X����Z_tZ����St�nA���("��mn�7��)A�r|�n�e�VθΰO9J!!a��D�涅R��j�'>M�LZ��n�s��xD_�뎈��(�i�kw<| �����0�7�#\����l�yE?���[S�s_�0�gZ��2�#�Ux��5,�+G]��>�1� ��	Ǜ<F;/z�u:��W���T�`��s�àIVQ�Y��#�K6�~��-x9���/v�����c�K�������K��$�	�/���mĂߧ�S�-	���?GM�^��h|�E?��3H ^[\G�wp3.-�#�W<�(3ٿs�~w�7��U���gt���O�}Yw�����.^��͛XJ�w�<�H=�"M������D�6V�����μ[X�,	�b�k�:|�21�<?��/y�g<�1mBe�wu����8�g������}X{�
�Ё3NXpQ%OG����S��'_�Y�b8�{ӥca��<�����;�zp����+A���C���bƪ�5�ן������p��|EHȚ]���>�S��+s�Q���(Bв����ɇ��u����x�1�^�P??�q*)��I�|
G�/��1^��:d���}D�⼛F�s��%�n���q��aޔm�w����Ǧ�u�����e3ڶ�u�@��&b}�A���l�*a%���p��X��{�=?#��[�s�"�����|=��E������e�E<�)5�ZY��P���ԭ��1�o�A
Ȟ��_��8T����:#-}p�ҙ�M����}�W]AT6i�~���Oܑ�4�=��z�U
�OAl�g)���������O�ne�\_�6I8q+8��$�1��oK��|
G���x�
�y�?�et����������n�a�Xa�;.窊\ެ�'�9���ݸ��
:��+U�F`�]���~"�ɧUx�3pW���2q�̎���[�h5����<�M��GV�s���%EG��|Cg�E:+9�����1B1�#P��p�1N.Y��x߲u���R絿Թ�71�}�/�s�i��PUe��!=P��p�X����}��L�.�3Dn���m~~���N�;c7n���k���י�5�������Q�ϥi΂���{�s�~�ѡT�v^����w�$��e9�?�oԹ/�n&J�����gy�-��	�a�t�n;���C�(f-w��9�n��\�]G������sxh��y�eU�ϗ��� [�s��}��u�"j���!�̪�{��2�z�G��W�פ٭�� �:\���맃��ׁs(�����_J���\�Smp��t	�a���&Yi���I�z�,��sG��쪦�U���32����q����r�)E�����o�4�(�{�';�H\��=�:�p�8�pl�[�����̷����m��ʏ�<���dэ�;-S��;VlJ�I0�>p9x߶�D��4���[.��k3���_���|Eq��G�V^�ҷ��z�����g<p��/���Ӯ�:M��{�iq��'���1o�O�5G��:�:�-|�Qt�s<�[1L��c��}�?������9�P���zHx����c<@�y2�ǚ0DS�|�w��|���۸o�:ť� ����b6�nB�{�s%����S5u^}7pw���Z7���}��~�A��Nn���b�_��m���p<�-�=�'���W|�2_((F|�|��W��4��k�~���f���s���]��u�������0	F            x�3�t�2������� }�         �   x�]��� ������Il�?[ZM[e�������{�~/���G�<+d-�WvU��]}g���Q}����`�e ���X$+f��E���[t;n��E�#7�ܔ��i��)w䦼Gn�{�~}��P���������;�k:�[:�{:�G:�3���K�ok��;��         #   x�3�J,J�2����v�2�t,(�I����� ^?      �      x������ � �      �      x������ � �      	      x������ � �            x�d]ǡl�\߉o��~�q��
�ę�{�=B!��u�����X�/������zq����w0��fJ�����Ȁ|�7vv��~�m�T����t����ߊ ���K����"�ا'��/~�����\~�<��#ׇ��Pa.tV�D���`�����$��|^@ةՀ��O���c'OE4 �Wz�Y��1���>��~@+�{Y��'?�R���f^G=?n59����p������/���������j�*(���	8��앶�:�����╶C���Hg�6ZG�	o�587�|F��J1�m����	D�i��,�����������eu;yY��>�~М�46�� '�W92Ӽ��lN�x��-��݉���ɳz�>�ǡ�����?� 'j���� d~�D�B�'���ty���� �<�� U:���w������f��Jhc;��Ԏ�
:�U�k�T�U�H�V��hE�����X�~z�ٜ8+���� ��z�Z�;�1������Xh����~�#P�/'786XH��}����Vʱ��ӵ.H���t����]��5����%���p`�ŶҎ\^�����{�����X�54�r�x/!2~�a9�Qis����(`>�Ȥ�����Y9?�D��t����[�Yݫ4tj���ީrV�o"8��|k ��G�lNA=���si�.��*99�
��p*j�>Z�t����#��m��6]�ap�G|yOۡs�g@Y�!��r��/���jg�ww�� �dA�쮩��3��:��;Q�]9=�����Jv���~���j�
�̪�A��~f��NC�쮅�Oov�k���h!���Q@�K����ӣ�OZ(�;?���xck�Yd��8�1�~�z�n�a>��5I��5+H�N�l ZKmr��sjjwu���|�8sr��3���Zg�s��;�^"Q���c���Ac~8^7qNAބ�����|�Z�v�j�s����f��A�����0� N�>�<�7��
$�A��P|���no����%xG.�~�ީ^�9�@L��N��!d�����4��T�g�t��!���"����@�*��w��"�Rh�v{�_��$ԴQ����I�:Y���Pe�6��V,��7ɳxi���ջaj�OGs
��ٞ�Mm�M�����J�Ɇ0�^���r����иqX��96=���'*U�!���54��#{O[~8��uL�g#�ӧH���ih�rz/��z�L��E_P��"�EѬ��s�5 �Z�$�JP�::�r�y�{C+3�p���O|^��L���w'�jP��(ՠ�QT}�7:�3���iQ?�B��Z�gLi���N� 7�S9H�tn���Zū���,�a:�'���9%���רcʴ�����I^.�y�T.��J��9����]_�sy���%u���:�e��{M(Yq=D�w����릒V�˻@'+��Me�x�w{k�*���O�����*\��l���߶���ı�I����-��W$��� *�UNTX� �r�m�~��Pʇ���CEp�wp�\ĺF�;����D=R�W$�]MB�����hL��P%��(����(O�:��;�Tvg�#u~Ł��g!�C-����j�1�[��m��[_!qv��$ԟངI�x���d����2'�}��N�j�M�P~~���
���*����Da�w[����u�H�Vul�)���RS�����I'���5,�_����b��[WJ>�:U��D��Vx�;U����NN?٨/
��^堢��4xpO���eҘ�w�Ǽ?����2� ���A���m��;7g�5�����!ۻ7�c$����=m�2ﯜZ��;k(&����>ԡ�7dQr�A�?�7�� �I>_82خ�g�ڜU�Ջ�������l�ߜ~S��׼��m[��>����v�6�U�1]���u}6/cs�Xgy��o9��W����x�0k�|��bß���/�`���-����2L	K�`)A~�#��V�b�NlJG|[���q��4f�?�dhg�����,6`P���7Y"�M��'�$���㜞���eN�[ę!��G�g�f�N����ӱ/��q
&�Ms�\�Au +������ACNF�g6+b:�$��;�o�O'�8Qp���� 4�>�h=?V�R9�QZ:v�,}������+�Я�ȊX�T�ry���\�L�����J���~���[|)�b:��`б�|������̮��<H�� �hҞ����=�w��2��a�j���/��y->�&{��T�N�&p? 'Z^��?��O�^^B�����)�|Z��m�|~�w
�NM�)���u9�י��'Sg���Da�E3{Q{Ljv����~����W�%���b��~��t��4�Q������]ۤS#
���m���^��c��ώ^�B����R�&^�E��,pEw�#%͸`�]�
е���Z��B~i?��R����|�r x�]� �[�3+K^�_�Ӄ�r�<�\����]ȩ0��㓫j߾��B�1��<Iu��U�K����J����A���|6�JWc��:����/Ǯ�t<�yeN�r���l�?��D����9U5} u~�7	��p� h���=?@���7���� 0nM*��F���њ5K �To^G'��y��%ntҹUC'��C+�ίW��6~��u�s{�8c̦��3z�6��/_8�����[�l�/�
Ȟ)�s�lq����Y��� �頳O�ФS�O
�����m�ivNj媔�Xi�����6/̑݊w
��J���������j{Z�&�f�"��i<V$��Gm���zWѢ��y/�~�Ն��5'hӾ!�wy�k�rмӐ<��n4�fTrZw
`o�>�|좁|��R�i~n��䩐<��O�žx���u��V�
'�C��0��|�k�ʘ����E�#tNi���:n�9Qs��w���f�7tN�6D��ں&�ej~��������s���[�톟Է����f��A���.���gG.�>#*�Ou1W�%UC\i?H�zy�ǨZ�M��������Z�g�����T������k��}��Um�ɸ6�����QM_��c:����V+�o�~K� �dΑɀ���S��-"u��6 z�1|@]�7���ѳ��Ɩ�h_�N�R�x�����PpmV,���ת=��9)�N!5�^U?U����� ��H���כ7��Ɖ�0��l�'Z|�zj�K%g�	�0 F�~0���׌ �0�N��VzZ��'�ŀ�Th�VĹ�D���D���q�խC��{�Ђ���Ђ`�0 ?�K-�X/���{A-(kp�P�Uɀ�/T��,^�����l������˖r�Ucl�1� ��1�����vTl�͙ �S4�����]-H-�B��N�EX�z�/�Ի_��m�M�8��I���9qAl������iγ�p*�K�Ն���wM�T�'
B\��6�:�p:��K�B�6f ��B�f�Y׮.�6 xf���ǻY}/��+�2�*E����`�#�xv���#��P|Ѷ���m��5Pc+�	���#��x\M�8��4V�@Mȗt�驡�k��Y5;9�q��!!pc�j��<:ɐ8�j��4��4�6FsA٨U��`��n�s㬚w��� '�7:�I�Ђf�D�T5Q!wv``?��s��y<��A�쪙��>"΀�6�
jAU;���ܦt$��m�T.�t � �
�܂�kkoЁ��)���t��4�,�ڊ�n�������Q:�� �G P���������#<Z�<������sm�4��=]����P�LɁ��5})�D�7��Iu`���S==猞�R9�,��XO{N�O yr���N(�%��?i���H?8��PC�E�#�T�3�,q��s>pv@���q=@[�#l� �"��y!t��\�}�{y[�����*�ֈח��Ygx��^qD�!�ᛜ�z6?��z}ө;2�    �ZS�4u�Շ5U�}��!?��v�as�=��n��L{k��=�b���	�X덓aim4��� ����Xd��z$��
b���.�V���r z�L��4�~i 4�#�.0^q��e �#���vė��<�t~�TP:̀�tR��P�N��f[�T��|9I��7��N��(�p3 #~6e��:̏,3�4N����#��x/���!+V���dV9+��KtY)d ������������2WB/w~��'�#��r�xiD��@@$܉�0 ZF��J����#P� ��N���ڒ�b�+t�0h�c; }�K �Չ�0`B�KɁ�J�&".@���<�����QT~�f�+��\=�@�	}0�z[.,"l��0�]`P':�X�#�*ԊΙ� 藣8�gE\��ԉ��N�E9p��kQ���9b��~ ��J�������~Γ<kh@
�s|4 �9>����|y	�g?gE�4��st3��o��s��|4���s3 �#���Rs6��5�:uK�9�`v��ة�g�l�����U%5��dux\��4�Y4��W�Y?^N"&a#v�Y\�X�gќC��,.7$�,�s��1�T��SS�g��4�flq�hfC'�E�j�R�*��Y�H���-H�Y4�7�ƀ#�j�3Q���3�6�E~�tЈfq�0���㈄�E�w��j���DV\�A�bԏk��z���M����Ջ�#B���zњ]?���x5#1x?�|0�X-����h 0!���3��E�qpǌa@���_lp�������c�0�z�KHg�_x+�:\�JW]b3®~��tVl��ә�gvUy���������V��y��L�@H�J�p�ZB���[ل:�r#�|Cj����2߿^N�d��[Dd���I��W{��K��>�}֫�i����A�2��F�z��=CI4�	��h��5{q�,=wj��Vc׮f�g�I}(m?09�A�`������!z������4���f?L����g^ �q/ ��{�ft<C~!`������""ю1��N���o�4�6"*��s���`����|��Ɋ��m��s�׀�� ���P߿��H?`r�a��G5 ��20��jC���ʱ��R��Wfg8��� �l�;�(�|�4Z���"C.�)� RY��'L�P��Nc��]܀�Cڏ�� ����� hD���Lw\8�̙D��1�ǃ��ؿ���i��~&H�b�M� ~/H�~�4Á+ۭH*�h �>@+�Ț��~0@�8�p ��@*���!!$t!$t�I��/���"=D��a ���t^m�y�t6o�>�c�1�Ǚ��xX�h�c�1�46�gyi��P��Wcs��c5 g��i �����;B��l0�����K�"Μ]���T�;T|�Y흕L�pB8��FF���L�0�fe��X37�f�To�m��s��Їf�4���<���N�X#�N���?Q+�4�ӉH�Y4�햐�C� ��ƃ���-�?T4o�>�[Ϻ��&2=D'b� ����@*5�a��'� 𳋎��r�Y��zh@%���y8kg�8@pޜ���L�p�>��Z�B���d>��OП�r:����^h@���z$��I��z��s��/���g |/'2π��@�P�̲9+��~@���	���t2#<-<3�iv��ˬ���ݖΊ<��1��Q��;�6�Z�u�n�ă�r>x:_ћQriy_�����o%ۑ�/��[���.�>7�A��{9�ѐ��q��s�65�O�<[�6琸n�!����6��A�#����&/�ĩ�A�7:�v?%���b�����f��ѓ�����_,�ۣ����1���#G16��V�9���]�[g l�GO6 ��o ΛGO6�t6�q��� Λ�Co xz"����("�����W��"��s�2�<=�O���y���Ew�j�V��3�[�	���!i��y�+p&>�`p̧w�"��
�4Z̍p܅������]B�\Y� dn� ����b =o�)�R���Sa7��8X�S1��Ȣ❕�+t܌�t��H!�@7���$t \97�^��4@sHeU��'-�E:���I�h��Z=��V�"��2�����X=[}���&��65�q�����r�)�Ҿ���(��~�j���m睶^C���*�+�'���	�1`����fJ8�%@�q���'f� �k���y��E0��k��u8��ں���t�gb`y?J܋z�E���
��^��i@�{�+~�|�5�������95=�T�XFɝ�������q�B�g�Ղ����C��L|B��� �N$Ř����������]筡�)���y��@J�7K]��05��j��;4z�c?�_~Zt��3�e�������(j��릿�w���SǗ�n#���1ry�xS�Û�Q\�����]�*�\��:P�4��5��[S�٣��S��V���:ڷ�	H��3�������=9���tu� �q9��@�:�P����*�!"a��2F�d�I�"<����L�E
��BFɕ�"7�ZЈ�ޥ8��*�9m��H=���ތ6��A���MoP���Ϫ�Ԅ4V�qr�Wwf�\�՝���y��Cffj�t,I����y?�\E�������b��$��͉�7��0_��AVl�o�.
9s�v������i�L	��Ĝ}���gW�x�6�Q,[�1�r57�sio%7_�򱸁rǈcH<o�\�[�W�~�Tۖ�]�*Bkx��1�|�ʵ>#^��h��{�F}��\���/����ܨWÜNj��N��9�|���Y��]����|]B�2cȽS�owG�=K.G�=�S�t�L^�-�}� hl��n@y��&t܅ ��q�������x���b�ҹ���;V�0G�q�pe��i9�2H�������س�U7`��b̷hl�J��*����*n�б� :��� j�ə���7 z�� :�UB�vn@�7�z��wm�g��Fdų��5Ѐ�~��w'i���)x9	](7b�D�~��]!�P0��g<� d�3�je@!u��Qc���H�g��OT��O�R�L@r>2 _%�ؓb���"ۘI�@���n�|��;�1|G黀Y�HN�/�CH�g �s��%S?O�%l��J�}U�����p`��"h���8s&�E�?a�8.*��J�4;�}�gN�E
4��|�`���|�(Є�9y���<�=���J���y2N�;O�ɉ����x���	�ZP�>X��[l�_�W~�P� _�<R߀�ր�>�݀A����Yi� +n�����8f<`��ZD��#��O�<�9�П&��g��&'[p.��0:�>��#=�h��a<R�0Qv��R؝BH��C�!y<���vXu����7������YC�J�O֪e���E��AYk��O֚��s�����e������T���ǵ�aH���a�G��d��t�3y�����i_<�M e�xӛ�)��-U+��>���K���yh�~B*����ͣ�������AE��}�u^��L�M8lG.�����������~
��YJ5�����t	Rw�ݑMD�\�h�9�^�h�WW#�S���U���ag�7Ϛ����c5�('G�rY�eVS�����[~���G-{��#F�qrǦe�U������X>�H ��$����C&�)B�B��JVf
$A0�Ŏu��u0)ő����c4�cHEC��GC�^�3���#��T���Z!���Bx��2hn��2d�!����fo�Xy���m�7�IfS*a�)�%�O=���f�K���@Ys���������KH�����@_Bb~Gp�;�gG
�-��Sd���2���;�st
mO"���_��xP��<dcs���>��"/W(S�{ 2��"�&)�z��    ��ɺj�¨���,�����HqX��B�B[P���ޑ�� �{#��#�Hh��I����P/y��faXa�����9 �
���n��A��!tބ1G�ă#��'���#�f��1�is�O--�;������=�eK��E�� �����!���H�y�LJK�4�O)���ۆp����o��Z9��Y���m;�-1�rG�D���"K�NU��6vsG����a'ܡs��m�z�z�*C�Zc��as��]�78��g>���M֐B/M��2�)��O��{�1��I땯Q�/H�Vk��=1I(ݔ)p�m�Cd��Ԃ� �e�Ȇ�f��m�2Uoɛ�6��1j-�:�4ƴ�OL�}|�P/[�m\�������Gfp��?������.��Ƈ�W?K��/e�rm��/��[)��X��3�Hj׻���:�fw���fs�a�cR�����e��kt,����þ5I��*s:�,yx�:�1r/Kj���Q�\�IG��нV(��X=��E���
�G�w��Q���F��^h���҃��*ݟ�a��_�y��	���CG��y�C��¦��J��L���Cl��Ƹ�c{Vf:�����{�aއ_-Of~8Pԟ�bN��It�.��u�)�]{��p>قH��Iɒ@Lm���M�Ζ	bj��U���Ք�A[>�Y��-q��]ڲBL���~�:G�r�fm���S���?<,j�]S�@�+P^�6�.��=�s�šW��z��n�?��3��8Qr����eT��5q�NAV6r�<��)ĔP+���q�l�pr��T!��ܽ4��[�R;�#���e� "�!�H�f	�l"���ʶ�Y�|���n;� ���c	�����02_�[�p/�<�Y:sސLӂ�M�C�#�5N4�#�bm�����/��0<��\#�l,�x�ّ��iR���JDܵR^�6��\�6����&����hXy}f�?�geR:D�9ļL�Q�H��M��2�+��o��HzG��{{E��������]�b��AX-���d�@�\a���i	:牰ww��KÑM��8�L���/�j�-	�fTZ��QѼ����t��98 ��.0��!��l~�:
�%�Z�f��C�#H}ѵ��-�U1��ŘS� G��!��^�1� �6W�������y�Y�W�B��!��:jF��Am���+�	�Ã)ȋ�ڨ�X��`H�1�;�oIRY��/v{G:�^��0O`��Yޑw�lcjO��!���%�4��%��rb�0.�-;�K{�0�N�F݈3:�؁WxMu� dC �F�����$�!�^A��x�6�e��,�a�jՆ ��q";B�jR/:�Ф�x�*��7�v�a�z�7��o�Hh��9���W9�4���]��P+�H~���"~N�́��pӢ�'���>���c�k]��I��j�/,��� ���a9��*�VW�)�"��\G�5��`C1d|ڞ�B�1"1�=�W�R�{I7�{~�*�N.�.{���$3�ҭf�g!$�8�S�@m��c�ܽy*`U1�!���U�Z	��}f���ߐ��!�:�L���Pǧ�D��W�����Z�1v^�u��)Pg�����oi�Z�ϴI� �V�45����#f���|�)�j�Б�O�H�ܜ~C>�-lv}x|u��c´��a̯�6�xMx�BE|�6� �������9G1K���w�M:���ĲY�ڢ�<]��c�޵g-`�4����@���C�"hڀԏ��b��u�����Ll��L�1$�&����^.���$�� ]~�����K�=�8�����+z�g`ӸfI�9�F��q�Һ&�O�t.���2ᘰtb���p���iG�S�!���^�F���S����9 ��p����:Ot�#���,������9�¼�9p����BG�[�kyVFl&l����*N�WW`�4d~j�]��h�82�"|k��}NC>��NBz���u0<�n�x��Gf� �!�4���Ά�[�d��3h�IH!R�ԇ~��('���̰Bzu!�S|͇]��6q�e��+s��3V.W$_�Zi��25f+Ӓ�B;��h1MF���WW
�Ж�U�솘����k�V�%%��B���*�7k˻Θ0���Y�/HkQ��R���7�b��)��FǞ���;gW���_�BUԷJJ�8�#����ui5/䰭%̝F�V��\�'��h��E2��z���U:C���fR�?g���r�G����
i�c�����_~B�k����� �f��|�8/��0jG>3Kܤw�'�^���� M�Y�I��eG���P/|�E2e�2���Ȍ�Mv$��0���PcG>OZ��̛���yy6v�懿�:���>7v�'u���u��s��>�h���Lȴ`s��������@`�!��h\`�=|�������h#�^�nc��	�@�߱������oՌ@ҍ�k���J
��^1��:�Q�vo�F]��!�HBK�n�X"��P�2�Mh��{w⌐�����T��q�8�Έ���q�8��v2��=f#�r����h���,~h�o��jkk��,^.�c%!�hg��\[�(�p,<�c�7��Y1�~H	�Z�&P�Ѻ�����:[l�T���3q����� �M�p��ގ"�^_�^f��Z��`���g0!�jav���vL��]�99vҞ�)֞��{v�|B>���|�4��}�EY3����u6��p�؝�!lՋ�;����W���k"�`0d>�uwF6�����%��Uގ�á+,�k_�m�!�t���޾ƹ?�CW��5�,���U�#��#�L�+qn���IUh����U$���r�y�,fz�4����H�QB��%6��{~��u��ְ.�����]0���{�`h������?m1���Q�kZ	��ϧ�ž7�t���mR���;ȇ}�b�ǌ̈́�w�1���ˡ0�V��qC�8ae��gr�;+á��6C
�*�f�ք4"]߭>��̍s}���0����֡:�X{�lʒ��8#�!���m8�
��@����R`v5�\�L�J}�շr�8���P���c�K
ë!%��`�C�!��u4k��KW��̮���s28�Y�h�,�Y`��������w̗��tT�n�#�&S�ܫ��CR�g�Z@�!��VKT�`6$ÈPD/�`E�!�E� (��*�# ��#F8�[G&��B��25��*^@�L`H~9jIB�Lz�z��W�d\�3��NsJX=P����)�|٬Gܲ�K��a���#/̰�M*C��uW{;^7@_CHqXa�n0�
�u�Vnj�V��+�^=VLG
�� �c�t�\�j�o�̰�A��֐�{V&�+���������,^������]a�F�J�a#�j{n��p�#}�!�C	�a��|�DC��V\�c�C��ρ�zH��H�1#�&\�C�G>�e�����M�ʱ�[��!HȒa9�{Zfnߓr���g��̜VY��!�5����r9��������3M+�EL1��V�����#Hk��[i�df��Z�2�D���Lq�g����jg�������7�}G
��P�Ʊ�8������˱Fh��
}���^^�"�D�%s}�2s��z	C�Xa�x9���ҫU�k�)�L��|�[I�
-��l��r���2n��#0U��#�Y��.~{����/��0��
R_��!��]=���$�!�Ȃ����Y=�T���T����?�元������4T�@��[R<�����}(�+��y�o��aOz+aO�t[;� �t�V�n��L�)$��Br>��n����%噈d��ba�\{�zIo؇&+���~��h+�a\_;�C�3"��E�U�껪�O.R,	�5�����^�X�o�oۃԸ�\��u�j~!L�@b����1����5�39���?�Ħ���~�K���w*�{o���WR��T/��OE��#T� j    έ��/�5�JZ���6w�!Oc�����%_�5��x>!��N�fԂ}ߠw�+�։�Sa����%w�G��]2�ܛ]S��;1tv,��u�wV�����4�:+���%Bʽl�w j](e�ō�j���1�a�1������0��)�U��6+c�k��e+/�Z�D�2sl�>k�=`�5����+�[�1���Y�2^>���a=1b ��K����`�5��~5�nXG�^qf�#4Md��Ş�ǧ������a�-�.�3n!��R%�@��ECh�(�� �E�j�w���̗:ƣ .ѐ�~1�0�0MG���,�_@�Ó`��w���U�%�{��4�3o�ȥ�>�g�!�VafC��f-��%C*�_�jiex�G��k�=�ͺ�;��|f��!"��M59�GH����P�O�;L�����u�j��]f�C-q4RGh�(�{�X���g�B���#�HR�T!P>�M��F��4d|ڞ�e
9�L����Ex� P���)j2��c[p���+��i�_�+�2WqZ�R�D1�w2�k���(^Ο2����B�1��!P=a0����`�`=��2�:B�>�z��k�ʼ���l|4��"D����m���Y+�9���}�!����T�[#p�m�0 ��QC�;��`K<Fd�:A �4"��W39�j�{0X���\!��Ҏ��(H�k�R֐L�T���z=w���m-�j���㉗5��RVG����!���w4�g�d���ĐBD-�όT��h#:����/b{��秌�z�.S�Ek�xC`�;Wt1��+�L����Ak�_��
G�!���뫆��3��o�̋�!�p�0fL�H aH���@W-ɤ�!/p�Đ�S@Bj��]j�3��1$�7��#-�\_J�r���(oy�zc���Q���M#Ov�1�X�+ʆb����!g�0�HC�% �G9�{�ЄV��I��[�5�CS�������H~8s���7�S�'<ϑw�6F�͞�/�:2���I��[A�Rպjiie��4s�e��!4�u�[>�B���B�j�6$C^'��zR���\k2�/��0$?�1��:B9�ԧ����BP�!�a�7�.X'֑�i�w8�l�R���)W����Q�mႂ!�a�"�F1C�KM����k璴#�8��N����r-�WdH^'x�rX{d��M܂3n���Z��_I�(��\����/��2�	u�J�PBkgm�'��l�dC��!���H�Pd1�f��@�!��N����D�E��`Mi'��C�>� �1Ϡ�T�A(=������9,�yC�z;o�OXH�5������'������Z�Bb�Gص�!z�G��~��]�� �.��m�L	�t3�ǯ.�a��D�=��}mS%�E{kku_�T%�L��i�9�"j]F��!��q�4�BLP[�ƞC�!�����Lk��¸�3���V&�g�_$���,z���\��0X���g�>e3JX��-3�~C��4��@	LS��_�:+���E�]Ⲍ!X|'��rw�%\1Ȱ�2hR��o�
MiS=�K p ]���r�YR=B�k�ث=�IQ�rC��a��G��]�2#mH��k�ij]��r��Ii���ke�=���zr]82Y����z�]8����^"�"7�!����T�zrO8R��蓓C������9�|
-��w�=99#a��z0x�Oj��''��#4�e���.i�g���9+�x�9���nGp�`��9�[�*��}
;���v�O�2H��I�I�f�ǩ����+U-C��)Gh�*�"�Žb��S�[8�eHG/c[4N���[C͋�Ƒ�'�5���L���Rh$��:���!�ae��|��r�9�`�C����&�О2 �F����M&IS��Tj�L��R9{Jǹ���]U��7C�&��T�V��5��~ȶqn :R��|ң�^k�Pz+Si�n02��j�R�ĻL%4�^�� �y��(���T�55��e����PuCq��p1����y���fހ�r���d~�^�Wf*uS2��Q֔|����6̕��#v�jh����\qv��r��;�h�6�^w�Y��8���5�RU�)y6�+���(qs��OK�-{�K+���;#O�|F#幵��9<Joi�'��`=������T�H׭�n��v�1ʅ4iF����3�@"B�Ft��-��Ҙ���7h_H|D����1/�Mܟ�]b^�â���b&)����+haE��ܘ�y��o�Й#�@j~��a��*]�h]��"^�3q�d�Ƈ��?��s.ha�\Ů�����IO�K��{�yju���E@6����V��RÐ�Z�(��g��q.K^dz^0+cN#�!Н��0��9+��s�4<����s�33�zCL��2�s���s��oH~i�T��h�2�<�PAJ���I����%�O;6��L�3�VF���}�P=���1z���8jH�!?�_�ǌ�nC��\��IC��k�/\"�`<����QE3��mH{�S�tT��U骨��+��8�6C��5��&{�g+C�@ԗ!W�W��^r��z}ࢷ}�e�%����=�81�r� ;&��!��U:+�op&�#�ad���1vxĵ�Ym��}1HmiH<�#��0G�7�=*Cڻv���p:�{�3�5�:�!�S��a���������&���^6y||����9�|�A�r:G>��͹[^T6���CЁ#�|�`G>s�V|[����έ���;���\�
YZ�8/g�%�3�j����߀�z�j��IiX?�hOq�C0��c;�#�呕VfF�=�����#[�!��n!<�k?]�GK��+�Ю�{�7���sd��a�`�x�U�G��\>嗷+S�o̓kJ��('(W{�����(+�D+���O���#<��û�a�Y�+�l�����
�<>�R�(��Z4b�6Y8^��'�u��*Zk��n�(���V����h+gBm�b�^����<��wo��p2�Վ�� X��C�X�3�8���f�a�p��Vo	���MDmA���!׍�����:Cp ����{��bG�!�4��,_p��o�����S^����[���=�9B���<n���)��{DWxG��!8��>���XV[��*k�b�I��9P��&�<�I	�Vv���A�L=gp%^�2�'й)D4/\	ːFD�bx%|����f��߄zam�3�����	O�berx�e�(;��m.@Cڧ�U��Jxa�����~����7 7-��^jw�vbXϮBH�nB��݅��q�82>퀷YssC��5C�g64x�.׆����ڪ)��P�x�ΐ�ߌP/SOk51!J�e���u�uv�O�E��k;���Ra�z�z����eH#��t"j�|���V^�������o�Y��]�[�_@RdC]k[s��P.BZ���ɾ�<_�@]k[�aWrv������f"���Lm�7��Fކ��H�u�q�A�,$�4�]i�}�����NFX~���B:�BG���������I�o8�2��tl֢��Mrw� SX�����a��qϑ�+�D�)�r�f:C&�ᔰ�9u���]7�a�s����M���H��Bz����6�ܘ���c���ځU�1G�'�6I����x�V	k�Uº��VB�P�JXIk�=�ʶJXY�1Y��bH�7j{��(m�>���������U��e�U���ʁO{�W����&����Z<BgH�mϔ��X��YGhj�3���M։�w*[
����̤͹��L���H���x������\�}DC���c�L���z��Z�KD�,<w�B�t��Y�7�J�:�?�M�T�zrs7g�Ę6�|�rgg5�O�V߫pu��)o�������8�T�(�4�#͡A�m��wԘ�$խ�a�<Phk޶Bŗ��ީsO�A�[�t/I�x'�%��Mߌ�殫(    ��W��t7�0�z���د�+L�~�+�_�����H�.!�נe!߾�'��������>�g��vڷ���b�K+W~1�@m�eА�o���o�LXA���b���K�m1+XC
�Ԓ�����=b�%\Ȇ`N��l����|.C8����Ez�h�W�\^��C2C0��D6�NdC�ݥ1��V^�B|bj/�@\d��#��D��G`�oR�pC����n0�,�wBJR�N�xn"H~�"�rU��|����KM<�!�PWs�f<�̸IP�BE9/!P=��7S�����V.0h6�LSD-�������P/U�*��W�|�!4FT�w	*�/R��D�*�M��:KU���c����yS�k�`ʓ�אID�B�I�D^�K��[;��le(�+�
34SCHoQ�*��0����{�������\C�KM#�a\�Z����0.W��Sպ*j^�z�h������^m�P��TO'�a� ���޵h��c��!����߽"#�1i��[t��9B$�*^R��..99��+qyP!�.���f�{���{Р��q�����h����`�D�#P�F��0\�z�#��BO����q�������󏙜G�9\5��ɽp-���- �p�M��y����Ұ��l��&GHs�P��z��.	yǀ8C2C�T�s��0]��SD�,��4�	mA�}��n����'k�uu=t�k.��Tōr_��E|��?�}�Jj��a�5$y�������C}����l�ʄ�G7trB�׃L!�m-!�X'���婞�Ks��\����_���{���7�Ct�*�3c�-Ƚub�����:�j��<7��:V�iޡ��H9�=Ycj�sq���ߘ�$~���}����7�O��'7BM���y�U�+tV��T%�'���UI���KGUk�4F�U-���䡸}(nW%m������G��U�jXc���a��� _z��/�a�Wz�~��uU�V��aٹ^g�}?Q'nN�&�ѢJ�)���x�+��IP��/�5W�)<.�Cs��[���6����ּDO=_��L�8:��"����28�̷'�ǐ;5������LGc��ݟ��^.��Z1�����%Ѻ��f�{ջ�O0�#T�p���by����_�{d��z��W��:ZC���+O��#�S�~�L�RO`�#x�o�R>��jwf�#�ӝ��T����Z�(�����|���Udk�'�#��D�9�P�����U�����P/]=�P{V��B�nH���;k���B���V���w�BZ�� +f=vMG��%.��e?���)���]TY��k%o�Z�=�����FD}�Ls��Gȷ��d9�!|��@W��omi�vW��P�*aH!�Y�⭇yi�,�t���H���؛��ˤv�3��N����`���6/����@`e[a>�*�e(�+�Ġ�����ݩ��ƻ����+Һծ=Q��qsc��[���^^�<5C��'��I�G8%�g:u��:���s!���-��.A h	3�*\��\�6��o����yCHqӘ�o���Yi����|��/%0T⒤#�u�v?��.I:�'�mR��f�G����+��|h�#<=�>�������nܹ�x��Gx�vF�<��BG��9�]�<�;��i)B��l��<m�&�JԽ3�A�ͭ��2}�- P�Ωؑ�_Iʴ�ޖ!��9;��4����Y��襲v�ن��_�K"�B���6*kE���c�p��W�9��2C��ٖ�+(�8>����V�]�1��)���3���ۧu�k�l����w�N厬w�1�W�U0Q"��#��F�}�/y���� �9�m�Q}O�!oǍ0#x;�xyO��5t~nJ��H~9��q�l��Y�03�Й�ቹ�$�p1�;B�N	5��PB��n��E����<��p��&�)����� &)������ؼ?�3q�ڡM�-�b�=�4>��r`��W�Ng����œJ��yz����Tvhh]H�����N��vr ��TS��#�ڢ����r���0�-ۉ��&�#@�W�j��7�I|���mq�u�ܩ���ɝ*��r�@	0���}=�%�����vR�<���k���!4�{��|i�츖oD�{����g�������9�������賲mV�8~]��$h�Yk����É!�1�Bz�h�����8+O�"��^>A�e\G��^���R;E)o-|M���9�X��S�K[��Z>|-�2'��@��c9p�8��F/W~!�������ʙBK���Ea�4�#��҆��E��9ڷ#T:�Zj��B�/�,���֙!�S��Zaj�(�o;��գ7;�Bs6�
r���Nu��v.	C�;��=U/�~�_G�٦vᇃ��ݎ0>��qR��C�������k8�P��T��a�l+�M��,��LR\���v��9B��z!�N�#����I���M��a��|y>IqI<DРn\��Z�3+��[�]�>�SE�^�u�����9�īE���_]s��]�LƐMw�c�m�`fH!���������¸��<d��J��B��!�vi�Ȇ�V�9��5���^D� �#j`JBr����e<{�HT�S���r
��ڮ=p@�!��#����%d�r�*h	����L���L�������P���:�Q�����T�S�R>�/��ʥ�'DYέ���o�j��#�HB�S����ᖥ#T�¸���?����4U9�ƆP�L�e*�9�K�>�<�Wg�!T护݀27��!�X�nP�+a1�I	3�QY󅙙�v�����S�x�����W�0�����/�
����t��|T����!����'�mp�h:�P]��͈�\�\�\'T})T���W�����]�뀡r!�!T�[����P3L(=��A�v���v�v���v�����^x��*�#�C�G����=Gw�Yy}y��v�N�Ls�z�'�<�ٗINVәz���"�}ʟ�w]�zs5�����IKnr",��&���ũ��C�Mn����p����C���W�sr�g�qշ8��U�5o���@Kл���NX#�St��˭	zy=�tj*��7�I*=�}�|M�I5.�n��T����
�B�p�+@Wӗ.w󝤢I~��2B�T��,7�R?B��B�'պ�|L�P1���1O�rĀ�sGϡʯ��3�]��l�x���P׼_-A�0'W��K�T��n@�ԠK��U���To]�[7����#Y��/UI�	�s�d������l��Q�\(^���WA�����j�y��ya�;M6��.��Dg����r�����Br��A�&�
��Mbt[y�7Cx��!7Qr�e�Wۑa����m�ό���#���!4�$�LS'ξ�� ��k�ƌ��!���w�<id9(Cl�2B�@e��Lj�zt�Q�z�W��i��������_^.������l�����TjH{��hn��#G�=C��ZZ�f	�4�O��3�b�8����������+�!0A2�^��A�oɐ�߈bHŊ���,��Z!"yg��H�2� .iD�R;���e��)��q�0�K�x���	�r�C-�`�C�һ�Cdp.窼#0�Ho�R��$G�� R�h���ś���� ���#)D��[4C`�9O ���Ϙ(�M͘�&�r�>$�^�92B]�f����+g�r���敃ƗW�I��pp6)G`p�a�y���Ex�|��lB���)j�U/�{�j�2:y���/`̂!�Һ�c^5�a�w��$�V�|��3���o�Q[�o4�B�%�V'%�E^z淳q2�]I�o^[a��{Ecg;�#���Ch�
��e��]�YR}�S�;� >.܋0�W��)|�Ϟ6i~k�#U��$�ja��6y�N�H�ȇÌT9ZC����u��_p�B�aط=���4�U�HoX���Uʋ-��EsaX�Ȑ�'"�)^�    �V�����7���oX��ܭ\2޽���qkʐ��b8�ֹu�GYY�l�+iwų�Ǽ��T�jy�����<J6�ԭ�B�4�i�2?�ʚ��F�hv0?���7�gͱ�h����������3C��:������䩄ZH�f3�����ɐr��i�9RVּc���5�#ee�2�HY9����a�xj�_`j`2�#��Y3��Rֹ��;�'ee���FμB�0r��G>s����o�"ja�2Ɍ���If0Sʪ�������$��ȭ��/>�}x�HD��X�he�J������%eui?�O�u�:̓�`�7�^3�����s=�z	�B���Q��-��5mJ'�������<xZÐ�_�zh&�������S���[J��7N%�P���a8����^)�K�Ʃĵs�K��\�ڕ��VIa+��6DX/7`%.��<O�e��:xuO��z��M{]��:Y���Pn�J�	}/3�.*v)�ճ�;/�+��?��?��}m�Y��}��RǷ��r����[�:q͝9�*^(OY���?D���O\g0���[�,^�����1�%�����Y<�w+�p�tm��j��Q���t7�1�6sgEL���(-"s�1\�8A�� ���������ƐMD��%�P��f	)DT3D�8�K9�_?W�1^[��Ɏx~CH�
�⨌+���y�-a��q���[��n���#��(q5����?h��P���皧!~	����������k<N@H���7wʉ'q�3�FÌ�I]l�{&��4���A\~���P�.fP{�Ûv�q�F��A��	͙��cA��]5���(�e��L�q��G�7�}>��`dyδ�4??Y�$�h\r�h���&6��ܘ���4m�8�1dQ9�Fu��Űy��"����&�!�"&�o�`0{3���8�b���}Ε�4~3�t�j�Ԁ����[hs�ZBS�Q�/�|*��a�q��4�w��e���!w���NȖ#4�����Բ��@�&���<!Z��q��8�� ,C���M{F��Tα�L	�cy}��!{g �6�[f��ɘ�H~�ă��;E��M�e2w�;�̝C&C��\y%|�ɰT�zek��T*'W�#���ԗ>h}��Z�S�A�8�2���?��ú#H��3�E��"��P�C�!�͇Q���Y�@�+�H���Y��ȳ2��Ys��xV~7&R������@�3�-}Ch�#�{w�wj��7%�~�h��|��{CY�9e��S�C1���#N��/ڳЙ@��꼳! �VUv�����-��Ъ�0Cޭ,Ӧ	g�!�C��2��6��;x>a�ѭ��a�C[/ӧ��h�nf��U>i� ���:_ÍiCh7�Z�j6ܡ6�0g�|Gi�M�0c�nOC��E�&��I�ӧ�Y�o>��6�W��+���~��"Ӟ�`GC`όsj3���qf�f��.o�xp�����w%���C-��MtG&�'�:]�n�;S��tG2ӄ~3���^5�G�޿k)�Kz{2�Mh��b�Ò>��m��=�0\�\�s��qC꧖��l��L����[z���#��,��Fׯ�͟�^�wo(���E��=3��4"�����2ZZ���z��1�Ӑ��P��s�#�okWb���!������p�r��Q�|�Z�=3�C{fN�%Z�ji��P��x־U��x�\f��NG��^fL#�+|3^�C�����z����s���Q�16��G���j��.�5�����9�Rm5���7�Z�m"��H/%�l:���(�q�>� ��G�j�=�0P�IfG>~%�2PYC0�>����Q�@���+�;��`64��!�r��8򙽸U�¹�LR�Sd���5+��Z�S&�@(C���_ ��k�;C-�c��p��;j�C�a�Җrؠ�z��q�7x0,��W�}_<.��w�}M�ai�S�_eL��kC�UC3���(�3��LQ�u�|�.�}�YS�WS��ih~�f4X����o����ݭ����"5k���z�4�G՞���44Y�NK�9	H�ʗ�:��r��Z����UWy�8$��'�ty���B%?�;1���n�y<�D�@ξ�xh/��q˴���k�4ҋB��Q����LKC�f����V����R�B����E���x��;RX�Ԟ�Bj��m���Z�QG�u� �QCHq5Ӗ]C�gV�(s�h����l}��j����4���������!�M�z���7�1��t����ZL`C�;c�6�憐�]�����s:�\�������^�'���`̖�y0��"0����i82���%"8D����7���A3i,=�]�Y�a6�'�h�ێQ�4���7�߈^{����C���}�sl3�"�sH<�78R������u��۰&!�f�3l��;pd��
#��M��h�����\0Z�EeC�E̬!g���Y�ȡv�Wi��7U���) ��x���ޚ����%b�����P���F�0<��H�uA�m$��������<E�Z���B�f���ӫn�w�h咝�/�-M��[��B���N5@��}?q�ҫ��!e������!���*�����)o���^o\�2䲺���y�hwmn�����эq�=�į�[�>˸�Z����91i�7�.��MA{�ٽ�k���`�7(�D��r{:���wr�L��i�7��=`�7����=��������U?>�y��յ-3�J���Z���y��V���E{X˃<>����zR�p�<YJ)D�7�H҈!� �<��-�U�`�@X�!�Hu��:�3�'��#�m�)VpP1�<�VOrG�I��=+ӫ�D���e�r}tY���m�iU�d�EГ!vj�r����_fT9�7Y�3�A]���TNGg��� N^Mp,4�d*C��GWC�3@�!�S�8��T���CWN�#�x�*4 �Ґ�o��L�{���|� k��*'��HBH�P���"��"~��ʙ��r}tCm�E��!�N�ծ��!����ő+�C9<�&VAt�!���ӪX޹���x���nZ��B;Z+i���+y�ăJj�8��`cH�gP�I�v��0>�`���0�,��!�"U��U���>u�}c��0�=>���� �BDc�?+��ްVx� ���ްz���^mD��wta�l#���^%�&�Wa5���k����J|L����	)s���!��Zg�����o��g�9�6��R��
!����R�pՐ�w��pd�@�~ǟ�U�����V�9�% ��F�y2�MʑWd�Ŭ����֧�4%U\`�L��1�~��Z7�k��dZ���U��;"L�Rê�s�0�n���~���j��$��`���=���7!�*VI���#Їy�z%+nZ��0҇�L��f����B�j)��UJ+�/�����	�fhv��=�T97�G2�
#�D�M�;H�5�X��ﱌiUm�,�I��M����1�
om��+q
zo�Bz�ڂ�r��R�X�^�0?��.d��ΐ��o��Zzw��ҧLj�?�V>_Чf}tI��`�̤�r0Gf
s
��}��w��V%i7�/\j���%�l�7�b�!�k�9ěi������C���j�����
��̓�3�M�R��(n��9�Ym�wPuƂh�[qu���=uA��)Uj����I;)U����B��M�t�SӘ��Ƅ*U���P��5&߹�
��[�#��;�v��E�R��{S�ۚ#L����EϢԲ�>;��2=uI|Y�&qa�s�C˟��Z�9���|�YmP�h?3�C)��!�ܚi:q)���yǧ�#�/wb�/4FI�� ��R�F��;���[�{l��=��{� i�X�$bIT��B3���t]sZ	3�G��-�'�l.�&�Z-Whq\(�xM�;�x�ߡE���S�Pyw�Y�\�g��RK��S�	8?�����)�4Ē2��o�fe�ʷ%n@�b+��    QbH%�v���C:�O�^| (����,~��D��tX�ɬG�7Ҽ�=�0�6����OT�G�֐�r���-~C���\��ەTo��3��v�9�Է%�Vw����%Q�GRh�٤��>�·qn�2��j��9܎w���.���]xG>܅ow��w�Z�Z"��#�
3���2BRp���fr�ᦹ#�̅�Q�����Wt�i�Ȅ'����'q���r���;
3�I>�eH{״'����	��f�!��Gg���C�&_�耐����#���9	1�w�a�~�0�6�\]�����C~��}����kz�����~�p�`C�r��}n�:R�A+Ki֎�R�Ѻ��ڦgnL!�\`z:�.·��zg@�3��'��!�+	��hk-����'���7�����&;�U�{��v�U��(�j�EN;�A�BbX�����*�����NefI��u�|w�uӂ�,jov-����e� f؂�۠�z	���Os�:�Bs��X�33�~9�ޕ�)�6��&�EՠKn�=K����������]mޯ��{��K��$VO׳���y��T�/��?�S����E�fB+�����3li�"R��Wt8v,3��лu&�!�nU�>>���!`3ކ0�n�,j<U�������<8.LC�Y���UBz�zp�q]�]o��xu����b�RBq���Fh}���2�����o(uF*CH�'xk�_C�;�A��:g��6d� �*.�]2�"<ېLD}dB0���o�p��"8��$�<���?WW�(K���6����$B����q�������,�R-�i��jAC�#��Ud!q�.����a$):�05}5~ZBz��Yy��5���0�_�o�ͯ�ܘ��#H���x��E0$l�A�g.���<�2�p�;�XKj��r��ќ;p�u$)w	�`1wWy���85�I_ѩ�%�n����S�K5ө��ߞ�����^�&�H�&�ӁM�N���"J]E�48��d�	S�L�Ƅ`p9r�y�����;)����\M�Om��TK֙����{�?�,�C���ݳj�9��Jq2G�H}k�����fr�&�
���y_����U����5I!�,�P�#����I���wǫַ���I��7&L�wd�|M�����7!���@�[�}s<�>Z�W8�Y�d]K3���Z�LV�J�;Ṗ�y�4`U'�s_O3$�L�LZ�����4�7�r�?�1��ɔ�ˌծŤ(�:s��� ��J���&�/�ięx�g��+�_��~�AGF?�1�����{(=̂�T$�<���鿾��(�:cA��]�Y�j
�t�$���6u����R^���|[�R�B7FBF�����v�E��3c�#�*g�
��(; \{ٰ0�@h93�8RaѲGkN_�6Y�:�)'��m���:��>�;â�ԀF�#p�M#2�[�'8�yu�u�|����e�<A�Gns��ߚh��eb�s>8�IoK�m��Z&�8Λ�q ?��+Q�]�����A��O��v��������}ǎ����`�@:�����ȏ��gG�@6�=K�[�$��$�;e�vL����O�����䳅%�3_^�g�@s]���+I��-��e�e�������|�nv��HG 摼�]2�}L���I6��5M�\��M�&�d����_����M����ĈZ��:4�<�PWz�b>+�9��C(�v/�J�����7 ���Ρ��zs.�3UI��3��]�кPj�g�`

]s�:T�|�\�.��4���_(�뒾����]]�w"�V5��:t���R.�[D�K�D���\�b|a�ҵ��r�?��\���,(�$"xWqk���JO��͂24eq����B"�m�Zu")J�;-��^����$ב����`�r��@hɴ0�@�[K��۞�xm�
����ȵ�~BH��H�\p��R��W|{o�u]�4m�[5cG,R�O��4��t`���i>�`'�G4CÃE2p��<�䉫�V�O���j�2?֠Y���h�,����f̒j����*�{1���@;��A��~ʈƱđk��2LV;�㤉��v7���I[%0b�/�����w��l8�8b����5نZ������|� 5�����/^>�U�m���ۤw��Mz��N;��	q�_Z&6�M�� 6�}i�nf�_�k�\���K2s��i�B���H{9�]�cێ"��vd�?�[&z��s�Q�p�u\�r�B*k�B`b3 ���-}5~V����y�[u�]�1�%�HHe�Z)�"��(�Kz���\㈭�kɭP�z�%���rw4!�_�wp�us	8R�_�t�]\���]X
F׮�)�k���1S=�y�zH�6�
f��Z$��bm?��bm$̒һ6��H�I��?��ޓ�����޵�����Q"�z�M�m�/��H})�����(}h������Sy� GG��h�l�c�#���:H�f-�21D��^.�8�^N�M�)n�R�I�A�4G}��v�#��S82IqW����(c}0�f 4�k�0c��f.nڋ*��4wy�`��W�K�yy�g[G���g���y 04K��khW���y��Ms;\�e�%����=��]Sf����]�)�%*��j�H����~ɑI$�D#|Z�7�5�ÜOM|8a|�������S���LT=3�4k'I<���������|��J
�TI!s��*�k�Ki�H�d�A���<�7�4�m�j�h�y��ّZ�lZ�x*�(�Z�c��3�Lj��0ʬ��V��7�U;I�A�j'ie��6�D{1s�0ս#R:�/������;�H|�4kn�J�vYfBa�zGn�/�[I��/^��ǔ�^�W\�aV�@��R=thOm�i$t
d*�N�i$v�j��H�vY�����1��_������ O���VDGL��]�d�.ĸ<` s����9�J���906��g�&C1�W ~��2������@��as����bK�܀'ˑCDmORl[�#��ڂ�n��*��a��Gn~�O�D�;!��yy��I����q���;sQ���d��8IF�Mer��v&��7망�v�z�H��7���|] ��ƈA�+q�����?��-���7�� �-�x��
���):G)N�8�m�_j�2V���E���B^f8����~�9�/��o�"AG
�����R� `�@G�߾R�x4{J��O�9�����Z��\�za�s�B^3
�i����ٛ��-�ms��6q���M�q�Ól��6t˕�6�C�Z);s\�qXG�O-��,�0��S-���-"*�#!�('���������h��R3�ɴ`�;��;�:�v�AP����Ar�)t�'gkG��������ɮc�:¦��w�mhp�9B�gja�[�|���l�⽓�if �l�`L|r�V���l�`;���c�t�K�t?<�@�(�w��BAk�C�F�u���	ئ�#���UH#҄��nZ�#4۔r�&��j�sG:G6���y��7
p|s���;R��<���\>�c�@Hnk<us�IlK���d�0G6��bԷbg�@hc�j�O��	+7�xy\���_p�r���mR<R��c���(��;;+B��93\��(z�Z�&Ww�:����#?<�Wq�q��Z�7���Bi��x��jiOKHc�8B��?l����@j=M���|�����'SHa-KH����'�9B����3`Z�R=�E�#/o⓯�z]	�f����w��9�Z�"�����գ�GB�&!#�zP�ƨ��������6�� �đB���|���~�7�*���w�x%��v�s�ꅍ�#G|��E<����T���"��B%.#�Bx�G���Bdc��""��
WE1|p���:2n�x��tV��Q�Qn�GS�7�I�#-7�<�r6�Y�� !���9�r6ыM    n�X��U����#p��3aN�&^������zꛗ�O��+Ѻ�wա�Vq_nf^.*]<�}9<��x�ηia���,�x4�ܗÛ����P�������6U�U�f�Oۆ�W����m�@��>2��.�-ʎ\�m��P߼�#	��.��P�]���L�o'�rqη��|P�'�c�)�jy)�0Q��~ ��㙟��M'�eG�O���l�8a,�#��W$�0f�K_5"]cִB��C-v���b2�	NՁ��[�Zh�dғc��!�]�Vҫs�w���'VoM�R���^����  �� �¡}��N��LZ�{b�4�{TnE"�����3a��C��K\���f��H���n8җ*�=E]i7��+�=P��!liL:#d҆9��9���#��񹮭n���̽5�k�2_Zdf�aTU��i,�6�9�c��n�tc��-�qc�Z�{܈:�Ÿ1T�w��di��qpfG\I�e�����fG*����o��@�O��E�7̑��0NG �x!�����Ι'+һE����r(u@������2T:��Y�&5��Cʑ�R�3U ����?�2�����z��C-�[5T ��R�T�lAp�w�����j7��E��!A�������x���\����{j�
Rg�+��CU"jaJ����#P7�Q ����P*^v�YBh�C�#���'d��фl�3}T@�j�w
�L�NSv!����H�4E�	%�Bz5e����Z&W������yd��O*�����͋��a����?G:���@��ϑ��G�Gx;O?���v�����w��G57�l=G���e�	{��^�����۱�Dp�I!���{�����(�[��#�߈��l���_��#��V۱�y
(쿎@��-+�GyD����pT� g���&^�,����EGp������������yǇ�Of�	"M�O9[�e�XG���R��z8I��� e�ak[H���y{��m�"Hy���}j��Ol��܆2�l�
�G��-3�B�֗(����'��P�,�%.�/\�p����>�����:WS�T�z}չ���Z5�`�\+I<��ȏH}���` �Ƒf5L�s�����`o���`AsށD�M�����y�y)ޞ�+ʤ�u!T@�29��Ҍ�|�l~������;<q^ƥ��]aS�[=�AuY��.ﺻ�+�p!�òiM��&�j�̆>���C�P���$ҫ�fC�{8UyPo�U��>�d:tu��*�/����7*FM���!�u����:]�����O�̫1-u�7JK\kW��U�Z�$/|�����Ew��$�6��|��ě�mτ��1q.\8�~��o�yy�TmJ��#��ab��p�*�ڍ��~w��o��xO�i/��]�Q�j�p��������
���M�Og���l�#N��;t;`;2~�A�K�."]��/���SC�YT@��u$�����׼���%��8FGHqU���٭�@\2�|�^_����|��B�!�U��j�����p������&������/r��7|��B������砖;�ijQ����-Bz�8yH���!�=���#�Ût/vλ�@C���hH�;�ޜ�A���/��Ed�l'�}�݋`׫�Z�4fcl �H҈!����zD5:��jt_�fC'�5�@?Qsu:��C��,=k�ej���U�3�J_�iP��<>��+ʤW�iP*�Ui����Vޱm?�6j�E�Y�V�A�G��i�Vk�A
���_��C�w�q��#����~ʝ_L!��=�te;�}�f���e�@�� ���)���b�����bD���DRKt���8����(F��#���ɷ	�����>L��E=�?#e���)�jO��L9(tfG�3�J)n�E��Lz��YԙS�bw�r�wS�B��3Lk9S����L}�fg��@qo��K��|�@�3_E ���fB�TB���b�Y��+&���7�zsKm�w���9s$R���s3�:sBz�d�0�Ljٟ߉2��S˛���I���>���r��!�c	!��!��t�V!�J�T�"�j�<�T�a���3� p~��>��Ƥ~L�B3�#��Z��&�@�b��YD�+jwf�E��/Bw���R�E1���E�����y�zinX�Q����ʇ_h����KX��&��/��|C���A��i;к>������Vp��o�t����[��h���j�x\=�&��q5�T1U�zR�맢��s?�W��5�[�+q�:��(:[���ʵ���C��C��ח�c�q�;t�����Cw�/4��w�����V��l��1ҡ�6uxΗ'�Z(�z;�M�C#/Ĉ�Қ�,��^�Y*�U���9�&4�\%�~�)d]���ɘ̩�U�.�"���	�#7WJ��l���9�:l�JF��>��	��*�s^��t9����{Şs�]��C6O��A��0 ����-�^&�S<�s� �Ŋ>>(nW���gu!�嵄��u��N�e_���c�ZI�B6h٩��gpy8o�G|��r})��\U;�V�v�L�����¿���m�8��i���r�?!i����a詞mg�zH�H��桱�FW�\qd�=�Ė^n�W�ZCpS�5�O�h��hi?��I�c���f�����F�f�
�ʂ��r�`�t!�x��x��vtdiB��2ʋ�!��LQu:��;��n��1���������H���tx'�j�=��>G���?���l��E&���5GH�Tͳ��H�Wjk�敾�{���kQ^?ex���ߑ�Y�2����@�Y�G��E~ő��~�(�!>Q�Cܧ#�,ц-n!��ܑ��OG�[f7��+�����]Z\g �Յg�!�;�D��zIO�/�?-�ޣP����@��~j�����s_���-�0Ћ�BG&�{5�"^����t���ݍ������v�c���Q�P��{%F���d��%�G5ղ�!L_���3��i�@��22�/5����jt�[�jt-��{Rt�Щը^�.�ӣP��_��s���֫z���zqo!w����o/�:����o;Bj5����Zn̠��:�ce�.Qo�em���6�xt�i4ϕ5����_m�T����w�w�z=t5q�_���_'����D'����k���nW���UE�o��kF]~�'���ޮa��;�iݬ��������ՙ ��*����?tz��6&B1(�}�R-��>!^��2JAlc@L�W��2
��-���(�l��X�;B��\H��E,S8���x_"w�#��Q͋ܶ�v���I_QFl�t�"�f�xf0�j�Qv��25p����l�t�b���]��8�̒zy3a�ġ8���j�ۙv�����������z��0�%�D�\�8�)��<_�9�������[n_\��:���kY�B�wX�O ����@�ʵ��9Q꒴6I<�8˛G$���^�s�����H�Wj�PS�ԵBMI��\��2<_xm���$e���`YQL���1+Jݒ1fEI����Q�%�B?ݖ�4��,�%r7q�~:��8��Y�Jô W��2�g!��E��u��p�d��E�@�y �#��d�t"����|������Ȕd�-A&*��p���z��[kg.@�#�Kf�,����C�T�@�\:B�n�ޝh9/-���r�G�|�Ԏ{����d��~�]	��q)��]	�6��z&�}���n�!a޷O53ӗ�y4#̓#�"��#�J������[||��>@�[=�^���#��W���x�����_G��ț�4%��'3R�������v7d�Z���L�۶�P�jv�ewia�������8��D�:]��т(�ޖjwq��"�Jg�^!�M-��R��?�����i�r]��xO3��i�����N�nh�_��G}�    ԩ�A{w�9Bw9�*��?��t��-s����#�m�޹�5)2�D��u�77��tF]�?;�Z:BZwjg��{�Vr���@�nN:�Co��-�.�V�΋t��		F��q�@&�J5�/��_�TĴN�Qx�,��^�+��W�3SL@<?	]�W��fA1Hlot@Qqh���P�_��������H5�Ģ_��;5���?_͟��A*X��:��Z���8j���ۣ룫i�]�+b����m¡q�%n�G��M��P���$u�'��B��H�6�WE�d��?�k�m�˾ix��y��㎗��-�Pu���*�U���m�*nv�s����9��t"j��GyR�BH���"�S�T4��L��[G ���/]�C�TOGH�g����p����蘃������)���ki��@*�XKs�B��Zb��y[��.��~9h��P$V���N��A���q�<"0i��!�`�E�@:�#d0l�2����#7�o-Ջ�~xZ�"�e��Ѳ.I֠�$G̅Rqtr�?�i0�rI��!�8��H�l"�-��E*��)>T��S�w�Ojerw�:�,���Jz%hÝr�����ᩚ��0�%���J�-q�3�w5�ʼ�.r�D�Ԧ1j�vi����97X�ɧ;|�$��9��	 �:h��V��N�Y��H�S>� �Lg ��k\ 5h�h��:�N2�B ŮV'�������Gf�����E�cw ���$�\_�cވU/r�K|��N���}���������ɐ�L�/r���!��^O4�	��-��`�jO�̽\�r{=���z����+�K 6ҍi�	�:����l6 Fz���M���6`b���J�cӔP�Qď�V���?T�fA����F��{��z���v�ւۇ��uhEhA��n6`C`��٢����f���t��s~��� ��>xf�D��v�i ���� &�W_ p]���iL��I  ��`C3z��8:�!������	K�+Ȃ�5J��ɷ�R��#��k̭:��r�8�B�����k!��!c��O���*4�3��Z�߃��Ѕ��8�0��46F-�*5��c�Ll=c�����l�1f�D8��:�%��.HeQ������$CkܖD��3�-)�Y�by�Y=} ��n���e#1�T,���kP�i͊I�T$�Ǥ�ХVo1�wV�Y�<$��,f��Uq�Z�zL�GoV��c�Y=f���G_)���f7�B�=�k�vA�$Gc������:����G�e��t�zv�q]��l[}F�|���d���ɿH�&?v��5��j��h����R+�T�̓}������;��qs> G�<�.�cG�4��ByhZ]}��|ߴ���K�C3�����A�ghbځ41`D�?*�Vx{hj`/B�?^:�Xkh���(�"�k�8]D@�7�G�������<���t�H���s:Z؇�:�De���Ő&�#@^�|/^�!߫<��*�	i���k��_ �R��Z^����ʤ�t�i+���BGl��ul�q�����rße[zT[�ET-�KW��-qf�T����՛c(�u�K���oܧ��\��ƅ�-Es�7J�<˵!/^�_�D�^��	�yD�'��!���8���J@gl-_�"rI]�J�w<caYؘ* ����p�p�> P6&���?��ҋP�y� PYC��
���=|�<^�l�@[�H����i�#}���x*�T-{����{��%^"@*�T���T��6�:{�cR�A���H�rQ���(�y��@:GP��x���1x�-]�T�����h�`-ԢR� R9��MxFǡ��.�nR��`3W��I�
�6�\j��J����"6��7�W��3xP�j�AF�a��+��V�*�bT���?�E���Zm1��L��`J�^{�~j��u���� D)��>���r�Q�n�����{ �qD�8��r�L ����f��h z~@�3�,�2�q��S�.jRi��BJ��W�^Cr��}S� 7w�QI�f��Z��,|QC�&��Y��*����� US��vG�q�T����;�6h�G���1[�[��B�=���QT���mFU���?k��Hy/�}����L>-�Ep�޳����FR� �UcJа�� ��G���./;O�#�n^v�"�ǳj��ў1�8�)p���1���_ ~%d�w �=ּ���/'A����҈���X�S ��@>>��bߤ� ��O������D�؁��݁���YM��_'�#�'��q����9ql�@ȵ�@�2do�K���Tӓ�����2c���{������|�� ����w�������Pt��������c�h�Ɵ����!u���{�R{���6���"�i�;_������#x��Y(���u����?�K/s)%�{�/j���8���ÐH�����=*�b}�ץFͅ� f��L�S���.�V:r5��V.���zW�v��[��A�q*cn1�eL-�cQ�}`��%`�{�u�HO�@X��tI�r���D�<�ǫ0�؞��ͭ[��-bi:j+�Qˠ�DG��7�A�yfP�Oیz����W��T��/�� %q���_	V��Rp^D
�[�~%�4�������	x��-����xL�-·�t�w�� Ѐ*='�>�E���7!��p����B�*� ��0�;�E@M�L�y��>�)�	���=�	�	�����A(���	����)�қA`�10�{*/��T^|i���}��3�h���.� �N|�S�/fX�Xa��e�J�"[VMݧ����l�@t;N/���y%s��l�Qt�-�pR/>ޅi3zq�#h�*='��-̙���4�����T�>����˜��铓x}W�^��@�(; �=GU�;ȋ�%j	 oI��$�)�?����VH�U
�����FL��Q��%`s{�|��v�4�7bv��݈B�?��g��V�C6S��cA}g��6�A'�;� 0Hɀ��!z4	LAe�5�0!��:>�S���kC��95@�.�/Za���E+L����P�)ї���E[��M� ���Q��� {�b3�����z����j+�><���(�.x�e5��AmG?��A�C��k���zV�B[M��$�S��m'�1���������7T\�sA������\���5|���c�^��~]+�u���y�@Em\'`�fQ�T��{j�ޓZ�+���E�Z'��	�ҁ��W� t�.���Z��K����B�Ut �]B��z�B�I5��{�t�F��K �^(!@=��QP���(�q��J]@|�����Yә��:0� �����T+�cp��ao�� ��3*�"�w��&>[ �!���K�b]v�j�bKaT�L�y�B7A�b4�uŁ�0OE��&��V����7���d��������H�ʧ��.�DxL�"�=��)
�J/�8�������|k�'7&���E�p�oc�,���~�	�B��E/rI�����ԛ��[j�a3`X��b��ux��-��͋���*����ǋ<���3� \ fr �zx� �_� ӥ����*���r ��xo��1���@TJ׏�� ��� �
G����苫>^$�����Ԡf�j~q��]������2�Ee���d-�hM��Eeћ�c�Ig�6���@K�H��a�����cq���d��c�r�\hL�
TT)�2*��A:�|��H/�>�hD���&��)�Gzш �۲� ��ae�H�t���w�F�v�]�������@��R�{ ��P�6�۩��T�e�Tb�*�?6��:#��� �f�Ers� f�� �f�f����� G|���-�g�+�T�Mg��Π���3������T�g�]��X3��u����+��Zs9��83�;���U�4@p�t�q`�j��Z��@ꦝ9 �����8s�ō��w)���c9���NŲT���T�A���    ;�ЋT*c��nx��A���|�rhB*�w��K-��cH��x�x)d��!�g�[�VL�&��|��5{�pQ�X�+ߟw�Aw�A�^�BcHX=�m�O��s�Y۫��"b�,V���%��H-�Ί0�e��U��h]�mc�P����K���0��k.���I����;��95ey?�I&�<I�"��I��n�t2m��a�YMR�wI��a�;���ԇ��ErR2�K�MK0�5IԠ̫CnJ���Z�Tc$�����d!k�}N�5�}�)�Qj!���p-�������:@um���ޖ�8����E	6�� ��_�P*�e^#�P�� ��ǋ��� ���y���;����3��iq�n��_ӵg��7${qcNZ��� �s1C�T(�p�d��ḵ�Fh?�,�D���c�(��vd0�l�|a�wG�]��1��wGnN��f�"X�)˨L���H�H4}�>G�geo��h̶��z[�$�� �GE>���E��ѯ&��-�/��v/�~���Ck�dG�
�o���|�޶���+j�*�U5_�����8$��� W�Y?�*�V W����u�yq�� � w`����]�� "��v 
��{;P�F�K!}A�� �6��p �����zk �s�N�[���� ,�� ��������R����b����a��[m��gwN@L�]9� !3'8�ûYM0:�ţ8�̧��mG�,�`�������8b.U!��:p� u��E�1���@�AU�T�#���̣����ҁE� %Ì���`o�V�J����?��Bf�t �~bv����,�Gd1
�L�\�7�t���
� �1pf�s�
[	*���f o����@��ێ��L�0̂��"�G�l�<3�6��C����A#�z�j�*daV�XlQU�QX��1�/��� �\��.Q�GȮ�;P������ ��b�w����*�Q�{'�G�FӨ�9G�v޺G�<1�T����Ì~<�&�-�.��>Է�)c��V�T�� jP��T�/�~�]�Yn�]o�ս_u�DW�������|X�=hU�7�®*�f��*�F�ުh�G�".\�v� /\I���v���'��5�~�u�*�f⠺Ԇ)����T��.�!��堪!��it��S|ӣJ��.�J���j��9nU�_j�3&�����^�]!�bC/4�-����<{e�
�40K�/��a/"�q��C	(�GdS���r�:�O����=�j�vz�tU��f7� �0��mfM8�u8PD+؅�i���xF}\���I?�> �-�dj ;�;p����a�r4������#/�;�;���h�ʑ��xf:%�6Ԇ���<��t�Z��b��Z0�d��eg ���X+F���t��?<��
���F	���� /�[At�T,�ϑ��8n<���9�RK�"��z�F�:����_=N�߯עS�ڂ�>G��:������a5�\=N21��)��`�՛��b�yNMc\j%(���,��L��y٫�g�b�y�{S��8��#����j�E�Gxf��Z��u!/�cJ�P@LGp �-��b:�F3��bL%p`�3��:V �nف�׮v`w��A�OO�AU;�;�YC�Cv�v��\Q����
]	:�yE�����Z\��Q�vvv��F����5�u��ՠ^�j�e�ҙ���� 1�B�����Ż�z�T� �l+ p����. aT=����o�0*�ل�hh�f�a4����CC4�=JH�ͥ`����{����_Ic�ׄ�n��s�Jc �Gah g��>��fRH��L
i4p�q$~�P�w%7[�[Ԩ�p��8��-���f�J�3�����J���h��Ӂ���I ���ܖ��]5�P�Vըw�L�Q����e� �5��D�ܪ1��ހ���z�Tr��i�сk��"��_̱��*�¶�j�S��7@���`Gz���l��ܢc̦Pc&��7�
|2��;�Is�p/A�������� F�JL�*�2���rDיk�<g����Vt�?�������)S��lʔ��q���v�@'���U/�v�iW���׆�Q� ��l] ��1�ʁw��!�|9@W ���;0��A*���q�<W�έV�h���rs7FWc#�y�f;�(l;O8@J�Z�gFc�@��� ;ѩGu����o.����b�We*�<�L���������Қ��g����,	�a���u��V��	C�ᆗ#�!�Ihp�ˑq� �0Q�%v1��P8����3嗻��xO�b �m���#/K�n���'����^�����Z9y�0�B5�q_��Ͽ���,��@�?F w�Ò9����Gp����>��8���=mtR���8P	� He�6�V�JH��Jg���Wb����3��}�;D^,oaj�q�T��� �"i��fQ0Ǌ�q�J�rE�Ng��0�Μ+��+��{D�\q �@vuÁN@�@Ȓ��p wK�� ��E�7�Y��jt�M��3���'� �S{�񃨒��~��E:%�L2�I���k��!��p�[�b�?I�o���0��'����M~�hc��!q�jdw�X�G��p�O�/R�$����CAšwF�\
��I�,��[���R����,x#M�s�y/~�ҷ݇�E��1��Pi�op\�jc;m�A�0��7g�?`�7'����03��(M@ɋ�f�9M�]Zf�.�-��kR����N��Rp-��H�FP�0_��;#fS)2Â/}������u����Y��:d�Ip�ɬhϪ�۳Z2sB�����h� ��L#p`�5��'H��P�^�J�I|V����Ve�-3/9�A̝�,�Ӂgܮy��Z,̝�J�۟��"��%�ӆ�hM \~_z��K!��Ub]؃Je,̜��&¸W�����;De�(�%��M5�h>�_�JlU���[DdO�"�\1�T�,��ҹ�(�]ml�$�����"�`e�M�=� Ӹh�lx�N��-ۿ �C輸^�_<�A�U����w�jl�w���	;@�"����}U����c�W*��m	"�Y���J΢~ �%������]�F�N8u�==Tժ����t����I�RƤ?|V�|��Θ�Ǎq^$�q>�Y���3V������8�z�jW��p�1O©�40M©ql8��ې=Ǒ~��Հ��̼�r5��V�V���Lm�)��!ݍ#W_׮4c��J�����yw�S�j���3��~Z�N��ZW����]R��vIc�U-C]8�Y�N���J���:�
�gYo%�ć�q�el���U��h!�#��X�OI�!u;�6�ݓN�G�ɝ~�*s)T`>��a��ۨ����k�[p�ni~qec����'Ј�T����Ԉ,��hDv0q qjf�����E��9�����K�l*�=ދ�p�� i���E?K�������.�:@��󮣨D��\d��ܛ�^�@mP�,A'3+�9��Y�xi.�0!�MC��1���.kps߰i/�Ҏ	��1�>��6����`��A3���Ԏ������0#���3�#�����7��v$�؛ڑ|R���F_��= ݥq����@&�杫��h�Ź~_�ge~�flu`��= �{@:�� ��p���[����H�]TTy�
dXh�D��\�ΉF�M�ŉ��/h�F��Ƶ;M;{���S|�D�n\; �Ʒ�JDԭO���h}���e��5U�L��2����q�G+V,{��� ���ĘF*�
�T��x��`�[v�فA �h�a.��]�v��%]D���|�h�J� ⪊�"��� nwq���W3*A6�˓���*��T�L�]jP�h�"@Q��
B�]�u ��d��U�3��d�\����GP:�1Gf�=4a�;E��sEe�m���6��ue��Sf���re���JcT�$*3��<���� ���ʊF�}�ڪ��C��    ��-���%�
��kЏN�<��S��QG2�����h�s�xR���W��F����iԑ얩���-1|߷~�qf�C�؋01
��:�����DkE��[�^�D1��:r'��Ƥ�xOƑ}��j��ҊiZ�Kp�|k��v��%5fe�kȻ���b�g�s��?�p����tȲz&� ���f�C�SG��Tz �X_��r�ª�ű	Wp�� �O�;��9�9DF |����00��flP�f�gf���*S�/s�<~�?ƴ1G��?����qd�m)DԟFZ펒#����~h���|C���lj�#�H��G���%w����nw�gUӞ���|��c^���8A?�y���W��'����pص'���\�/��4E	�I�;G?��td��2Z1JL$�lܾDϨ��4yH��t�fV�@��"��9�բ�&O�E�:d;X��G6���K5�c8�R;i-����^T �z�xbM�dQUI���F���Ш�-!�5Qw��
s_3�C �6}�ImS�6��4�6��f�LH{�D=i���������:D���N�v�ђy�x�i��D��%�:�B|]:�l��5���L�=�
A�I��G��V_��i����W="�pI4I�9����~t��Z�O-t>�D�!<�e$ ��S t@i�eB��7��?���=}C'��֊�m4I�:��S��oW�CJrT���&9���x��iD� ^��\`z�Ǒ�̟�Lxy����V���S��x��P�@�/q�QQL@<��R��ib�����&"����^��ꓼck4D���G�v�J?�)"��b�Av�e�H ��[�ҧ=������"j��ͥU�"�����Ȼ_T�eI��"a��@��|�^�<8;b���i�#+���o ����}[��棵�����$My	�g�Mj_�U4�L qpvud��B�G;^�jZ�#�X��X �fuQ�Mk��JZ����V����T3��4k��)i���qu����8%�C��+i���.2�}Uv%��i+��]ٕ��[Z�7�-��"���C|�	��D��J�<T5VZ�דh�
���Vϥ[���.��q�:�L��t�y7�=��q�ҭ#r��-��#
ޓ	�\�?�GЯ�%]g�(|9ơ���U>����m�1�8ޗ	�2[�_�����׮'liqk|q)��E��� G�,�i6�M�	9Dz ���<H�i}
�����ί� ��92���|����?�+Df���y�Adΐ�@�É�һ��������S#���n��Q��+e���~�Q�.�Lz���r����{D_��2�w_B��}�m*�_jkIm��}�|�gAG��?�ۣqcY�L�n�o0L6sA2�����4F���9 �CD=�?ܝ��E[�~��Qg��Ij�ڝ�v�vq�_�Iީ�Y��#���N�H����S��I��.kԻ�d�_�I���v�p�x;I�"�I�q�Y<�#�D�v�hl�m'	���$�4"�)v@����`�ZjGz�K���΄�l"���Y#`�H��H!���⍚d������ǚ�
�#����޴.қVa�]k��.�l£JJ;��������が�V����*)�+�^��&պ����OC�\ /w��xT���7���#eҨ���ڨ���W6��^�L��>��<ڋz��e$d�����#z��ͣ9��Nt��'q*�4�s |�U��i+�9��DR���8a��G3��+�����z��͓F����W!�i�-A/�W>iM��H�L���G}��m}ډ��B>|G*\�i����SW�+��� ���A��;�@:\8w��i��7��ڢ��Gu���`����A��z>HqM�B�oՑ�S/«`:p�-�F9D�K���i��|���ZٱםO+#�5���t~%���׽L�t����}#�����=������#ϗ�f��w�W��˒�Q!Q&o�L_?�]맼�Yħ�>���oq�4����YN�ܗ�4��ϗ�v��YN�ܗVR�?�#�r�n�۩�͚5>���ǽG����fZ�w�Rג�f\�ګ����	��D57@^�6Ӛ{�}c\�n��㣊�������#��w]�||��s�j�Uu\�n���^Ej��I�[��(�-N�,+Ff񸗼�V�q��yRE�eK��)<���|�v�8G\fs���-��"T<���ex�`�q���#�����d˫#�΂UǑI$��{G�	3Wb ���+���`�qgx}�w�\��P�eّN$}Ee��uz�*�-�N�[��'�-wR��M���ů^�!�]=�0s�r�T/��=�:,�����.�8���Hc����@�}��#�2?z �0�-�@\���XMIo�z�����@��寨�%9�T@R��r�!�;�.}x;I6}x�
���,�E ���(�T���_5/I�����G7/G��@�K�U��\�6I9�w�'J`�l%Q۟��O;�ǖf�B��2��f7T�4؍�@��.~34�w:B��k%���v�+���Fd�=��7�A�̚�G�~�/�JD-���	B$GI��0YZ{��.�=�7�>ы}o�$Ѽ5#˧�GaR�;Z-g�v^���u!��B��K�Py���Y�a�@���D�!��W�K����G�]�Dϫ�U�[H�����#T��zU������M��V{>&�G�������ω�O#7�+�ʝ�dз�Z�rWR�T�?��M��Ȼ>𹓙��r�?��ab��x�ё$q��Ph�D���$�+�Cj�rΫ�5���Ħ���M=�TG�S�-�y�FL\7��d����z�lƉ�w���j������W��?̗^��?��n~yG #qs��:(C��GUّMG��V���E�[��#P�Ŧ҈h\����p��SU��j1����A����|O10�њ8���<��{ޙ��푤���_�YW�K��8�4K���,`N�/�C�����2+�=��D��A�_�cĚ��=��$���N�H�Wc�R]�]-���gQ�ݗ���*q~��g���%^��:��a�����;/��u���fb���Ҋ
��g�[W���Da*A����:�V%O�1[�k�4G����Z���:��疽ʤT�U�Bݷ���j����l�	'yn�E��̢��I��JG<��~n�s��鴃1ȑ���ֈݎ�9BJm�u4̛�̟Zᰃ���"y�5��xf�(�
�eht09�K�F4����!��������5�ĺ������g�v��r��A(���x�@���|R�$���N��HƆG��>{T3���1v�=��5�@��U	&6�z��5$Rq�J]p�����:�Fq����C��dG
����ٌq���^P�[I����}�'�4�@@�J��+^&�I(=b��6���W�W�)�wR�[[I��τCʏVR�CՎ�ҥ�0,s%�坂��M"�&G�"�T� "��]�PG�I�H]I���3��JZD�J�T/�c��ƃA�%ɦ�Ȏ�z��^��J�L�t%-�W�KRw�3n�޺4*�{�ߛ	dK�7�u0�8o�EK�0g�zI�B�OK�vl!��¦:W$�L2�xi��SZp#%H��-��]�]I�.���Zz7������Թ�Ez�w�1=�@�#T﵌o��Es`��ᢅ�Kج^�6��]Pd�P����Cm+?��7Mt �+��d�;� �(sk�o�Ц7�&�H=�2�XG��QժϬ!��2en��z��j�2��/m�,����x9��m�U"�s0�:Bu�ӘtzB?ч�H���q�`[v�@�"� ��}��m�m;�.{�>Z��򧺤y��m#(ޑï�+��P�)Dԫ�����K�s�죝v�����F ����Dj��@6����tV��z�Z�x��K��}ҚG����0)�v޽~db�^��L0�OZ��{�e��m����oZ���ָM�H�}�����n����(�ִ�ao�+#�s�r�KK]t�]��ip�>7R]W���0��1�E@T�FΫ���o�1���zZλ���]����󽇞�Q)    ����/���A$�������E��E]W���`;�KĹ������?tp:7/#l���Ge���Oy�Z��s!��f%Z����8����YIr�rz�S7/�Y���ء~��Xqn~�!���Qm���H��׫�c�#�H�'/�a��Fc�u��^�`����\���������"^���/G�����4$�c�x)c�FK\2��f�u:;�9)�~t��C���v���r�.YRT��h��'���눥q.PKh�f���IJ`���;�,������ђr�T����y�'�f��M��w(��kk�f:�#	�dg��@��!��#А̖H{9N�֢^�I�f�Y�,�GRF��l��:�4
��`�r�0a6;8�C�g֊����?��)L	��{�'9D�����1�{��6�|;?+���$	>�GX0T ?+áf�zp�1�9{yh7���)�s��h=)EH#҅���}�!d�}���r8��l!�v�D�y�)_�s��+T�oR38	6hG�O���!��'z�2./���~A�!���[a����]���ܷD����+G`��Y�>��%d�?���Ojk�բE�/Gܥ�� ���d#�G�0��w�[��(�������#��q������\'�|��@�\�Q>q�χ�$���}���wl�~X)j���S@�{�v�kX8s �5�J�����"�V�ĭwok���$���N[��IBp�`ﭶ3&y�W�R�~ǟ��ުw~/�|�G��n������
+�ƉۑA$�3_.LjFIb�&��v�%�Xԍ�| �r���-��|\]�H��V���o�]���V�Ž�q�?�p��e�"�Z�½��
��N^�p���}��G\����iB����&R� �
��E�M��ݭ����5Q�'�^�p)����R�.^&��x���|遜��%s^&�}	��a|BN.u!GBjG2Z&GB�S�;�S%n�y���I���,B��7��̳�%��<�`/��RhQ�R˰�!��Ex� FUG
�#�TXq�Ǒz��M����XSK�������(n����wˍ�S#�K�[3�	R�;i��I� e��2P��#?���+��b�z��-�.�G���#Qr�I2�e�$�7�WW�x����xܭ�aa����!������E��x� ��it�������H��1�,�z��襵r$���Q���x��қ�b��:^�����ʙk�\�o��l��L��wZg&����:�d�Ʌ��֚\`��Y=�ZJ���+k�-��`�v���2�,��3O�,Z,wZM7e"���C�W��&��*�)3��SOZ���rO�i����p�r������Қ�yN���aK��W��5U~hF�%	���ҿƅ4�?{]��po¡}�D�f��L�W8�Py�q�˗�S����fi�&���!���1���Qtm�Z4���r��NE�,����(*�����Sr��ke-��k���4^�+7Xj7B<��G%�k�����)ip�25Q�fK-̞bPj�Ţ����k ���4*H]�E�r�K�X�H�Q�
�P#�紗g2Y?�ج��p]y��2�#��-�xi˟#�mɓ�G�g��LM�,�*��*'�:9o;|����Q�t��|����R7z�.����hD�Q�(ӈ=DQ��9rw��I�N�{R�ZB&,��\8���8�XOj�^��/��R۫���L/��%�x�|$>��H|��a3���z�z��)�w#q
[_�S��2�?� �e��T�pdud�?����8?'7�M�C(J����tiW)������\&��8�zB�%n�;Bz3Bz�z��`�GH�~#m�r��K���H������!�?�D"��@	��PS-���u!T��T/(���P��{��f��f��_��Bu���W�+�;]����o=��S3G���%YL�2�TK}%�A���ͭ������}�e�|%Ձ�_�7.��Q�H��qk�����쥎Є��i�W���3s?�d:2���р��T�}I��Į^�/�L}����A���4|��뤸/!�8IV��X+p��o���)���n�0��&̹���=�a��K+#Ӥ̥��iR暩����Oc�r���T�9�E+a���� tsi�k��Iz�g�IzW�e�%Q�gn�E)�ؒd�� <��X��#�C7-1��K�%�LD:B���sZ�a Hٰ�z�}n��"�r����"�\i����;�����L$�o�U>��/D����e�t���Ha�cX�#PIW�-T��S�|o����J3�܆9ǑFD\8T�32$�>�z��h�:���Ь"���K/��$��({iwg�����#e'��Y��Tw\,�I�;���I��G�*�Q�W����^�c�p/���L�§�pR���)B��d6LCԫ�{yO���s]�J��Yjz}�������(����W������i�j�-5�Ȥ���#����8]Ro)R� w5�蓯k&�v}m�]�fG�O�tm���ץo�d(���]�H-����Z'��o�t�L�rS8tI�ɸ��I�tkr�~�Ns�Sm�]��1�S��#f7�����3�������L&�@�C�-G@5Bb��d�;+ճ�L!���@��w����baކ�0�DG:������|��@x��X l��:B����և��)��j���'�!�G]_d�Q�U~ۢ�
�����u�i��D�?2��M�u��/3���[w�#6�ˠw��#ô#���S�eq�9��#.�s�ON�XG๳<$� 2v7G�>�>^�K�@]����f=�u*x%z9�b�EA�5l	��f�D���Ƨ��)Sį��L����M�L"�0�Du�
iu���n�H%"���S T��2^j
9�RK�C����3Ӥ4�^iR�n)o;����T��B�v�^�Y�WR�S˸�3R�+��Sͤ��D]6�:Rp����/��fÍHG�[I��2m)	�y[{Y�Jc��+E����r���Nz��1;X�r�$)s%�⍃��S���f�\�	��zs�עfP�hj)R��g 8ʯԫ��5�j�k�T=�z0�.u�&̉n���$��&r�^>��T����i�f}VeX���s�78j�D=x-��-I1R�얤�q*-Q̋�-I1=x-�b0�iŁ�W���R���鿛'�ʣ��nX���3��E�C;����&%��+�������zh����J����V�=�j�ֳ����J��m�v��<ۮb�Vq�4�y��]:/��4^��M�3����#;���@���%�#��B�{�"*�E=;�#�>�D�#<VZ%�L"[\��q�g4�#�3�>�W�p�g�����Ǣ͈�p4�!0��<�~>�2܋X]qu㖩����i���t�a;��vy� 1��4i�Ց�����ʽ0��K\�ˎP�ۉ�����8��I����C�ZT���C|
t�@�OK0hCWs�0Ym#B:B �E͑����Q�qߑ��ݙ�i�O���a?ă�h�ΔP�9��R/��JR����ji��[��T���ވP��2G� �H�؊�GR.��:�'��s��+�%��4N�P�'���~�8͟�6�d�Lmo֛�>�%I#\t������O9�p��QY?s��mё���[���@�9�*�n}%���.���ڵ�2�TK8�L�{�>��OG��	��#0g�4��M�3����I/~�>��ӊ���9�D��9���x9g7���L���@D�D�jGp>�iq�.sh<�>21ʜ+!�����uq}�W;�LcY ��2���'d?#��2�{�Ha�`j'R]z������t�T� "�}�>G���kBx��R=�mɿv:,D_�u
ǚ�Y�������Ȼ�-�m��1�޶k�̖�9�����m7͛���-�,�yqiD����ud�?�%��?�Fc�~Imo"���R    �m�ho;���m��@H��P�o=�-�z��_�K���m�)GHqMm���r^�7�;��Ǐ�2 �kixi���v�E3嗎�>�ݴ/�|-M�A�0�:R�㢁�&ݬ�5�е$��ᓴ��Sѵ'����g���$���(���$���l��/�;3��L1/.��t'��vg�Fi]|M� ����q{���x�E���Se�8�D�)G�p@Uwvl�Iud��-�o�E�	��#���W��R ̭e����T����q2��#�_����)9�v\�22����
�4�W��u�?���݅@&�esď^&m����Po<ǎ`�!+�#��QKq��˃�L!b��;����e��I�P�D�U�$EL�R�[v�P$!;�:/���x�R��G�,C�#?��hYv��y��=��;R~������B��%.P���Gࢣ#�*�Ƭ�zlxp�:rչ��tN�:'�g�8ta:-�G�H�K�*�%�|/�Hb`��K�*tU�����\�����\U˸R�l ���e���Z����-0b�ҳ#�qS=|��K8BGLS�|��ܥ���]\���'/�C�s�*sW?�J���W�K20��&���>׏_�.�%�G:�Mc�~d��t%��~����-qaQ�B��:/��r���:Bu9�>���\��G�����?kæz��c��&Z��$��rWˇ�}�Cz�8��yVg�ls�������d9GZ�"���f׮z�:'�:0Xδ����ieZ�9����ΕT�|��|T?%?L�2gI-AMRwʻ����?$/
ݬ:�ধ�G-fH��^pxjtO���Rͤ�U!�X��)�����{��TrX+ȩ�V��K�L��.~2�s�_�e�L���ϖ���j�Ҍːi�c*��{�=n�2����%\߹�p���+*vS���h�g���g]d2��9�k��AG�5�P���&��#�w�^�u3IR��a^����	��q�n��
��ɕ)Qx��rx�^�+���T�P�y�l�e�w�>ht{�T�A�u:<�!JM����^��i�=�i���Py��CӼ��B"h����ҧ�Y6����'_Kx�����Q_ץ;	���{�U�v�Jג0��?'Y]��4I׹�(�NG�ѡw�Fb���~~�	�����U�%z��ۖ�vn�����Ҋ����`%���o�e7V�b��ٲ�28S�#wF\6Sj ��l6�r���<)ń>(u&��LI���ٮ_B��$d��%䡶ߥ���o��@��}�yR��)o��,��*�i��P��D]/_
���l�|�$�����9P�Z¦W����`�t�JhU/���T�@:��BM�9/ә3*�u�js������F�DS��`�5��(eG@��5�Y������FCJK�@��{;�P&Z��PV�;�.�u^?���p�����T;�8���Eeo�;U�֧@�*�$���� G����oR`8B�yh����TG୳*��s P�,?�(!����}����+9�g�Q�3sk P��D�#���S&��z>�cQ����-n�e:/�Jq� Q��T��E+��i[-���z�Lg��@����v�Z��S�
��b�C�@��h�9 ?]�I�q��������4����N��X˾ӈ!SJ�i�6�?��jm�xnw#�v;I3̖}�Q;TE?��w�p}���z�����Bk�*P���	!�g
!�گ��)*��ܷ���Qu�������J�dYq�:�aڂ����.ܑ\�*�+�����D�Aw�L"�xCê��-���]�z���!�#�z����6G�ہo���7�_�S��z�ڵ��\�ɈSC؛!����K���$�H&�Ջ�7Iy�K������w�	��{m9�]h��P5���7���֙/�i.$�[6ͅ�/e��9BO��\o3�>���3����b=�{u�#�
|r�4͟�=��9Ɯ)�7Ș��8`����R�>��|Z�O���ݾY��d�.�y�j[��Z�{�M{~���h��6�����XA��,)bv笵��K���̬1��������pHٿQ�̖���>���2SJ2f�x��jE�<)^��%�yR���'%� ��e�����1SJ[��u������Ͷ%����.�y��ՌYRj��%�ǓJ�Z�Y������f�p3���>1ڲKJ�f��z�)�{��-{
�ܻ[B��aN,}�d�Zv�����L�ny��ޖ�c����i��/T�/�3�,��vdjp_�W�i����f�Q�����a����5�r��,��YQ���Μ�S�$mZSwJ�M�'Q��(;��C�ʛ����A�t�'Iy·����c�3J��萑�A|�s��H�s96�0��E�}��L���P�O��$ip�1��@ѱ��@�}���X{�?gD]��Lǥ\�-��^*��\nEe��>�O����[S3�����$o�b	��l˄��S.��w�!4�t�˜(;�ё��KZ�D4dQ]}�r���?�b{K��hH%%�͖;�R;D�������8+3��s$��"A�Sp���S��G���m���q����=�3q�,"�n>�5��a|�Z�#P7��x�wX�#T8?����nm���P3��z�T�X�z�%�z�h.�D͢2�i�e��9(Im��&�!���8��p��f�e��yv���03G���"�
}�Bh��M9���[B��p	5ϋ{���!��!�.�����C��e[�9�^����P���/:�j�@�U�:Sh�
rR���թQb6�����W�b�^�bh�ln�Ҟ�P�c�oY(��l^w�t��)�L��d�6|?����B�� .��F�R\z�<���d�\���VPb)��y�QG����P���^V*��S���Ǝ!����zq=.�ap�ZK�Mz��Y���(���-s��;���������L�jܾ���	�-�^Vx1n��u$Q�a��;:Б�o��N��Z�4���i"�B��m=�E�IG�:C�����0��a&z���3h 	3y� ��7��v��0w���VX\�-��IsCXa�3ט����u��9��H�$��W��aNχ��< s�!Ϻ��r�ʜ')H*����!P�S��g/+T�RXY��%�X�����W�k[�s�e֮�`��!��A�hj�����mӐ�!o�547H�*"Mf����?!�+Ȓ����3K:N֓���bG�9��i�|��'[�q�4�$�4k�0�M�֦��ߨ�L��V�o���^�LE����u����D�Ss�Ar6��L|�'�)��Vi�4Gk�w`���/�C�R�/�Ѵv1��l-�Kj[h�i$���&�D��	s�!��j>�&�@��eǞ��/�w�a �mdC��y�>M �A���&��6�:D}�W���&��&���M&���t�Z��Z�OK�W�l��ɡvj�q"�|w���s�S��J�3R#kev��\�42[�v�u� ��`V��6�q� �ȧM�A���C��3'���ڠ~���Cw����n������ڠ]�$:����ls�s�?Qۓ7r�y��n�f�Oy2�`OG����fp &<I;@ˡt����/.8ĸX����ڤ�I�&ݠ����I�F u�Im��Y9���eR0��f��^�kx�`�u�j}�Ɓ��C���N��Rs|Q��*aj2`Š��|"��'b1�HD�R����U+ d���1q�2�e_�w��e� �Ӿ��dVrC2��BhJ��BCէ��ti��;y�wW�LCJ�/{��!����&���֑}�����e�/\U7����bDR�
k%�e+�)��)3z�h*�-j�9���rGǁ���&`�4�Xy��[���l�""�`;D�eGp��!0���j���LcU_x� �8C�͙6�:ih��?��Zh�l�DG6�x��������6Hn��CC�j��
���<4?��=�m�3� ߤ7$���K    d)v�4/�3�1P2�͝џ2�����������!��̖uia���2I@te����4"�v����9��Dd2���Ճ��$!�a�]ѳ2U_���7yV2(z4nBzghy�s�Q'�R�A���%Zݘ��uC�d���!Y�_��C�m_а���[�//3��kB��W��j^��j^�Z�z�Y����R�uGhV�
��'}���~-��{u��p�i��.���p���|Qn��zge�S��v�&�ĉ��kV�i�c 2��+��r�V�^��2_��E����u��;��S�|��<^~��Q&U��C��Y{Sgf�}�w��5ͺ�8+S�.w{������^5o{}h�b׫Vm�����y;_�A��!�T�v�ޞ���ÿ�TP��.iF��LA�����G��Ch���v��j��#�|s.	e6��S���d�ټv��#����k�.��`/K{��dp<3l<�2�$�T�e���ww�Y��y�U������g8v�����/�Ƙ$��}R��3��Lag>�~����3ʤ����2�ɬ�^K��e𶆝��ɠ�lS�����foC#� �9�ZH�
���%N�hٴ�@�ٱ6E�(f;QK�u2�~Czu�4Zn=����_-a7�&���Ќ����0�B��rsx0QsرG��1f<�M�Ǡ�����}*g���!�Z�Ƴ�+�N�#�K^v��\�<��~�,�G�+���i�	:%m0�׷�:�%I�nOx�eZ�,'I�Ms��%I���;��'��^ Ɖ-I3T4o�C�&˨f�ү�C�IϜ�>���9��P���u[�T�!&ߧi��ReД��  � ��N7�Y�Dg#�9�.�s�W�� �L^�ѯ��q��~3�`k�{m� X�}�bZ9b�l�le��8EG*[m0`���Hj%�S��7�ݐED�"ڤcA7_���'�C��⥶蟃���t��|�wg��o�oz� ��wg���7	 �� ��&C�S�N�D�|h�g�$C�I�B��VQ�X����I
�3(���!Un��$9s�����\�Jb��)�F�n����9�2Lf'�Di
*ϯh僢bP;Ptl�9:��\�s���V����x�j�=�N��P����%Z�jO-���H4%�����Zw[4O�:fбeW�-��ؖ�=dL{���A��U]���܈������ �zZ��mA4
]�Q�X���3+2.ub|�2�V<C��c���b��)r;�!�?���E�2��!��1w=\�0�;�P;|� 69C:�P� "z+=+P�n�`�L�Bz?����5��-7;\�0{4B�!�{'0��n�!4��@�a�O4T"�ېtS��oa:R��Վ�\�`��a^�ˁ4S��s�>`��Z���n);&�$���/F:�T�I?&�,zyA1n�tF���iV͡\烣�R\ԧISp����tEN���l�s9�I���hvŌ����V{� �*{� DXBc3d��� �b+?s��O���r#H��vV�a5HȢ���A�rdqn���U��:��o	�)8%!�i��O�G9�t��
�״�J+��u�Wf>���H%I�'R+Y\�'�����Em��:���P�h�D#��:BS�d|g>�\(�\����I��}��)�J����ɒ�(�Lhf�L�kh��ck�i�j�P��z�'�K]�-�V���q�}���4�Ĭe�X�}�wX�#�Hh{/�wͨ�}� �)>�����>e��5W��	�s�\�a>U�#m4_��hn3�$P[|���9��� �����#�9�>IP�\S��A�O�e��;���]n�c^~xG�����x�	�����h���,��^�3��O�����6j́a��SI+���Ѹ�g�t2vNG���.�L��w�2��ٚɣ�h��+�tF���ۙI{�:�K��k>������|� 9®6�v݅��i*4�F��W��w��$�� yh=f˰��K^��zQ���V}�Dfk ]�-CH��ޘ�O"8j�����Mf�sD��e�}��ۆ���/D	_��~�o�,�LZ[B�6��hn�3_����R�C=��3�\}f�%B�!w��u���1äk�I�]��2��A&���F#�)#PC���8���8t� ��c���9<ř�tB_�ıY�O43�����>3[~���N�-�;S�A��[S�ҁ��z,�Y��eʢ��q)���$Rk�9U�947ϯ4�u��ę��g�Ô;/̥0�N��TT};�o�+�4~+���B������W��Iޜ���-�'3�ٟy�y����q�0S��'�Wj�O-��a�g�GH���^q�3Ov�zL��|�B��^��#��i�܇Cht�67C�T7x��蓎R��x��S���?ٌ!�[ti7u�����|AsvVi��I"Y4�����
y����D����!�0_vȠ!��f+�ֽI|� BjimIȦ�!��!�j'}4��PoCZ�w�!*Ɛ�,�Bl۳2�8��@NC�<ȫbH�z�p�`l�ґ�ߤ�F$�����R���7��uc�0�d�2��ƒ�%�sc�g��Ȗ����P�7�R,�K���ּ��j�%w�v2�e�ui����Rΐ|�6���a�ԛ~(rs�:�G�A���<��Ύ�D�krVN7q�Q�i�Ig���p�����q(V�ײt6�}Drh�ZDq5�}j���}Anh���!ȡ|7��ʅ�C���$�p��'��Q�� mp�-�QY�wv��AA��/so���ᑹ�F�2��P����A2�p��������NB�O�b:��V�q��ԕ����1���gԛN�O�c�#%���1�vm������p>r=��D���<�t���A�D<w;nOA3L���w\{1������ $�@�f�p�Št�R��1�-l��;`�4�^��:����w	vx��S#~�x��tX�n3;ʆ��t�B>�GoБ-n���.萾��~�)�.�!����i�����h"t�!f�3aX���!��g�pU�輪B:�&d<-�.n��v�#���DK~�e�ܶ1�n��]��#���[�?�m��j�#b��[,��k����0�76�Ơع�ʤx3��QE�4"���}9�R�Cۘ���#�査��1���?]LE�z�/+oJN���a���:��(e~K�bY��F��p�5$�W�JcR�/ {��3H<�Â��!��Iz��.0C��ͼy���G[aAH�!p�!�ŐLD-�BR!�C=��z�L���{$�������S�r8�*v��¼��L+�!��C*�[9 ��z��S`Ȁk ���P@�!p( �� �t��fC���{cv����[��Im�`�|񋇷�y$�8���:9�����W+��b�Cȱ#��x��(26��}��^!�=|C�v�O��pet�}��'C����p��҈�ZIo�@�$��Q\�r�v�r��J��̑���(9���)�޽�M��'đN$	A�RBKH0�.�йT\"�����bIR��nQ�-�L�ˤV+�N�Rn.��֟8unDJH����RBK��0�7L�B��r��%�9@�C�S/��=9�/�=BϮ�D)}��p�nF��;[/Z��Z��H�|�kE	s���Z�K%o�d�/�#�!G�ׯ��Cq������q7�0j�����LW�ֶ��SY�hT����i�.N�_�1�;����;��,�̖-����T)��r\wZ��*��7��&��§��]J�7�|a���i��a}t7jo.�{���/�o�#����#���ɗ	C��߲��Z��x�i�%^tF�}#��wJ�ͤ[�K�x� J5��(����,��މ���B'^ѩ�L):�0e�,a�_�n\_������a'��~�j�t�i0'aJ�s����f	�W��)V�[�����v�f������$K�:��D7����[t�J�Ǒ����YSh�nG�'YJM�    -R���t�)��xt�z���J�cuӜ���|2�E��T$��c
Ҕa֔��3{=I.?MeM��-ƕ�|��T=�ü)R'J{*��1�����p�i2�r��|�y�Ԉz�ya�������re�M��Z�gh�?�:����:ϯ��_�#!Sm��|r����>��y��x���l.�0w�8_���h��U぀x��<�ljC�Pc�wd����!�2m��#b��7��T!�f�ّ�_��pr�>v���`Y3g7�!���78m��#�y�fz��D3���)
q��C��g
Y�G�c��1'�!8��If�c�C*%z�.l���5���C�����}���_Z���O��o ͞!��I����ʛ�cG";҉��q"�A��2v,�#��y�0e���� �F��)�l���W4��*�d�^!�#��4��ͼ��p�nL�!&K	_У�W$!�%�̓2�d����ҞrG���H�$��r9�$��uג�k}y;�בLO�ju���\�t���Ŧu�m5C��UC;�'��d6��#ٜ]KR�p�n�?G
�n�>�X���٭d�]yV������z�V�\�YZ9��5��vkiD����G�i��JZc��u��x�p�Đ�_���՚��$��Æ���OG�<��f�V�Ad��U���%�4�j?Ij�?�ۏC)i������C)���8����mf
KU{i��%:��Ӗ�~��]�$t�IE1YX��t�."���ҖL�_3�z�+�]�������u3`>��La��c�!�����´���*N·�����:1��7��K��$�z�0f�$~3�d"K�~��+�� IClu�2)�mC:iȄ'j3�\�A�$�M/�kH�7Uܺ����^����bk��M*�<���&���k���<+��ִr�[�t�hH{� W�z��e�$��x�z��tiy:>!��F�hvK|���4�}��ġ>Q�C�!�H�g�}��� ��\���Ր���p�5�v@�#����r'WC6��a���a�La2�� gJ�)�d��a<g���S���%��c����eȀW�S�+sT������6�=�Ӯ!�s4���Z��5���Z���S7�o�%q��וB��ͥ�:�]Y=o�ve�՟���M�z��6��ÆY�V�~|sZ�z'�Y=����3�\.���ϕ@ߺG�9$s$�=����0שya<2-�8X0��ˑND=�w����>C�<�I#������B60���?��d|t-� �7$�rd�X�%��_�C��A�b-I����Kt=̫��D!3��0��Gi��竇oڢ�+̈��|�
���з(>��הF@�c0:3�P/S���~�$n���t!��Zx}_��<*=k�e�P�yf\�*��,9�	'�!��z��`Y20��+�3�����X\��x�Ɛ{�>2^�ڍLo�Fr�z��x�4�̥�K
��ҚV�}��!�a���h�|��y(�%թhƿ��z�љ��dH��wf�v��k�sc�Q���hV*���7w�
c}������Q���h2�ܷq�E�0�u��ƿ0�L���RC���ƿ0J�WF�=ܵ<a�އ���j�x�g,�dG#�Y���-j�b┫��fQg��w��2���ݶG�Z+�2b�9�z���t���o�]��(\Gh_M�w����V���!�޶o�:B�_
m��=��>7��V�C͌<X���8/'�JqaGB��Z:���iO�����p���8Bzk��<���O�ގ!�qU=��^�e�����-گ����m��k�*׾��Ȧw��RG�U/�R^e̶}t��5�H!2��:5%��gq|BH�x7a�\�N���tC�M_bd���L����ۙhKK�{�Z�	O�Z�Ӯ�{y�7�K"�)PB�TV�����zmo�2�i��u
7�!��%L�koq(3�^f����vHmQ;�VY�αUj�c��<��=�fӤ�}���<��QGh����0hޝ(���@�Y�~ i��9mw�C4Mm�C�t��'a
~�-�U�����<_��-��^�fKw��!����d��.��ɡ3�[fM�J�����\n�!�Ӷ��C��+:�/���'��3�R���=���$y�pz���tl��oб_~5�>H�u��ㄔk��؁�A7�h�A #X��D�7�!(�t~����u���!7���}�4�w=+C�w��#���i�!�Sm[���I�
��1d<�����5��h��<tid8r�)^.w;���.��*�s�m�vԅ#'��i���Ch_��"����.����m�i
��eꔲc�A�3N��ZUB-�߄��S�ˉʗ��5��!�̮�5=�"�2�c�#���Z�*(;��Ēo��#�HB�ZW������;�`�K����c1A�����2�#	iw���ܓ5d����$�q��Wv�!�k�.L�2�Q����(E�mL�R�����x~+��q	�}tX/���#鮥�ڬ��Vk�Ǘ���g��8҉�D`�-#G�E 
�62{�2r$���%_.2�WQ��9B����^�w�y8�ax�ȑ�ZD��#����N����q.0��v��2�_k�B�%�rd�7�;�N����K>�c�A�0s����5�����<�4"�Z/����wpL0�4��D�n��2)S��t�b�Ly��ͬ��vjd'�W�&���G���1��%�F��8[kվ	�̏��Rn)bz�V�E��Z:�_^�m��(�fٴ��L��1=X�3�
^�q$G�:Ө�YGh����2m�)�L���y4?��#�egQ�h�΢{�1���,�m�Y�1AXˢ'і�E�kvV&�E�Y*/c}��nC,����9<j���Q��W[e�9�i!khyD��L�rq%��M�XХ�j�3�e�5��/�����4fM�)���?����	�_v�=�Fj�zX��ܚ�0�0Yn҈�A񞃼Wگ��31XN��� �L��(������Usc���:�Pz��7Z܃�6R�ն�/�2,j����D)xNԑ��Cj��u>m�1�:�"L��eG`��A6c��l"9�)u���:)n�WLI�ԫ��~�g�1�2�wi��A^��yete������kD������E�I��E�b�]�����|��~Of�ܝ�T�<�����S��oć�\U���#��6��p$�#p�l ���n:p�`�0����
#�Hk�-P�1K߽6�/=e�2�� ��F���v����Y<zh��)d��%�ށڢ���X�2���)1��iv���[w�)��!j����g���]-1�2���I��:��OT�yR�>�|�-P�kC��c��Z��365� �V1ٵ���V^���(����ݏڎd"]H�D��mVn�����ݤ��2B-�e�s�|�Jz7��Ҁ��d~#�Bsá��w��J�Wh�����7��-�HrĬ���Kc�r�ڰP����Ohnc�~bo���H����m��K�mc�>ao�Y��"��`�;x̑�o���,�`����̹�q�$�`��a �~�ª�������{ʌ�21y��ܝ۽��͢�/�v8¤�An����;���!2ЄLF�qk�檚�ÍV��h�p��fvG6�2���U ;���G'\�a�q+�
{��NG|XE--��B�ֳ��'���0����c^&��/�OK�@�-���2��+pFߝ��
)�UB��Vገ�5�
�e���?R�B����Z_��o��E"�=	�w/镃���J$�Bi�CHg���r���}�Z���dm��!��f�r�@�߈���m�#��M�����9Cͤy�z:���U��w@	@����'��#�s���c���;B�g`��{�o�;�pН��	C�s�����6�Axen_�w&�}���\�Z?n�}j5�.����۷��D��\�z���uGQ�.9+3`��mW�\X��Cw�!�-�Cz���+�B�#'P�    �6�N�?�����\�!��Mm�!��G�3�K�t��l�mP�L�F=��dۤI��EʐBD�.�G�n�D����������]I��j\A��!�IO�p���0�&]Ic��l[�#��I�E�E��
�B���0g�z����q��2����#���9�#�#C��g�c�ދ�u��sd�&d��n� ���w�#<��!<��&�I(��4����Shk\�a�x�Y�p�����,ZU��^&;:X�>��Է� 騵�\�V�h��VZJ9v<�#8��utC2�sE���6F����v��#V|��i
2m3���0�y�\)T/�ƹ@=aTՋ*z����f��]�R��jՋj�z��k��2��&.T�7�n%�]��'�V}�w����Q~���0M����#�|nF&C`~رy���f�t��يt@u[;�Б�o�g^��9H�U�'��C-�n���%���!r��9��5�`G[;��zG�>�Z.(��t�J��ڶv��#�N���Ǯ����n���D� �K�һD�h7_�]�<�E8ɂ�k��xh}/0I�VB>�����5��3���Ng�_��a�~�����xHO���!=��xHk>v��C�Պ��/�C�i�mQ����:jfh���k=\��ý|�������)#�$���?�A��iڈ��䪈�Qe�_10
9񐾭	�S��R=��U�gM�類���cЉ�ӮRӉ��3�I��Υ��8݉iYk��+���1E��s�աC�f�I���ݛǮ ��N|ҟ�Z'��
N�_)�!)�n��̀�pWӡ|s�P�#�վ��v�pL�P48&��	��f
Y�F5W�l+'�a(ZR�������w�C�#�-�.|އrGH����`5r��܆��ge�rf�������|�܎��R�B-�v��%뮣?���@��fG�%�@/O��㡳3$���/��f�M1kd��e<CeH���n�q~5��f��P��#T�4~#�a��;�ɑ�_�P��U�wy��LjEU2\�+�j�U}���v��h%C���o�Mˤ��B;�����E�v�;]�#��7��E���� ���>i7u���W��4�W����2��,�J3�}��(B�ьo)֌g��W�!��1�0,��z�����z��ؐId	��Q�9!&M�������`��iG6�.m�6��`/��ʐ���QCL"N��8A���hrx+r��I�IC��4dD?2��*��q.��C�A�cL�!wK�{Xh�\r-��p�pj���H6��05f�����h�?6;��;��6
�ƞ6z�u}�7�طwi��諏��29�m^G�%ﻻ� �e��}Sב�_�:��pĐ�^:�p��xE7\���k�K���u�p�j���L'\�U�kcߜu�v�O-u�ɟ�٩٧�5�$��	��:��M��j)N▻ᬜ����X�v�,	��d�mn�{���{�gm�5�v�){ʓ�g��o+�f>���\�,��f����7jr���#��
��=�o�:��K=��!��F��^4)�F���k�!�ߨ���a=�]�DTq�+�0 ���p�=�HrKS���}�C��u�Zm)鴷�z�S/�
X�Z��������-��y�/�"^�T�N�v�%��P	�9O��Z<t��[0N��T�'�|���p%�,C���V���5o�C�n���hq��Ļ[e��x
�|�M��݁	O6��"W�����+������'�tH�ֈ�ׯ��D�+���
;��َ�2��s��h�����!ԙ�5���>b�
+S7��!`5<׆P����!�=���ΗliH�7EH�@4!����gR[��!��c�������$"����3��G�/��O��
C
��S�/��s	�����E}��2b���VC}3����YގVG��W�� ��F|�ަ�MWC��r�v�:B�P3����0�j/�����jH��?�w��g������G�ph�֡���u��y������o-Ջ=�ڛ!�߄_�{d�3�< ����Њy�����bi�4'��$~A=Ts��N��_{j%W�Wd��P˼x8�U�2YN&�V6���34��7/"|���� �g
��w��WSB�`�7d)B��w���`�7$QK��ڽjR�>c���Ca��O}::�Zе>��N����%���2�hR-��&Q���}�ݑ����҈�W�g���u9�C�.zHs�`��0C��w�����C
�� K�B.W�x�.ZկJ͹��.�C�O`�O�#�-���^��#�d��s�m�~���B�.�Z��̀���;X+G���n��)���>�8��0C+{ॽ<�e���[�t�����*^b__��_�2��&Nag5H��c!�7��ݣ:�37���@C&�����D��֢��&m=|Q�/o����Ii�5����uGH�P��C��!��ZgX%2��t�]�@���Wxvg�C�#Г"���"ň>Y�b�V.Xl!��雾�Ya���Bz��7grK�d`e��*~=�2.Y<�N�
����:���ֻ���H�ZB��~�j�_B=��Po��V�'�	�aC���&<A��!�����`�Y���r����d�QR��h��?H[�<:^�2��ю�r�N��_xrϡ;'�2k��~Y��G��-$�hO�����\�S����쿀��rt��aX37��� ��,(E�Ϭ�t��f=�6$˂R���J�-;����]h�C���Y��JԷ{��퐮��ȀԛvH��=-㗗UDQ;�"�<P��fn�<R�=�:�C�b{���׹	���*����WCL@�L�޻�!'�ph���td0�F?$w�܆P4�>m	�"�dn����gH�s�6u�wV^��/אI�J��i_Lp$ߵ�r�;i���!�C��O�v�[��¤ �@�� 僜�V���M͢"�����p�5��9�@´�q�5�Q�R���P�2nB��/��$�f�!��v!��_yO�LZk�Nܽ�8BZ�7�H2��Z��D;ef>��C���)��մa擌lI�Ի���P/�m��A5�B%�����Y�2�|͒��$1��#��e�4�%�%>!t;���=ט��i/��L��[4d�PɃ6hn�A�3J�UB5��z*��2�h����V$R0��MȐID�u�kwýLj���R��BQ�F�*��cfH�7�#��#(�@��z�#�p��"���4r���F����GABGG
Ռp$pt�ݼ@&:B�J�7:�����<[�q$Q�;)�ϔ</WMD�)y^����!p����s7��tܵ����8L�^D0$߼�����G���]�mc{���/��7#���Zxs�n�p9Z�$�R�|�"j�7���!p4� Ӽ�w��k<;`��f%�Vxv� ��gI7�����s�v,�#���1�/��^�W=X��� ��}��gB��W�\�0>��L��B�BMM_��_g�Wsk0�ɀ�� �&���-,��T�B�|{n�PU��6n��E:��7W��3dBNCT<<Rp���y<>*xx���N̢/?Τ7��0���!�9�L��h��ղN�u�T�D�e��_��[.x�����ԧ^��C�ᣛ+Pg/�z��j]�P����9����9�{�;&���������@�4�9/��M\��;=�����&���j���]|i�lk�-p_� ��P������?�[.������7�:�xd����<�㒢AT��-E��u�0���N�q'Ѡv ���aT;����FF�?�|^��a��9��8�0p�%��$E㑐���0����r<��)fw�=�U�����>L�g�*^f��<Dά�'GBb-�������O����Z�+	�:tOsZ�š��]���)C@6]�ع��6�����j��]�#|�r��$�Q�P�!�j'}t��.�\-��>�  R  ��j�+B��O�-�r6�7�Ҝ�����c�1��%=Ԧ#���c�ҸF'���r�`:��٢o�j����vI��D�}�23l�@�Mݐ�^�vy�q�|�Z�R�D?2� ��#�$R�Dv����Pc�P���B�ԭ�S���j�鯼l$�R_N���d�R�O�T%�A��0�#���@�Co��$ȡ]��22�"1p>���F�!x�7i�f	A65<n��5+oj+���<�;
��c���Z�r�w�0UV�3��7�͞��2�q���\+#���rd%0T�+�H"���C�(OqK�rvj<����D-��"�3�従f�$�K���;xx��,�W��������z��=���ǯa�/��,��� [��w�&�;�$~�_]�S?a����D�ϣ�}���oD���������E���|"K�'�wG�;�(�r�E��/�PKcKS�9!Ź���d�s��?3~�(zGHo^B�cI���&�#}�Q��E�N����Iq5��5�L���LJU?3i�j���[�1얌�1�\��;v���;9VѓIs��{�2���R��/�˭����PV�Z�غ��Z*���+�^�O;p�6�t;�ny���17� L�jAP�jZ�2u���/S�kZ�r��Z�+5���櫪�7�^�3u���0�jZ�2�8걆lzg#��jZ[r+wKJ�eh�M+Mno��r�/�K}9�
(s�k����r�ke�%\L1�x9�A5�=����1,�Q�H�~��ǥ�~-^��}�0
#��;*\�v��K.i���1դ��s�x�Э=�iQ���Ct�!9Ձ�}��3=�/k#���(]���ίčy�N�x����9�k3��8�?u����t����@�K�1v�h�a��Xs����a�YG�ϡ9:�XDfc�$T>�A�vl�� ��m}���� !ن=G��,! |����6d�,�>�t�m�m�s4�gH&��-ۥ�+5�"�=_�ޢ^B�KHAl��`����߼��Æ���!���jy� gCk-�x����*N��t^C��� q�!���{�|2V�O�Jij���.�0*e��O��.Æy�N=��Z)C\c,
L�Pr�x�H$�5���P3b��ɑys;^�� �.�G�ۖnN�AF��!��u����Q�/�%x��_!�Hh�:~��F?H�]���Cm'�U�2��r� �<��v��[^AJ;�R��_������%M#��.��j�#��e��G�Z^G�!�����HB03���ł$�27{9߭`�û*�P�h��5H�|h��5H6�������߿���%      �      x������ � �      �      x������ � �      �      x������ � �            x������ � �      �      x������ � �            x������ � �      �      x������ � �     