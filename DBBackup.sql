--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3 (Ubuntu 12.3-1.pgdg16.04+1)
-- Dumped by pg_dump version 12.3

-- Started on 2020-08-20 12:54:50 CEST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 202 (class 1259 OID 19603508)
-- Name: artifact_types; Type: TABLE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE TABLE public.artifact_types (
    id bigint NOT NULL,
    name character varying(50)
);


ALTER TABLE public.artifact_types OWNER TO lahabwdfwwaevk;

--
-- TOC entry 203 (class 1259 OID 19603511)
-- Name: artifact_types_id_seq; Type: SEQUENCE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE SEQUENCE public.artifact_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artifact_types_id_seq OWNER TO lahabwdfwwaevk;

--
-- TOC entry 4059 (class 0 OID 0)
-- Dependencies: 203
-- Name: artifact_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lahabwdfwwaevk
--

ALTER SEQUENCE public.artifact_types_id_seq OWNED BY public.artifact_types.id;


--
-- TOC entry 204 (class 1259 OID 19603513)
-- Name: artifacts; Type: TABLE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE TABLE public.artifacts (
    id bigint NOT NULL,
    name character varying(50),
    price integer,
    category_id bigint NOT NULL,
    description text,
    artifact_type_id bigint NOT NULL
);


ALTER TABLE public.artifacts OWNER TO lahabwdfwwaevk;

--
-- TOC entry 205 (class 1259 OID 19603519)
-- Name: artifacts_artifact_type_id_seq; Type: SEQUENCE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE SEQUENCE public.artifacts_artifact_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artifacts_artifact_type_id_seq OWNER TO lahabwdfwwaevk;

--
-- TOC entry 4060 (class 0 OID 0)
-- Dependencies: 205
-- Name: artifacts_artifact_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lahabwdfwwaevk
--

ALTER SEQUENCE public.artifacts_artifact_type_id_seq OWNED BY public.artifacts.artifact_type_id;


--
-- TOC entry 206 (class 1259 OID 19603521)
-- Name: artifacts_category_id_seq; Type: SEQUENCE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE SEQUENCE public.artifacts_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artifacts_category_id_seq OWNER TO lahabwdfwwaevk;

--
-- TOC entry 4061 (class 0 OID 0)
-- Dependencies: 206
-- Name: artifacts_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lahabwdfwwaevk
--

ALTER SEQUENCE public.artifacts_category_id_seq OWNED BY public.artifacts.category_id;


--
-- TOC entry 207 (class 1259 OID 19603523)
-- Name: artifacts_id_seq; Type: SEQUENCE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE SEQUENCE public.artifacts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artifacts_id_seq OWNER TO lahabwdfwwaevk;

--
-- TOC entry 4062 (class 0 OID 0)
-- Dependencies: 207
-- Name: artifacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lahabwdfwwaevk
--

ALTER SEQUENCE public.artifacts_id_seq OWNED BY public.artifacts.id;


--
-- TOC entry 208 (class 1259 OID 19603525)
-- Name: categories; Type: TABLE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE TABLE public.categories (
    id bigint NOT NULL,
    name character varying(50)
);


ALTER TABLE public.categories OWNER TO lahabwdfwwaevk;

--
-- TOC entry 209 (class 1259 OID 19603528)
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO lahabwdfwwaevk;

--
-- TOC entry 4063 (class 0 OID 0)
-- Dependencies: 209
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lahabwdfwwaevk
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- TOC entry 210 (class 1259 OID 19603530)
-- Name: classes; Type: TABLE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE TABLE public.classes (
    id bigint NOT NULL,
    name text
);


ALTER TABLE public.classes OWNER TO lahabwdfwwaevk;

--
-- TOC entry 211 (class 1259 OID 19603536)
-- Name: classes_id_seq; Type: SEQUENCE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE SEQUENCE public.classes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.classes_id_seq OWNER TO lahabwdfwwaevk;

--
-- TOC entry 4064 (class 0 OID 0)
-- Dependencies: 211
-- Name: classes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lahabwdfwwaevk
--

ALTER SEQUENCE public.classes_id_seq OWNED BY public.classes.id;


--
-- TOC entry 239 (class 1259 OID 19690376)
-- Name: creeps; Type: TABLE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE TABLE public.creeps (
    id integer NOT NULL,
    user_details_id bigint
);


ALTER TABLE public.creeps OWNER TO lahabwdfwwaevk;

--
-- TOC entry 238 (class 1259 OID 19690374)
-- Name: creeps_id_seq; Type: SEQUENCE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE SEQUENCE public.creeps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.creeps_id_seq OWNER TO lahabwdfwwaevk;

--
-- TOC entry 4065 (class 0 OID 0)
-- Dependencies: 238
-- Name: creeps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lahabwdfwwaevk
--

ALTER SEQUENCE public.creeps_id_seq OWNED BY public.creeps.id;


--
-- TOC entry 237 (class 1259 OID 19689003)
-- Name: mentors; Type: TABLE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE TABLE public.mentors (
    id bigint NOT NULL,
    user_details_id bigint
);


ALTER TABLE public.mentors OWNER TO lahabwdfwwaevk;

--
-- TOC entry 240 (class 1259 OID 19692318)
-- Name: mentors_classes; Type: TABLE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE TABLE public.mentors_classes (
    classes_id bigint,
    mentors_id bigint
);


ALTER TABLE public.mentors_classes OWNER TO lahabwdfwwaevk;

--
-- TOC entry 236 (class 1259 OID 19689001)
-- Name: mentors_id_seq; Type: SEQUENCE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE SEQUENCE public.mentors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mentors_id_seq OWNER TO lahabwdfwwaevk;

--
-- TOC entry 4066 (class 0 OID 0)
-- Dependencies: 236
-- Name: mentors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lahabwdfwwaevk
--

ALTER SEQUENCE public.mentors_id_seq OWNED BY public.mentors.id;


--
-- TOC entry 212 (class 1259 OID 19603538)
-- Name: quests; Type: TABLE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE TABLE public.quests (
    id bigint NOT NULL,
    name character varying(50),
    description text,
    value integer
);


ALTER TABLE public.quests OWNER TO lahabwdfwwaevk;

--
-- TOC entry 213 (class 1259 OID 19603544)
-- Name: quests_id_seq; Type: SEQUENCE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE SEQUENCE public.quests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.quests_id_seq OWNER TO lahabwdfwwaevk;

--
-- TOC entry 4067 (class 0 OID 0)
-- Dependencies: 213
-- Name: quests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lahabwdfwwaevk
--

ALTER SEQUENCE public.quests_id_seq OWNED BY public.quests.id;


--
-- TOC entry 214 (class 1259 OID 19603546)
-- Name: roles; Type: TABLE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE TABLE public.roles (
    id bigint NOT NULL,
    name text
);


