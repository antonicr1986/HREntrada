PGDMP     8    .                {        	   HREntrada    14.0    14.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    20546 	   HREntrada    DATABASE     g   CREATE DATABASE "HREntrada" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE "HREntrada";
                admin    false            �            1259    20547 	   empleados    TABLE     �   CREATE TABLE public.empleados (
    dni text NOT NULL,
    nom text NOT NULL,
    apellido text NOT NULL,
    nomempresa text NOT NULL,
    departament text,
    codicard integer,
    mail text,
    telephon integer
);
    DROP TABLE public.empleados;
       public         heap    admin    false            �            1259    20552    empresa    TABLE     q   CREATE TABLE public.empresa (
    nom text NOT NULL,
    address text NOT NULL,
    telephon integer NOT NULL
);
    DROP TABLE public.empresa;
       public         heap    admin    false            �            1259    20557    jornada    TABLE       CREATE TABLE public.jornada (
    dni text NOT NULL,
    nom text NOT NULL,
    apellido text NOT NULL,
    codicard integer,
    horaentrada time without time zone NOT NULL,
    horasalida time without time zone,
    total time without time zone,
    fecha date NOT NULL
);
    DROP TABLE public.jornada;
       public         heap    admin    false            �            1259    20610    users    TABLE     �   CREATE TABLE public.users (
    login text NOT NULL,
    pass text NOT NULL,
    numtipe integer NOT NULL,
    dni text NOT NULL
);
    DROP TABLE public.users;
       public         heap    admin    false            �            1259    20567    usertipe    TABLE     W   CREATE TABLE public.usertipe (
    numtipe integer NOT NULL,
    tipo text NOT NULL
);
    DROP TABLE public.usertipe;
       public         heap    admin    false                      0    20547 	   empleados 
   TABLE DATA           j   COPY public.empleados (dni, nom, apellido, nomempresa, departament, codicard, mail, telephon) FROM stdin;
    public          admin    false    209   �                 0    20552    empresa 
   TABLE DATA           9   COPY public.empresa (nom, address, telephon) FROM stdin;
    public          admin    false    210   D                 0    20557    jornada 
   TABLE DATA           f   COPY public.jornada (dni, nom, apellido, codicard, horaentrada, horasalida, total, fecha) FROM stdin;
    public          admin    false    211   �                 0    20610    users 
   TABLE DATA           :   COPY public.users (login, pass, numtipe, dni) FROM stdin;
    public          admin    false    213   �                 0    20567    usertipe 
   TABLE DATA           1   COPY public.usertipe (numtipe, tipo) FROM stdin;
    public          admin    false    212          l           2606    20573    empleados empleados_codicard 
   CONSTRAINT     [   ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_codicard UNIQUE (codicard);
 F   ALTER TABLE ONLY public.empleados DROP CONSTRAINT empleados_codicard;
       public            admin    false    209            n           2606    20575    empleados empleados_dni 
   CONSTRAINT     Q   ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_dni UNIQUE (dni);
 A   ALTER TABLE ONLY public.empleados DROP CONSTRAINT empleados_dni;
       public            admin    false    209            p           2606    20577    empleados empleados_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_pkey PRIMARY KEY (dni);
 B   ALTER TABLE ONLY public.empleados DROP CONSTRAINT empleados_pkey;
       public            admin    false    209            r           2606    20579    empresa empresa_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.empresa
    ADD CONSTRAINT empresa_pkey PRIMARY KEY (nom);
 >   ALTER TABLE ONLY public.empresa DROP CONSTRAINT empresa_pkey;
       public            admin    false    210            t           2606    20581    jornada jornada_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.jornada
    ADD CONSTRAINT jornada_pkey PRIMARY KEY (dni);
 >   ALTER TABLE ONLY public.jornada DROP CONSTRAINT jornada_pkey;
       public            admin    false    211            x           2606    20616    users users_dni 
   CONSTRAINT     I   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_dni UNIQUE (dni);
 9   ALTER TABLE ONLY public.users DROP CONSTRAINT users_dni;
       public            admin    false    213            z           2606    20618    users users_login 
   CONSTRAINT     M   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_login UNIQUE (login);
 ;   ALTER TABLE ONLY public.users DROP CONSTRAINT users_login;
       public            admin    false    213            |           2606    20620    users users_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (login);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            admin    false    213            v           2606    20589    usertipe usertipe_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.usertipe
    ADD CONSTRAINT usertipe_pkey PRIMARY KEY (numtipe);
 @   ALTER TABLE ONLY public.usertipe DROP CONSTRAINT usertipe_pkey;
       public            admin    false    212            }           2606    20590 #   empleados empleados_nomempresa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_nomempresa_fkey FOREIGN KEY (nomempresa) REFERENCES public.empresa(nom);
 M   ALTER TABLE ONLY public.empleados DROP CONSTRAINT empleados_nomempresa_fkey;
       public          admin    false    209    210    3186            ~           2606    20595    jornada jornada_codicard_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.jornada
    ADD CONSTRAINT jornada_codicard_fkey FOREIGN KEY (codicard) REFERENCES public.empleados(codicard);
 G   ALTER TABLE ONLY public.jornada DROP CONSTRAINT jornada_codicard_fkey;
       public          admin    false    209    211    3180                       2606    20621    users users_dni_fkey    FK CONSTRAINT     t   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_dni_fkey FOREIGN KEY (dni) REFERENCES public.empleados(dni);
 >   ALTER TABLE ONLY public.users DROP CONSTRAINT users_dni_fkey;
       public          admin    false    213    209    3182            �           2606    20626    users users_numtipe_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_numtipe_fkey FOREIGN KEY (numtipe) REFERENCES public.usertipe(numtipe);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_numtipe_fkey;
       public          admin    false    3190    212    213               B   x�3426153�p�L/-.I,��,N=�1�(1��3$�2�$��1'7195����3���b���� �pz         =   x�ɯ�/I�t�Q((J,�4426153����,N����/.�,I��I-��[q��qqq ��         I   x�3426153�p�L/-.I,��,N=�1�(1���,ga�ihhelfel�g`bjA����X��R�Ș+F��� 9�5            x�K/-�442�4 �&�f��\1z\\\ G��            x�3�LL����2�,-N-����� : �     