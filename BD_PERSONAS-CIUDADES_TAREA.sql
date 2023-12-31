PGDMP         ;            	    {           BD_Personas_Ciudades    15.4    15.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16660    BD_Personas_Ciudades    DATABASE     �   CREATE DATABASE "BD_Personas_Ciudades" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
 &   DROP DATABASE "BD_Personas_Ciudades";
                postgres    false            �            1259    16674    ciudades    TABLE     s   CREATE TABLE public.ciudades (
    id_ciudad integer NOT NULL,
    nombre_ciudad character varying(50) NOT NULL
);
    DROP TABLE public.ciudades;
       public         heap    postgres    false            �            1259    16679    Ciudades_Id_Ciudad_seq    SEQUENCE     �   CREATE SEQUENCE public."Ciudades_Id_Ciudad_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 /   DROP SEQUENCE public."Ciudades_Id_Ciudad_seq";
       public          postgres    false    214            	           0    0    Ciudades_Id_Ciudad_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."Ciudades_Id_Ciudad_seq" OWNED BY public.ciudades.id_ciudad;
          public          postgres    false    215            �            1259    16680    personas    TABLE     f  CREATE TABLE public.personas (
    id_persona integer NOT NULL,
    nombre character varying(50) NOT NULL,
    apellido character varying(50) NOT NULL,
    direccion character varying(60) NOT NULL,
    email character varying(30) NOT NULL,
    celular character varying(15) NOT NULL,
    edad character varying(3) NOT NULL,
    id_ciudad integer NOT NULL
);
    DROP TABLE public.personas;
       public         heap    postgres    false            �            1259    16685    Personas_Id_Persona_seq    SEQUENCE     �   CREATE SEQUENCE public."Personas_Id_Persona_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 0   DROP SEQUENCE public."Personas_Id_Persona_seq";
       public          postgres    false    216            
           0    0    Personas_Id_Persona_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Personas_Id_Persona_seq" OWNED BY public.personas.id_persona;
          public          postgres    false    217            j           2604    16692    ciudades id_ciudad    DEFAULT     z   ALTER TABLE ONLY public.ciudades ALTER COLUMN id_ciudad SET DEFAULT nextval('public."Ciudades_Id_Ciudad_seq"'::regclass);
 A   ALTER TABLE public.ciudades ALTER COLUMN id_ciudad DROP DEFAULT;
       public          postgres    false    215    214            k           2604    16693    personas id_persona    DEFAULT     |   ALTER TABLE ONLY public.personas ALTER COLUMN id_persona SET DEFAULT nextval('public."Personas_Id_Persona_seq"'::regclass);
 B   ALTER TABLE public.personas ALTER COLUMN id_persona DROP DEFAULT;
       public          postgres    false    217    216            �          0    16674    ciudades 
   TABLE DATA           <   COPY public.ciudades (id_ciudad, nombre_ciudad) FROM stdin;
    public          postgres    false    214   1                 0    16680    personas 
   TABLE DATA           l   COPY public.personas (id_persona, nombre, apellido, direccion, email, celular, edad, id_ciudad) FROM stdin;
    public          postgres    false    216                     0    0    Ciudades_Id_Ciudad_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Ciudades_Id_Ciudad_seq"', 4, true);
          public          postgres    false    215                       0    0    Personas_Id_Persona_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Personas_Id_Persona_seq"', 5, true);
          public          postgres    false    217            m           2606    16678    ciudades ciudades_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.ciudades
    ADD CONSTRAINT ciudades_pkey PRIMARY KEY (id_ciudad);
 @   ALTER TABLE ONLY public.ciudades DROP CONSTRAINT ciudades_pkey;
       public            postgres    false    214            o           2606    16684    personas personas_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.personas
    ADD CONSTRAINT personas_pkey PRIMARY KEY (id_persona);
 @   ALTER TABLE ONLY public.personas DROP CONSTRAINT personas_pkey;
       public            postgres    false    216            p           2606    16686    personas id_ciudad    FK CONSTRAINT     �   ALTER TABLE ONLY public.personas
    ADD CONSTRAINT id_ciudad FOREIGN KEY (id_ciudad) REFERENCES public.ciudades(id_ciudad) NOT VALID;
 <   ALTER TABLE ONLY public.personas DROP CONSTRAINT id_ciudad;
       public          postgres    false    214    3181    216            �   >   x�3�t,.�K�<�9�ˈ�7�(31/_!HO�1'?�8�˘�'3� 3�˄ӧ��4�+F��� �o         �   x�]�=o�0@�󯸑,�?�x#]*!P����5��(��I��u�	�{w6|����k<��Fܧ��p��t]��4P��.���*�QHҀ`vi���TL_�Dx���L]BQD���ߕo�iz��
w�� eA2�9��'���"���:w�INU(���j�3p��y���=S��m1-��ea��E�TE�ʖ�A���1��U�     