ALTER TABLE public.roles OWNER TO lahabwdfwwaevk;

--
-- TOC entry 215 (class 1259 OID 19603552)
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_seq OWNER TO lahabwdfwwaevk;

--
-- TOC entry 4068 (class 0 OID 0)
-- Dependencies: 215
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lahabwdfwwaevk
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- TOC entry 242 (class 1259 OID 19726902)
-- Name: shared_artifacts_payments; Type: TABLE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE TABLE public.shared_artifacts_payments (
    id bigint NOT NULL,
    student_id bigint NOT NULL,
    student_artifact_id bigint NOT NULL,
    payment integer NOT NULL
);


ALTER TABLE public.shared_artifacts_payments OWNER TO lahabwdfwwaevk;

--
-- TOC entry 241 (class 1259 OID 19726900)
-- Name: shared_artifacts_payments_id_seq; Type: SEQUENCE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE SEQUENCE public.shared_artifacts_payments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shared_artifacts_payments_id_seq OWNER TO lahabwdfwwaevk;

--
-- TOC entry 4069 (class 0 OID 0)
-- Dependencies: 241
-- Name: shared_artifacts_payments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lahabwdfwwaevk
--

ALTER SEQUENCE public.shared_artifacts_payments_id_seq OWNED BY public.shared_artifacts_payments.id;


--
-- TOC entry 216 (class 1259 OID 19603568)
-- Name: statuses; Type: TABLE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE TABLE public.statuses (
    id bigint NOT NULL,
    name character varying(50)
);


ALTER TABLE public.statuses OWNER TO lahabwdfwwaevk;

--
-- TOC entry 217 (class 1259 OID 19603571)
-- Name: statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE SEQUENCE public.statuses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.statuses_id_seq OWNER TO lahabwdfwwaevk;

--
-- TOC entry 4070 (class 0 OID 0)
-- Dependencies: 217
-- Name: statuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lahabwdfwwaevk
--

ALTER SEQUENCE public.statuses_id_seq OWNED BY public.statuses.id;


--
-- TOC entry 218 (class 1259 OID 19603573)
-- Name: student_artifacts; Type: TABLE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE TABLE public.student_artifacts (
    id bigint NOT NULL,
    artifact_id bigint NOT NULL,
    status boolean,
    wallet_id bigint NOT NULL
);


ALTER TABLE public.student_artifacts OWNER TO lahabwdfwwaevk;

--
-- TOC entry 219 (class 1259 OID 19603576)
-- Name: student_artifacts_artifact_id_seq; Type: SEQUENCE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE SEQUENCE public.student_artifacts_artifact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_artifacts_artifact_id_seq OWNER TO lahabwdfwwaevk;

--
-- TOC entry 4071 (class 0 OID 0)
-- Dependencies: 219
-- Name: student_artifacts_artifact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lahabwdfwwaevk
--

ALTER SEQUENCE public.student_artifacts_artifact_id_seq OWNED BY public.student_artifacts.artifact_id;


--
-- TOC entry 220 (class 1259 OID 19603578)
-- Name: student_artifacts_id_seq; Type: SEQUENCE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE SEQUENCE public.student_artifacts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_artifacts_id_seq OWNER TO lahabwdfwwaevk;

--
-- TOC entry 4072 (class 0 OID 0)
-- Dependencies: 220
-- Name: student_artifacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lahabwdfwwaevk
--

ALTER SEQUENCE public.student_artifacts_id_seq OWNED BY public.student_artifacts.id;


--
-- TOC entry 221 (class 1259 OID 19603580)
-- Name: student_artifacts_wallet_id_seq; Type: SEQUENCE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE SEQUENCE public.student_artifacts_wallet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_artifacts_wallet_id_seq OWNER TO lahabwdfwwaevk;

--
-- TOC entry 4073 (class 0 OID 0)
-- Dependencies: 221
-- Name: student_artifacts_wallet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lahabwdfwwaevk
--

ALTER SEQUENCE public.student_artifacts_wallet_id_seq OWNED BY public.student_artifacts.wallet_id;


--
-- TOC entry 222 (class 1259 OID 19603582)
-- Name: student_quests; Type: TABLE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE TABLE public.student_quests (
    id bigint NOT NULL,
    quest_id bigint NOT NULL,
    status_id bigint NOT NULL,
    wallet_id bigint NOT NULL
);


ALTER TABLE public.student_quests OWNER TO lahabwdfwwaevk;

--
-- TOC entry 223 (class 1259 OID 19603593)
-- Name: student_quests_id_seq; Type: SEQUENCE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE SEQUENCE public.student_quests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_quests_id_seq OWNER TO lahabwdfwwaevk;

--
-- TOC entry 4074 (class 0 OID 0)
-- Dependencies: 223
-- Name: student_quests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lahabwdfwwaevk
--

ALTER SEQUENCE public.student_quests_id_seq OWNED BY public.student_quests.id;


--
-- TOC entry 224 (class 1259 OID 19603595)
-- Name: student_quests_quest_id_seq; Type: SEQUENCE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE SEQUENCE public.student_quests_quest_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_quests_quest_id_seq OWNER TO lahabwdfwwaevk;

--
-- TOC entry 4075 (class 0 OID 0)
-- Dependencies: 224
-- Name: student_quests_quest_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lahabwdfwwaevk
--

ALTER SEQUENCE public.student_quests_quest_id_seq OWNED BY public.student_quests.quest_id;


--
-- TOC entry 225 (class 1259 OID 19603597)
-- Name: student_quests_status_id_seq; Type: SEQUENCE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE SEQUENCE public.student_quests_status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_quests_status_id_seq OWNER TO lahabwdfwwaevk;

--
-- TOC entry 4076 (class 0 OID 0)
-- Dependencies: 225
-- Name: student_quests_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lahabwdfwwaevk
--

ALTER SEQUENCE public.student_quests_status_id_seq OWNED BY public.student_quests.status_id;


--
-- TOC entry 226 (class 1259 OID 19603599)
-- Name: student_quests_wallet_id_seq; Type: SEQUENCE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE SEQUENCE public.student_quests_wallet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_quests_wallet_id_seq OWNER TO lahabwdfwwaevk;

--
-- TOC entry 4077 (class 0 OID 0)
-- Dependencies: 226
-- Name: student_quests_wallet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lahabwdfwwaevk
--

ALTER SEQUENCE public.student_quests_wallet_id_seq OWNED BY public.student_quests.wallet_id;


--
-- TOC entry 233 (class 1259 OID 19603615)
-- Name: students; Type: TABLE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE TABLE public.students (
    id bigint NOT NULL,
    user_details_id bigint NOT NULL,
    coins integer
);


ALTER TABLE public.students OWNER TO lahabwdfwwaevk;

