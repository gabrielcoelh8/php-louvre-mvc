PGDMP     -            
        {            louvre    15.1    15.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    32893    louvre    DATABASE     }   CREATE DATABASE louvre WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE louvre;
                postgres    false            �            1259    32894    artista    TABLE     �   CREATE TABLE public.artista (
    id integer NOT NULL,
    nome character varying(50) NOT NULL,
    data_nascimento date,
    url_imagem character varying(255) NOT NULL
);
    DROP TABLE public.artista;
       public         heap    postgres    false            �            1259    32897    artista_id_seq    SEQUENCE     �   CREATE SEQUENCE public.artista_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.artista_id_seq;
       public          postgres    false    214                       0    0    artista_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.artista_id_seq OWNED BY public.artista.id;
          public          postgres    false    215            �            1259    32898 	   escultura    TABLE       CREATE TABLE public.escultura (
    id integer NOT NULL,
    nome character varying(50) NOT NULL,
    material character varying(50) NOT NULL,
    descricao text NOT NULL,
    ano_lancamento integer,
    url_imagem character varying(255) NOT NULL,
    id_artista integer
);
    DROP TABLE public.escultura;
       public         heap    postgres    false            �            1259    32903    escultura_id_seq    SEQUENCE     �   CREATE SEQUENCE public.escultura_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.escultura_id_seq;
       public          postgres    false    216                       0    0    escultura_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.escultura_id_seq OWNED BY public.escultura.id;
          public          postgres    false    217            �            1259    32904    pintura    TABLE     �   CREATE TABLE public.pintura (
    id integer NOT NULL,
    nome character varying(50) NOT NULL,
    tecnica character varying(50) NOT NULL,
    ano_lancamento integer,
    url_imagem character varying(255) NOT NULL,
    id_artista integer
);
    DROP TABLE public.pintura;
       public         heap    postgres    false            �            1259    32907    pintura_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pintura_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.pintura_id_seq;
       public          postgres    false    218                       0    0    pintura_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.pintura_id_seq OWNED BY public.pintura.id;
          public          postgres    false    219            o           2604    32908 
   artista id    DEFAULT     h   ALTER TABLE ONLY public.artista ALTER COLUMN id SET DEFAULT nextval('public.artista_id_seq'::regclass);
 9   ALTER TABLE public.artista ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            p           2604    32909    escultura id    DEFAULT     l   ALTER TABLE ONLY public.escultura ALTER COLUMN id SET DEFAULT nextval('public.escultura_id_seq'::regclass);
 ;   ALTER TABLE public.escultura ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            q           2604    32910 
   pintura id    DEFAULT     h   ALTER TABLE ONLY public.pintura ALTER COLUMN id SET DEFAULT nextval('public.pintura_id_seq'::regclass);
 9   ALTER TABLE public.pintura ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218                      0    32894    artista 
   TABLE DATA           H   COPY public.artista (id, nome, data_nascimento, url_imagem) FROM stdin;
    public          postgres    false    214   �       
          0    32898 	   escultura 
   TABLE DATA           j   COPY public.escultura (id, nome, material, descricao, ano_lancamento, url_imagem, id_artista) FROM stdin;
    public          postgres    false    216   �                 0    32904    pintura 
   TABLE DATA           \   COPY public.pintura (id, nome, tecnica, ano_lancamento, url_imagem, id_artista) FROM stdin;
    public          postgres    false    218   �                   0    0    artista_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.artista_id_seq', 4, true);
          public          postgres    false    215                       0    0    escultura_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.escultura_id_seq', 4, true);
          public          postgres    false    217                       0    0    pintura_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.pintura_id_seq', 3, true);
          public          postgres    false    219            s           2606    32912    artista artista_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.artista
    ADD CONSTRAINT artista_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.artista DROP CONSTRAINT artista_pkey;
       public            postgres    false    214            u           2606    32914    escultura escultura_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.escultura
    ADD CONSTRAINT escultura_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.escultura DROP CONSTRAINT escultura_pkey;
       public            postgres    false    216            w           2606    32916    pintura pintura_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.pintura
    ADD CONSTRAINT pintura_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.pintura DROP CONSTRAINT pintura_pkey;
       public            postgres    false    218            x           2606    32917 #   escultura escultura_id_artista_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.escultura
    ADD CONSTRAINT escultura_id_artista_fkey FOREIGN KEY (id_artista) REFERENCES public.artista(id);
 M   ALTER TABLE ONLY public.escultura DROP CONSTRAINT escultura_id_artista_fkey;
       public          postgres    false    214    3187    216            y           2606    32922    pintura pintura_id_artista_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pintura
    ADD CONSTRAINT pintura_id_artista_fkey FOREIGN KEY (id_artista) REFERENCES public.artista(id);
 I   ALTER TABLE ONLY public.pintura DROP CONSTRAINT pintura_id_artista_fkey;
       public          postgres    false    3187    214    218               3  x���=n�0Fg�� �P�ԱK�"�
�K��m�8N�_9GH7� �=�O4_y�����W�VƩV+�
o�}�\_N��5m�?�k7�}��cCe��eGe9�vʜ�\:g G97�z@�����Vc�I�������9��o������ZG�y
kk8�u�h�|D����tO�R��j�˴��<��/���i�JM�B�(�<��8b�Ȑ�!*i ���L�WF"�@��#Ӕf��i�N2;�X�
{����g�����z}��/:�@�r�	��p�4��1`�Ѓ�k���3      
     x��RMo�0=g�A�w���&�ZR+U��#��3��*�Cl��_��č��1��"TUp�ɚO������PX>go��C�3Y�\���͔�±/8;�9�}\��������\}��=�op��[@������i��z��G,��:����Sd?Sڇs0>���4��1 \��<�h��C7��_��#�]�h�Iն�!�ɿ�l��Y�{��	�إc
�p����j+���7E)�2/�B�V2/
��i��t+0���$u����,�����Ԫ���o�&fBL�Qj� /w.���N9x���Κq�N`D8C����jZ}��i���T�eըV�V�\j��c�	]�mޖMQo�4��C��=����`����8O[�9�MV��#��D07L��)��"��v�ISgz�������N�F&G#[��gc���1Θd�W��Ό<{�ZJ7A`�n̜�Z��˷��
'�����]�JH]�.W�h�=;�)s��^�U}����׫��7�=?           x���;N�@��z��Y מ��.PP!$	!ьg�(�#{\�
$Z�����L	:�_}:�<-�~0M3.4!��4���h���'Ӥ����Vպ��Z\ʶ��Z�K�ƌc.�4TFY��4���Iƹ����ch�vV�RƃsA@�)4�w<��ǖ�B�ݍ���}m��o���pC�Tʊ��a���	`�;P�+�A8HޡTҚ��J�<���L_�>O�kZ�K��\���e�������ES[�b���j���Eǵ�悓�[Y�/����     