--
-- TOC entry 228 (class 1259 OID 19603604)
-- Name: students_classes; Type: TABLE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE TABLE public.students_classes (
    classes_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.students_classes OWNER TO lahabwdfwwaevk;

--
-- TOC entry 227 (class 1259 OID 19603601)
-- Name: user_details; Type: TABLE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE TABLE public.user_details (
    id bigint NOT NULL,
    name character varying(50),
    surname character varying(50),
    email character varying(50),
    password character varying(50),
    role_id bigint NOT NULL,
    is_active boolean
);


ALTER TABLE public.user_details OWNER TO lahabwdfwwaevk;

--
-- TOC entry 229 (class 1259 OID 19603607)
-- Name: user_details_classes_classes_id_seq; Type: SEQUENCE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE SEQUENCE public.user_details_classes_classes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_details_classes_classes_id_seq OWNER TO lahabwdfwwaevk;

--
-- TOC entry 4078 (class 0 OID 0)
-- Dependencies: 229
-- Name: user_details_classes_classes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lahabwdfwwaevk
--

ALTER SEQUENCE public.user_details_classes_classes_id_seq OWNED BY public.students_classes.classes_id;


--
-- TOC entry 230 (class 1259 OID 19603609)
-- Name: user_details_classes_user_id_seq; Type: SEQUENCE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE SEQUENCE public.user_details_classes_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_details_classes_user_id_seq OWNER TO lahabwdfwwaevk;

--
-- TOC entry 4079 (class 0 OID 0)
-- Dependencies: 230
-- Name: user_details_classes_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lahabwdfwwaevk
--

ALTER SEQUENCE public.user_details_classes_user_id_seq OWNED BY public.students_classes.user_id;


--
-- TOC entry 231 (class 1259 OID 19603611)
-- Name: user_details_id_seq; Type: SEQUENCE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE SEQUENCE public.user_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_details_id_seq OWNER TO lahabwdfwwaevk;

--
-- TOC entry 4080 (class 0 OID 0)
-- Dependencies: 231
-- Name: user_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lahabwdfwwaevk
--

ALTER SEQUENCE public.user_details_id_seq OWNED BY public.user_details.id;


--
-- TOC entry 232 (class 1259 OID 19603613)
-- Name: user_details_role_id_seq; Type: SEQUENCE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE SEQUENCE public.user_details_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_details_role_id_seq OWNER TO lahabwdfwwaevk;

--
-- TOC entry 4081 (class 0 OID 0)
-- Dependencies: 232
-- Name: user_details_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lahabwdfwwaevk
--

ALTER SEQUENCE public.user_details_role_id_seq OWNED BY public.user_details.role_id;


--
-- TOC entry 234 (class 1259 OID 19603618)
-- Name: wallets_id_seq; Type: SEQUENCE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE SEQUENCE public.wallets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wallets_id_seq OWNER TO lahabwdfwwaevk;

--
-- TOC entry 4082 (class 0 OID 0)
-- Dependencies: 234
-- Name: wallets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lahabwdfwwaevk
--

ALTER SEQUENCE public.wallets_id_seq OWNED BY public.students.id;


--
-- TOC entry 235 (class 1259 OID 19603620)
-- Name: wallets_user_details_id_seq; Type: SEQUENCE; Schema: public; Owner: lahabwdfwwaevk
--

CREATE SEQUENCE public.wallets_user_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wallets_user_details_id_seq OWNER TO lahabwdfwwaevk;

--
-- TOC entry 4083 (class 0 OID 0)
-- Dependencies: 235
-- Name: wallets_user_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lahabwdfwwaevk
--

ALTER SEQUENCE public.wallets_user_details_id_seq OWNED BY public.students.user_details_id;


--
-- TOC entry 3815 (class 2604 OID 19603622)
-- Name: artifact_types id; Type: DEFAULT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.artifact_types ALTER COLUMN id SET DEFAULT nextval('public.artifact_types_id_seq'::regclass);


--
-- TOC entry 3816 (class 2604 OID 19603623)
-- Name: artifacts id; Type: DEFAULT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.artifacts ALTER COLUMN id SET DEFAULT nextval('public.artifacts_id_seq'::regclass);


--
-- TOC entry 3817 (class 2604 OID 19603624)
-- Name: artifacts category_id; Type: DEFAULT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.artifacts ALTER COLUMN category_id SET DEFAULT nextval('public.artifacts_category_id_seq'::regclass);


--
-- TOC entry 3818 (class 2604 OID 19603625)
-- Name: artifacts artifact_type_id; Type: DEFAULT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.artifacts ALTER COLUMN artifact_type_id SET DEFAULT nextval('public.artifacts_artifact_type_id_seq'::regclass);


--
-- TOC entry 3819 (class 2604 OID 19603626)
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- TOC entry 3820 (class 2604 OID 19603627)
-- Name: classes id; Type: DEFAULT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.classes ALTER COLUMN id SET DEFAULT nextval('public.classes_id_seq'::regclass);


--
-- TOC entry 3838 (class 2604 OID 19690379)
-- Name: creeps id; Type: DEFAULT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.creeps ALTER COLUMN id SET DEFAULT nextval('public.creeps_id_seq'::regclass);


--
-- TOC entry 3837 (class 2604 OID 19721467)
-- Name: mentors id; Type: DEFAULT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.mentors ALTER COLUMN id SET DEFAULT nextval('public.mentors_id_seq'::regclass);


--
-- TOC entry 3821 (class 2604 OID 19603628)
-- Name: quests id; Type: DEFAULT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.quests ALTER COLUMN id SET DEFAULT nextval('public.quests_id_seq'::regclass);


--
-- TOC entry 3822 (class 2604 OID 19603629)
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- TOC entry 3839 (class 2604 OID 19726919)
-- Name: shared_artifacts_payments id; Type: DEFAULT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.shared_artifacts_payments ALTER COLUMN id SET DEFAULT nextval('public.shared_artifacts_payments_id_seq'::regclass);


--
-- TOC entry 3823 (class 2604 OID 19603633)
-- Name: statuses id; Type: DEFAULT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.statuses ALTER COLUMN id SET DEFAULT nextval('public.statuses_id_seq'::regclass);


--
-- TOC entry 3824 (class 2604 OID 19603643)
-- Name: student_artifacts id; Type: DEFAULT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.student_artifacts ALTER COLUMN id SET DEFAULT nextval('public.student_artifacts_id_seq'::regclass);


--
-- TOC entry 3825 (class 2604 OID 19603645)
-- Name: student_artifacts artifact_id; Type: DEFAULT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.student_artifacts ALTER COLUMN artifact_id SET DEFAULT nextval('public.student_artifacts_artifact_id_seq'::regclass);


--
-- TOC entry 3826 (class 2604 OID 19603646)
-- Name: student_artifacts wallet_id; Type: DEFAULT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.student_artifacts ALTER COLUMN wallet_id SET DEFAULT nextval('public.student_artifacts_wallet_id_seq'::regclass);


--
-- TOC entry 3827 (class 2604 OID 19603647)
-- Name: student_quests id; Type: DEFAULT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.student_quests ALTER COLUMN id SET DEFAULT nextval('public.student_quests_id_seq'::regclass);


--
-- TOC entry 3828 (class 2604 OID 19603648)
-- Name: student_quests quest_id; Type: DEFAULT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.student_quests ALTER COLUMN quest_id SET DEFAULT nextval('public.student_quests_quest_id_seq'::regclass);


--
-- TOC entry 3829 (class 2604 OID 19603649)
-- Name: student_quests status_id; Type: DEFAULT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.student_quests ALTER COLUMN status_id SET DEFAULT nextval('public.student_quests_status_id_seq'::regclass);


--
-- TOC entry 3830 (class 2604 OID 19603650)
-- Name: student_quests wallet_id; Type: DEFAULT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.student_quests ALTER COLUMN wallet_id SET DEFAULT nextval('public.student_quests_wallet_id_seq'::regclass);


--
-- TOC entry 3835 (class 2604 OID 19603655)
-- Name: students id; Type: DEFAULT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.wallets_id_seq'::regclass);


--
-- TOC entry 3836 (class 2604 OID 19603656)
-- Name: students user_details_id; Type: DEFAULT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.students ALTER COLUMN user_details_id SET DEFAULT nextval('public.wallets_user_details_id_seq'::regclass);


--
-- TOC entry 3833 (class 2604 OID 19603653)
-- Name: students_classes classes_id; Type: DEFAULT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.students_classes ALTER COLUMN classes_id SET DEFAULT nextval('public.user_details_classes_classes_id_seq'::regclass);


--
-- TOC entry 3834 (class 2604 OID 19603654)
-- Name: students_classes user_id; Type: DEFAULT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.students_classes ALTER COLUMN user_id SET DEFAULT nextval('public.user_details_classes_user_id_seq'::regclass);


--
-- TOC entry 3831 (class 2604 OID 19603651)
-- Name: user_details id; Type: DEFAULT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.user_details ALTER COLUMN id SET DEFAULT nextval('public.user_details_id_seq'::regclass);


--
-- TOC entry 3832 (class 2604 OID 19603652)
-- Name: user_details role_id; Type: DEFAULT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.user_details ALTER COLUMN role_id SET DEFAULT nextval('public.user_details_role_id_seq'::regclass);


--
-- TOC entry 4011 (class 0 OID 19603508)
-- Dependencies: 202
-- Data for Name: artifact_types; Type: TABLE DATA; Schema: public; Owner: lahabwdfwwaevk
--

INSERT INTO public.artifact_types VALUES (1, '﻿﻿private');
INSERT INTO public.artifact_types VALUES (2, '﻿﻿group');


--
-- TOC entry 4013 (class 0 OID 19603513)
-- Dependencies: 204
-- Data for Name: artifacts; Type: TABLE DATA; Schema: public; Owner: lahabwdfwwaevk
--

INSERT INTO public.artifacts VALUES (2, 'Cup', 10000, 1, 'It is a super cup, if You got one, job is in your pocket!', 1);
INSERT INTO public.artifacts VALUES (3, 'FunnyHarryOne', 5000, 2, 'When it’s used, every mentor will come as Harry Potter character to school next time.', 2);
INSERT INTO public.artifacts VALUES (4, 'Sword', 200, 1, 'It is a price for a try! I bet You can not remove that sword from the rock!', 1);
INSERT INTO public.artifacts VALUES (5, 'SeriousOne', 100, 2, 'After You buy it, You have got one more job interview ensured.', 1);
INSERT INTO public.artifacts VALUES (6, 'Coffee', 400, 1, 'You can make a coffee for free this time! :)', 1);
INSERT INTO public.artifacts VALUES (7, 'PingPong', 100, 2, 'You are now signed to daily ping-pong tournament at 3pm when used!', 1);
INSERT INTO public.artifacts VALUES (8, 'FunnyBackward', 4000, 2, 'Every mentor has to start going backwards till the end of the day.', 2);
INSERT INTO public.artifacts VALUES (9, 'Hat', 1000, 1, 'It is a nice hat with codecool logo on it!', 1);
INSERT INTO public.artifacts VALUES (10, 'Shirt', 800, 1, 'It is a nice t-shirt with codecool logo on it!', 1);
INSERT INTO public.artifacts VALUES (11, 'FunnySound', 1000, 1, 'Mentors will talk in falset voice for an hour!', 2);


--
-- TOC entry 4017 (class 0 OID 19603525)
-- Dependencies: 208
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: lahabwdfwwaevk
--

INSERT INTO public.categories VALUES (1, 'physical item');
INSERT INTO public.categories VALUES (2, 'theoretical thing');


--
-- TOC entry 4019 (class 0 OID 19603530)
-- Dependencies: 210
-- Data for Name: classes; Type: TABLE DATA; Schema: public; Owner: lahabwdfwwaevk
--

INSERT INTO public.classes VALUES (1, '﻿ProgBase');
INSERT INTO public.classes VALUES (2, '﻿JavaOOP');
INSERT INTO public.classes VALUES (3, '﻿Web with SQL');
INSERT INTO public.classes VALUES (4, '﻿Advanced');


--
-- TOC entry 4048 (class 0 OID 19690376)
-- Dependencies: 239
-- Data for Name: creeps; Type: TABLE DATA; Schema: public; Owner: lahabwdfwwaevk
--

INSERT INTO public.creeps VALUES (1, 8);


--
-- TOC entry 4046 (class 0 OID 19689003)
-- Dependencies: 237
-- Data for Name: mentors; Type: TABLE DATA; Schema: public; Owner: lahabwdfwwaevk
--

INSERT INTO public.mentors VALUES (1, 5);
INSERT INTO public.mentors VALUES (2, 6);
INSERT INTO public.mentors VALUES (3, 13);
INSERT INTO public.mentors VALUES (4, 4);


--
-- TOC entry 4049 (class 0 OID 19692318)
-- Dependencies: 240
-- Data for Name: mentors_classes; Type: TABLE DATA; Schema: public; Owner: lahabwdfwwaevk
--

INSERT INTO public.mentors_classes VALUES (2, 1);
INSERT INTO public.mentors_classes VALUES (3, 2);
INSERT INTO public.mentors_classes VALUES (4, 3);
INSERT INTO public.mentors_classes VALUES (1, 4);


--
-- TOC entry 4021 (class 0 OID 19603538)
-- Dependencies: 212
-- Data for Name: quests; Type: TABLE DATA; Schema: public; Owner: lahabwdfwwaevk
--

INSERT INTO public.quests VALUES (1, 'cook Assistant', 'It is shady description', 120);
INSERT INTO public.quests VALUES (2, 'Demon Slayer', 'Donec vitae dui ac dolor cursus blandit eu a velit. Sed ut arcu vitae justo auctor venenatis a a nisl.', 110);
INSERT INTO public.quests VALUES (3, 'Shield of Arrav', 'Morbi molestie non nisl ut fermentum. Ut eu enim convallis, porttitor mauris ac, tempus eros.', 300);
INSERT INTO public.quests VALUES (4, 'Sheep Shearer', 'Pellentesque a posuere odio, sit amet tristique ante. Curabitur euismod ex metus, consequat varius augue aliquam.', 150);
INSERT INTO public.quests VALUES (5, 'The Restless Ghost', 'Quisque arcu erat, laoreet nec tortor sit amet, porttitor lacinia eros. Fusce bibendum Fringilla.', 230);
INSERT INTO public.quests VALUES (6, 'Imp Catcher', 'Donec in posuere nisl, vitae mollis eros. Aenean nulla mi, sagittis id vulputate at, efficitur vel augue.', 145);
INSERT INTO public.quests VALUES (7, 'Ernest the Chicken', 'Etiam ac lorem ut mi ullamcorper rhoncus. Fusce accumsan arcu mattis rutrum sodales.', 60);
INSERT INTO public.quests VALUES (8, 'Prince Ali Rescue', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent semper scelerisque nunc, sed rhoncus urna facilisis at.', 325);
INSERT INTO public.quests VALUES (9, 'Doric Quest', 'Mauris ut imperdiet justo. Suspendisse sed lectus eget enim viverra congue.', 195);
INSERT INTO public.quests VALUES (10, 'Goblin Diplomacy', 'Vivamus efficitur non nunc in bibendum. Maecenas ultricies, mi nec iaculis vehicula, odio tellus congue quam.', 35);


--
-- TOC entry 4023 (class 0 OID 19603546)
-- Dependencies: 214
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: lahabwdfwwaevk
--

INSERT INTO public.roles VALUES (1, 'creep');
INSERT INTO public.roles VALUES (2, 'mentor');
INSERT INTO public.roles VALUES (3, 'student');


--
-- TOC entry 4051 (class 0 OID 19726902)
-- Dependencies: 242
-- Data for Name: shared_artifacts_payments; Type: TABLE DATA; Schema: public; Owner: lahabwdfwwaevk
--

INSERT INTO public.shared_artifacts_payments VALUES (1, 2, 5, 500);
INSERT INTO public.shared_artifacts_payments VALUES (2, 2, 4, 500);
INSERT INTO public.shared_artifacts_payments VALUES (3, 4, 2, 10000);
INSERT INTO public.shared_artifacts_payments VALUES (4, 5, 5, 500);
INSERT INTO public.shared_artifacts_payments VALUES (5, 8, 3, 800);
INSERT INTO public.shared_artifacts_payments VALUES (6, 3, 7, 100);
INSERT INTO public.shared_artifacts_payments VALUES (7, 12, 1, 500);
INSERT INTO public.shared_artifacts_payments VALUES (8, 1, 6, 400);


--
-- TOC entry 4025 (class 0 OID 19603568)
-- Dependencies: 216
-- Data for Name: statuses; Type: TABLE DATA; Schema: public; Owner: lahabwdfwwaevk
--

INSERT INTO public.statuses VALUES (1, '﻿﻿Never started');
INSERT INTO public.statuses VALUES (2, '﻿﻿Uncompleted');
INSERT INTO public.statuses VALUES (3, '﻿﻿Finished');


--
-- TOC entry 4027 (class 0 OID 19603573)
-- Dependencies: 218
-- Data for Name: student_artifacts; Type: TABLE DATA; Schema: public; Owner: lahabwdfwwaevk
--

INSERT INTO public.student_artifacts VALUES (1, 2, true, 7);
INSERT INTO public.student_artifacts VALUES (2, 9, true, 10);
INSERT INTO public.student_artifacts VALUES (3, 10, true, 18);
INSERT INTO public.student_artifacts VALUES (4, 8, false, 9);
INSERT INTO public.student_artifacts VALUES (5, 8, true, 2);
INSERT INTO public.student_artifacts VALUES (6, 7, false, 12);
INSERT INTO public.student_artifacts VALUES (7, 6, false, 15);
INSERT INTO public.student_artifacts VALUES (8, 3, false, 16);
INSERT INTO public.student_artifacts VALUES (9, 9, true, 10);


--
-- TOC entry 4031 (class 0 OID 19603582)
-- Dependencies: 222
-- Data for Name: student_quests; Type: TABLE DATA; Schema: public; Owner: lahabwdfwwaevk
--

INSERT INTO public.student_quests VALUES (1, 1, 1, 4);
INSERT INTO public.student_quests VALUES (3, 3, 1, 3);
INSERT INTO public.student_quests VALUES (4, 10, 2, 5);
INSERT INTO public.student_quests VALUES (5, 8, 2, 15);
INSERT INTO public.student_quests VALUES (6, 6, 2, 18);
INSERT INTO public.student_quests VALUES (7, 3, 2, 9);
INSERT INTO public.student_quests VALUES (8, 7, 2, 15);
INSERT INTO public.student_quests VALUES (9, 1, 3, 11);
INSERT INTO public.student_quests VALUES (10, 4, 3, 14);
INSERT INTO public.student_quests VALUES (11, 9, 3, 16);
INSERT INTO public.student_quests VALUES (12, 10, 3, 14);
INSERT INTO public.student_quests VALUES (13, 10, 1, 18);
INSERT INTO public.student_quests VALUES (14, 2, 1, 14);


--
-- TOC entry 4042 (class 0 OID 19603615)
-- Dependencies: 233
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: lahabwdfwwaevk
--

INSERT INTO public.students VALUES (1, 2, 2000);
INSERT INTO public.students VALUES (2, 3, 1200);
INSERT INTO public.students VALUES (3, 17, 1700);
INSERT INTO public.students VALUES (4, 18, 700);
INSERT INTO public.students VALUES (5, 19, 600);
INSERT INTO public.students VALUES (6, 20, 400);
INSERT INTO public.students VALUES (7, 21, 1200);
INSERT INTO public.students VALUES (8, 22, 1000);
INSERT INTO public.students VALUES (9, 23, 1000);
INSERT INTO public.students VALUES (10, 24, 600);
INSERT INTO public.students VALUES (11, 25, 700);
INSERT INTO public.students VALUES (12, 26, 700);
INSERT INTO public.students VALUES (13, 27, 900);
INSERT INTO public.students VALUES (14, 28, 900);
INSERT INTO public.students VALUES (15, 29, 1300);
INSERT INTO public.students VALUES (16, 30, 300);
INSERT INTO public.students VALUES (17, 31, 700);
INSERT INTO public.students VALUES (18, 1, 2000);
INSERT INTO public.students VALUES (19, 7, 500);
INSERT INTO public.students VALUES (20, 9, 1500);
INSERT INTO public.students VALUES (21, 10, 100);
INSERT INTO public.students VALUES (22, 11, 10);
INSERT INTO public.students VALUES (23, 12, 450);
INSERT INTO public.students VALUES (24, 14, 550);
INSERT INTO public.students VALUES (25, 15, 1000);
INSERT INTO public.students VALUES (26, 16, 0);


--
-- TOC entry 4037 (class 0 OID 19603604)
-- Dependencies: 228
-- Data for Name: students_classes; Type: TABLE DATA; Schema: public; Owner: lahabwdfwwaevk
--

INSERT INTO public.students_classes VALUES (4, 1);
INSERT INTO public.students_classes VALUES (4, 2);
INSERT INTO public.students_classes VALUES (4, 3);
INSERT INTO public.students_classes VALUES (4, 7);
INSERT INTO public.students_classes VALUES (4, 9);
INSERT INTO public.students_classes VALUES (4, 10);
INSERT INTO public.students_classes VALUES (4, 11);
INSERT INTO public.students_classes VALUES (3, 12);
INSERT INTO public.students_classes VALUES (3, 14);
INSERT INTO public.students_classes VALUES (3, 15);
INSERT INTO public.students_classes VALUES (3, 16);
INSERT INTO public.students_classes VALUES (3, 17);
INSERT INTO public.students_classes VALUES (2, 18);
INSERT INTO public.students_classes VALUES (2, 19);
INSERT INTO public.students_classes VALUES (2, 20);
INSERT INTO public.students_classes VALUES (2, 21);
INSERT INTO public.students_classes VALUES (2, 22);
INSERT INTO public.students_classes VALUES (2, 23);
INSERT INTO public.students_classes VALUES (2, 24);


--
-- TOC entry 4036 (class 0 OID 19603601)
-- Dependencies: 227
-- Data for Name: user_details; Type: TABLE DATA; Schema: public; Owner: lahabwdfwwaevk
--

INSERT INTO public.user_details VALUES (1, 'Marta', 'Skarbek', 'mail@gmail.pl', 'lalala', 3, true);
INSERT INTO public.user_details VALUES (2, 'Mikołaj', 'Urbanek', 'miko@gmail.pl', 'student', 3, true);
INSERT INTO public.user_details VALUES (3, 'Tomasz', 'Krogulec', 'tomek123@gmail.pl', 'student', 3, true);
INSERT INTO public.user_details VALUES (4, 'Adrian', 'Widłak', 'adrianwee@codecool.com', 'mentor', 2, true);
INSERT INTO public.user_details VALUES (5, 'Wojciech', 'Makieła', 'wojciech@codecool.com', 'mentor', 2, true);
INSERT INTO public.user_details VALUES (6, 'Dominik', 'Starzyk', 'dominik@codecool.com', 'mentor', 2, true);
INSERT INTO public.user_details VALUES (7, 'Patryk', 'Król', 'patryk@wp.pl', 'student', 3, true);
INSERT INTO public.user_details VALUES (8, 'Marcin', 'Izworski', 'marcin@codecool.com', 'creep', 1, true);
INSERT INTO public.user_details VALUES (9, 'Mateusz', 'Przystał', 'mateuszp@codecool.com', 'student', 3, true);
INSERT INTO public.user_details VALUES (10, 'Marlena', 'Jakubowska', 'marlenaj@codecool.com', 'student', 3, true);
INSERT INTO public.user_details VALUES (11, 'Wojciech', 'Tokarz', 'wojtekt@codecool.com', 'student', 3, true);
INSERT INTO public.user_details VALUES (12, 'Jan', 'Nowak', 'janek@codecool.com', 'student', 3, false);
INSERT INTO public.user_details VALUES (13, 'Mateusz', 'Ostafil', 'mateuszoa@codecool.com', 'mentor', 2, false);
INSERT INTO public.user_details VALUES (14, 'Kamil', 'Kowalski', 'kowalski@gmail.com', 'student', 3, true);
INSERT INTO public.user_details VALUES (15, 'Anna', 'Dejewska', 'annadej@gmail.com', 'student', 3, true);
INSERT INTO public.user_details VALUES (16, 'Maciej', 'Cyran', 'cyran@gmail.com', 'student', 3, true);
INSERT INTO public.user_details VALUES (17, 'Jan', 'Mikos', 'mikos@codecool.com', 'student', 3, true);
INSERT INTO public.user_details VALUES (18, 'Alicja', 'Nowak', 'alunia@codecool.com', 'student', 3, false);
INSERT INTO public.user_details VALUES (19, 'Paulina', 'Wojciechowska', 'paula2@codecool.com', 'student', 3, true);
INSERT INTO public.user_details VALUES (20, 'Mateusz', 'Borowiec', 'borowiecx@wp.pl', 'student', 3, true);
INSERT INTO public.user_details VALUES (21, 'Marcin', 'Malinowski', 'malinowski@wp.pl', 'student', 3, false);
INSERT INTO public.user_details VALUES (22, 'Ilona', 'Fryśna', 'ilonzi@wp.pl', 'student', 3, true);
INSERT INTO public.user_details VALUES (23, 'Krzysztof', 'Pawełek', 'krzysio3@wp.pl', 'student', 3, false);
INSERT INTO public.user_details VALUES (24, 'Agnieszka', 'Kolanowska', 'agik@wp.pl', 'student', 3, false);
INSERT INTO public.user_details VALUES (25, 'Andrzej', 'Malinowski', 'malinowski@codecool.com', 'student', 3, true);
INSERT INTO public.user_details VALUES (26, 'Natalia', 'Wojciechowska', 'natalka1@codecool.com', 'student', 3, true);
INSERT INTO public.user_details VALUES (27, 'Emilia', 'Martyniuk', 'emiemi@codecool.com', 'student', 3, true);
INSERT INTO public.user_details VALUES (28, 'Kamil', 'Maruszko', 'maruszkok@codecool.com', 'student', 3, true);
INSERT INTO public.user_details VALUES (29, 'Liliana', 'Kowalska', 'lilka@codecool.com', 'student', 3, false);
INSERT INTO public.user_details VALUES (30, 'Luiza', 'Jarek', 'luizka@codecool.com', 'student', 3, true);
INSERT INTO public.user_details VALUES (31, 'Kamil', 'Dejewski', 'kamillod@codecool.com', 'student', 3, true);


--
-- TOC entry 4084 (class 0 OID 0)
-- Dependencies: 203
-- Name: artifact_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lahabwdfwwaevk
--

SELECT pg_catalog.setval('public.artifact_types_id_seq', 2, true);


--
-- TOC entry 4085 (class 0 OID 0)
-- Dependencies: 205
-- Name: artifacts_artifact_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lahabwdfwwaevk
--

SELECT pg_catalog.setval('public.artifacts_artifact_type_id_seq', 1, false);


--
-- TOC entry 4086 (class 0 OID 0)
-- Dependencies: 206
-- Name: artifacts_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lahabwdfwwaevk
--

SELECT pg_catalog.setval('public.artifacts_category_id_seq', 1, false);


--
-- TOC entry 4087 (class 0 OID 0)
-- Dependencies: 207
-- Name: artifacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lahabwdfwwaevk
--

SELECT pg_catalog.setval('public.artifacts_id_seq', 11, true);


--
-- TOC entry 4088 (class 0 OID 0)
-- Dependencies: 209
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lahabwdfwwaevk
--

SELECT pg_catalog.setval('public.categories_id_seq', 2, true);


--
-- TOC entry 4089 (class 0 OID 0)
-- Dependencies: 211
-- Name: classes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lahabwdfwwaevk
--

SELECT pg_catalog.setval('public.classes_id_seq', 4, true);


--
-- TOC entry 4090 (class 0 OID 0)
-- Dependencies: 238
-- Name: creeps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lahabwdfwwaevk
--

SELECT pg_catalog.setval('public.creeps_id_seq', 1, true);


--
-- TOC entry 4091 (class 0 OID 0)
-- Dependencies: 236
-- Name: mentors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lahabwdfwwaevk
--

SELECT pg_catalog.setval('public.mentors_id_seq', 4, true);


--
-- TOC entry 4092 (class 0 OID 0)
-- Dependencies: 213
-- Name: quests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lahabwdfwwaevk
--

SELECT pg_catalog.setval('public.quests_id_seq', 10, true);


--
-- TOC entry 4093 (class 0 OID 0)
-- Dependencies: 215
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lahabwdfwwaevk
--

SELECT pg_catalog.setval('public.roles_id_seq', 3, true);


--
-- TOC entry 4094 (class 0 OID 0)
-- Dependencies: 241
-- Name: shared_artifacts_payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lahabwdfwwaevk
--

SELECT pg_catalog.setval('public.shared_artifacts_payments_id_seq', 8, true);


--
-- TOC entry 4095 (class 0 OID 0)
-- Dependencies: 217
-- Name: statuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lahabwdfwwaevk
--

SELECT pg_catalog.setval('public.statuses_id_seq', 3, true);


--
-- TOC entry 4096 (class 0 OID 0)
-- Dependencies: 219
-- Name: student_artifacts_artifact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lahabwdfwwaevk
--

SELECT pg_catalog.setval('public.student_artifacts_artifact_id_seq', 1, false);


--
-- TOC entry 4097 (class 0 OID 0)
-- Dependencies: 220
-- Name: student_artifacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lahabwdfwwaevk
--

SELECT pg_catalog.setval('public.student_artifacts_id_seq', 9, true);


--
-- TOC entry 4098 (class 0 OID 0)
-- Dependencies: 221
-- Name: student_artifacts_wallet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lahabwdfwwaevk
--

SELECT pg_catalog.setval('public.student_artifacts_wallet_id_seq', 1, false);


--
-- TOC entry 4099 (class 0 OID 0)
-- Dependencies: 223
-- Name: student_quests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lahabwdfwwaevk
--

SELECT pg_catalog.setval('public.student_quests_id_seq', 14, true);


--
-- TOC entry 4100 (class 0 OID 0)
-- Dependencies: 224
-- Name: student_quests_quest_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lahabwdfwwaevk
--

SELECT pg_catalog.setval('public.student_quests_quest_id_seq', 1, false);


--
-- TOC entry 4101 (class 0 OID 0)
-- Dependencies: 225
-- Name: student_quests_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lahabwdfwwaevk
--

SELECT pg_catalog.setval('public.student_quests_status_id_seq', 1, false);


--
-- TOC entry 4102 (class 0 OID 0)
-- Dependencies: 226
-- Name: student_quests_wallet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lahabwdfwwaevk
--

SELECT pg_catalog.setval('public.student_quests_wallet_id_seq', 1, false);


--
-- TOC entry 4103 (class 0 OID 0)
-- Dependencies: 229
-- Name: user_details_classes_classes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lahabwdfwwaevk
--

SELECT pg_catalog.setval('public.user_details_classes_classes_id_seq', 1, false);


--
-- TOC entry 4104 (class 0 OID 0)
-- Dependencies: 230
-- Name: user_details_classes_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lahabwdfwwaevk
--

SELECT pg_catalog.setval('public.user_details_classes_user_id_seq', 1, false);


--
-- TOC entry 4105 (class 0 OID 0)
-- Dependencies: 231
-- Name: user_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lahabwdfwwaevk
--

SELECT pg_catalog.setval('public.user_details_id_seq', 31, true);


--
-- TOC entry 4106 (class 0 OID 0)
-- Dependencies: 232
-- Name: user_details_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lahabwdfwwaevk
--

SELECT pg_catalog.setval('public.user_details_role_id_seq', 1, false);


--
-- TOC entry 4107 (class 0 OID 0)
-- Dependencies: 234
-- Name: wallets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lahabwdfwwaevk
--

SELECT pg_catalog.setval('public.wallets_id_seq', 26, true);


--
-- TOC entry 4108 (class 0 OID 0)
-- Dependencies: 235
-- Name: wallets_user_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lahabwdfwwaevk
--

SELECT pg_catalog.setval('public.wallets_user_details_id_seq', 1, false);


--
-- TOC entry 3841 (class 2606 OID 19603658)
-- Name: artifact_types artifact_types_pkey; Type: CONSTRAINT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.artifact_types
    ADD CONSTRAINT artifact_types_pkey PRIMARY KEY (id);


--
-- TOC entry 3843 (class 2606 OID 19603660)
-- Name: artifacts artifacts_pkey; Type: CONSTRAINT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.artifacts
    ADD CONSTRAINT artifacts_pkey PRIMARY KEY (id);


--
-- TOC entry 3845 (class 2606 OID 19603662)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- TOC entry 3847 (class 2606 OID 19603664)
-- Name: classes classes_pkey; Type: CONSTRAINT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_pkey PRIMARY KEY (id);


--
-- TOC entry 3865 (class 2606 OID 19690381)
-- Name: creeps creeps_pkey; Type: CONSTRAINT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.creeps
    ADD CONSTRAINT creeps_pkey PRIMARY KEY (id);


--
-- TOC entry 3863 (class 2606 OID 19721469)
-- Name: mentors mentors_pkey; Type: CONSTRAINT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.mentors
    ADD CONSTRAINT mentors_pkey PRIMARY KEY (id);


--
-- TOC entry 3849 (class 2606 OID 19603666)
-- Name: quests quests_pkey; Type: CONSTRAINT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.quests
    ADD CONSTRAINT quests_pkey PRIMARY KEY (id);


--
-- TOC entry 3851 (class 2606 OID 19603668)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- TOC entry 3867 (class 2606 OID 19726921)
-- Name: shared_artifacts_payments shared_artifacts_payments_pkey; Type: CONSTRAINT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.shared_artifacts_payments
    ADD CONSTRAINT shared_artifacts_payments_pkey PRIMARY KEY (id);


--
-- TOC entry 3853 (class 2606 OID 19603672)
-- Name: statuses statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.statuses
    ADD CONSTRAINT statuses_pkey PRIMARY KEY (id);


--
-- TOC entry 3855 (class 2606 OID 19603674)
-- Name: student_artifacts student_artifacts_pkey; Type: CONSTRAINT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.student_artifacts
    ADD CONSTRAINT student_artifacts_pkey PRIMARY KEY (id);


--
-- TOC entry 3857 (class 2606 OID 19603676)
-- Name: student_quests student_quests_pkey; Type: CONSTRAINT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.student_quests
    ADD CONSTRAINT student_quests_pkey PRIMARY KEY (id);


--
-- TOC entry 3859 (class 2606 OID 19603678)
-- Name: user_details user_details_pkey; Type: CONSTRAINT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.user_details
    ADD CONSTRAINT user_details_pkey PRIMARY KEY (id);


--
-- TOC entry 3861 (class 2606 OID 19603680)
-- Name: students wallets_pkey; Type: CONSTRAINT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT wallets_pkey PRIMARY KEY (id);


--
-- TOC entry 3870 (class 2606 OID 19603681)
-- Name: student_artifacts fk_artifactid; Type: FK CONSTRAINT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.student_artifacts
    ADD CONSTRAINT fk_artifactid FOREIGN KEY (artifact_id) REFERENCES public.artifacts(id);


--
-- TOC entry 3868 (class 2606 OID 19603686)
-- Name: artifacts fk_artifacttypeid; Type: FK CONSTRAINT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.artifacts
    ADD CONSTRAINT fk_artifacttypeid FOREIGN KEY (artifact_type_id) REFERENCES public.artifact_types(id);


--
-- TOC entry 3869 (class 2606 OID 19603691)
-- Name: artifacts fk_categoryid; Type: FK CONSTRAINT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.artifacts
    ADD CONSTRAINT fk_categoryid FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- TOC entry 3876 (class 2606 OID 19603696)
-- Name: students_classes fk_classesid; Type: FK CONSTRAINT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.students_classes
    ADD CONSTRAINT fk_classesid FOREIGN KEY (classes_id) REFERENCES public.classes(id);


--
-- TOC entry 3881 (class 2606 OID 19692321)
-- Name: mentors_classes fk_classesid; Type: FK CONSTRAINT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.mentors_classes
    ADD CONSTRAINT fk_classesid FOREIGN KEY (classes_id) REFERENCES public.classes(id);


--
-- TOC entry 3882 (class 2606 OID 19721470)
-- Name: mentors_classes fk_mentorsid; Type: FK CONSTRAINT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.mentors_classes
    ADD CONSTRAINT fk_mentorsid FOREIGN KEY (mentors_id) REFERENCES public.mentors(id);


--
-- TOC entry 3872 (class 2606 OID 19603701)
-- Name: student_quests fk_questid; Type: FK CONSTRAINT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.student_quests
    ADD CONSTRAINT fk_questid FOREIGN KEY (quest_id) REFERENCES public.quests(id);


--
-- TOC entry 3875 (class 2606 OID 19603706)
-- Name: user_details fk_roleid; Type: FK CONSTRAINT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.user_details
    ADD CONSTRAINT fk_roleid FOREIGN KEY (role_id) REFERENCES public.roles(id);


--
-- TOC entry 3873 (class 2606 OID 19603711)
-- Name: student_quests fk_statusid; Type: FK CONSTRAINT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.student_quests
    ADD CONSTRAINT fk_statusid FOREIGN KEY (status_id) REFERENCES public.statuses(id);


--
-- TOC entry 3884 (class 2606 OID 19726913)
-- Name: shared_artifacts_payments fk_student_artifact_id; Type: FK CONSTRAINT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.shared_artifacts_payments
    ADD CONSTRAINT fk_student_artifact_id FOREIGN KEY (student_artifact_id) REFERENCES public.student_artifacts(id);


--
-- TOC entry 3883 (class 2606 OID 19726908)
-- Name: shared_artifacts_payments fk_student_id; Type: FK CONSTRAINT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.shared_artifacts_payments
    ADD CONSTRAINT fk_student_id FOREIGN KEY (student_id) REFERENCES public.students(id);


--
-- TOC entry 3879 (class 2606 OID 19689009)
-- Name: mentors fk_userdetailsid; Type: FK CONSTRAINT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.mentors
    ADD CONSTRAINT fk_userdetailsid FOREIGN KEY (user_details_id) REFERENCES public.user_details(id);


--
-- TOC entry 3880 (class 2606 OID 19690382)
-- Name: creeps fk_userdetailsid; Type: FK CONSTRAINT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.creeps
    ADD CONSTRAINT fk_userdetailsid FOREIGN KEY (user_details_id) REFERENCES public.user_details(id);


--
-- TOC entry 3877 (class 2606 OID 19603721)
-- Name: students_classes fk_userid; Type: FK CONSTRAINT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.students_classes
    ADD CONSTRAINT fk_userid FOREIGN KEY (user_id) REFERENCES public.user_details(id);


--
-- TOC entry 3878 (class 2606 OID 19603726)
-- Name: students fk_userid; Type: FK CONSTRAINT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT fk_userid FOREIGN KEY (user_details_id) REFERENCES public.user_details(id);


--
-- TOC entry 3874 (class 2606 OID 19603731)
-- Name: student_quests fk_walletid; Type: FK CONSTRAINT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.student_quests
    ADD CONSTRAINT fk_walletid FOREIGN KEY (wallet_id) REFERENCES public.students(id);


--
-- TOC entry 3871 (class 2606 OID 19603736)
-- Name: student_artifacts fk_walletid; Type: FK CONSTRAINT; Schema: public; Owner: lahabwdfwwaevk
--

ALTER TABLE ONLY public.student_artifacts
    ADD CONSTRAINT fk_walletid FOREIGN KEY (wallet_id) REFERENCES public.students(id);


--
-- TOC entry 4057 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: lahabwdfwwaevk
--

REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO lahabwdfwwaevk;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- TOC entry 4058 (class 0 OID 0)
-- Dependencies: 738
-- Name: LANGUAGE plpgsql; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON LANGUAGE plpgsql TO lahabwdfwwaevk;


-- Completed on 2020-08-20 12:55:09 CEST

--
-- PostgreSQL database dump complete
--

