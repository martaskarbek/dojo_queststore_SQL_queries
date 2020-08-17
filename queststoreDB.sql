--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

-- Started on 2020-08-17 21:16:15 CEST

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
-- TOC entry 207 (class 1259 OID 16649)
-- Name: artifact_types; Type: TABLE; Schema: public; Owner: queststore
--

CREATE TABLE public.artifact_types (
    id bigint NOT NULL,
    name character varying(50)
);


ALTER TABLE public.artifact_types OWNER TO queststore;

--
-- TOC entry 206 (class 1259 OID 16647)
-- Name: artifact_types_id_seq; Type: SEQUENCE; Schema: public; Owner: queststore
--

CREATE SEQUENCE public.artifact_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artifact_types_id_seq OWNER TO queststore;

--
-- TOC entry 4128 (class 0 OID 0)
-- Dependencies: 206
-- Name: artifact_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: queststore
--

ALTER SEQUENCE public.artifact_types_id_seq OWNED BY public.artifact_types.id;


--
-- TOC entry 231 (class 1259 OID 16786)
-- Name: artifacts; Type: TABLE; Schema: public; Owner: queststore
--

CREATE TABLE public.artifacts (
    id bigint NOT NULL,
    name character varying(50),
    price integer,
    category_id bigint NOT NULL,
    description text,
    artifact_type_id bigint NOT NULL
);


ALTER TABLE public.artifacts OWNER TO queststore;

--
-- TOC entry 230 (class 1259 OID 16784)
-- Name: artifacts_artifact_type_id_seq; Type: SEQUENCE; Schema: public; Owner: queststore
--

CREATE SEQUENCE public.artifacts_artifact_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artifacts_artifact_type_id_seq OWNER TO queststore;

--
-- TOC entry 4129 (class 0 OID 0)
-- Dependencies: 230
-- Name: artifacts_artifact_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: queststore
--

ALTER SEQUENCE public.artifacts_artifact_type_id_seq OWNED BY public.artifacts.artifact_type_id;


--
-- TOC entry 229 (class 1259 OID 16782)
-- Name: artifacts_category_id_seq; Type: SEQUENCE; Schema: public; Owner: queststore
--

CREATE SEQUENCE public.artifacts_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artifacts_category_id_seq OWNER TO queststore;

--
-- TOC entry 4130 (class 0 OID 0)
-- Dependencies: 229
-- Name: artifacts_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: queststore
--

ALTER SEQUENCE public.artifacts_category_id_seq OWNED BY public.artifacts.category_id;


--
-- TOC entry 228 (class 1259 OID 16780)
-- Name: artifacts_id_seq; Type: SEQUENCE; Schema: public; Owner: queststore
--

CREATE SEQUENCE public.artifacts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artifacts_id_seq OWNER TO queststore;

--
-- TOC entry 4131 (class 0 OID 0)
-- Dependencies: 228
-- Name: artifacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: queststore
--

ALTER SEQUENCE public.artifacts_id_seq OWNED BY public.artifacts.id;


--
-- TOC entry 209 (class 1259 OID 16655)
-- Name: categories; Type: TABLE; Schema: public; Owner: queststore
--

CREATE TABLE public.categories (
    id bigint NOT NULL,
    name character varying(50)
);


ALTER TABLE public.categories OWNER TO queststore;

--
-- TOC entry 208 (class 1259 OID 16653)
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: queststore
--

CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO queststore;

--
-- TOC entry 4132 (class 0 OID 0)
-- Dependencies: 208
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: queststore
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- TOC entry 205 (class 1259 OID 16640)
-- Name: classes; Type: TABLE; Schema: public; Owner: queststore
--

CREATE TABLE public.classes (
    id bigint NOT NULL,
    name text
);


ALTER TABLE public.classes OWNER TO queststore;

--
-- TOC entry 204 (class 1259 OID 16638)
-- Name: classes_id_seq; Type: SEQUENCE; Schema: public; Owner: queststore
--

CREATE SEQUENCE public.classes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.classes_id_seq OWNER TO queststore;

--
-- TOC entry 4133 (class 0 OID 0)
-- Dependencies: 204
-- Name: classes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: queststore
--

ALTER SEQUENCE public.classes_id_seq OWNED BY public.classes.id;


--
-- TOC entry 214 (class 1259 OID 16696)
-- Name: quests; Type: TABLE; Schema: public; Owner: queststore
--

CREATE TABLE public.quests (
    id bigint NOT NULL,
    name character varying(50),
    description text,
    value integer
);


ALTER TABLE public.quests OWNER TO queststore;

--
-- TOC entry 213 (class 1259 OID 16694)
-- Name: quests_id_seq; Type: SEQUENCE; Schema: public; Owner: queststore
--

CREATE SEQUENCE public.quests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.quests_id_seq OWNER TO queststore;

--
-- TOC entry 4134 (class 0 OID 0)
-- Dependencies: 213
-- Name: quests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: queststore
--

ALTER SEQUENCE public.quests_id_seq OWNED BY public.quests.id;


--
-- TOC entry 203 (class 1259 OID 16620)
-- Name: roles; Type: TABLE; Schema: public; Owner: queststore
--

CREATE TABLE public.roles (
    id bigint NOT NULL,
    name text
);


ALTER TABLE public.roles OWNER TO queststore;

--
-- TOC entry 202 (class 1259 OID 16618)
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: queststore
--

CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_seq OWNER TO queststore;

--
-- TOC entry 4135 (class 0 OID 0)
-- Dependencies: 202
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: queststore
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- TOC entry 239 (class 1259 OID 16855)
-- Name: shared_arfiacts_payments; Type: TABLE; Schema: public; Owner: queststore
--

CREATE TABLE public.shared_arfiacts_payments (
    id bigint NOT NULL,
    wallet_id bigint NOT NULL,
    student_artifacts_id bigint NOT NULL,
    payment integer
);


ALTER TABLE public.shared_arfiacts_payments OWNER TO queststore;

--
-- TOC entry 236 (class 1259 OID 16849)
-- Name: shared_arfiacts_payments_id_seq; Type: SEQUENCE; Schema: public; Owner: queststore
--

CREATE SEQUENCE public.shared_arfiacts_payments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shared_arfiacts_payments_id_seq OWNER TO queststore;

--
-- TOC entry 4136 (class 0 OID 0)
-- Dependencies: 236
-- Name: shared_arfiacts_payments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: queststore
--

ALTER SEQUENCE public.shared_arfiacts_payments_id_seq OWNED BY public.shared_arfiacts_payments.id;


--
-- TOC entry 238 (class 1259 OID 16853)
-- Name: shared_arfiacts_payments_student_artifacts_id_seq; Type: SEQUENCE; Schema: public; Owner: queststore
--

CREATE SEQUENCE public.shared_arfiacts_payments_student_artifacts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shared_arfiacts_payments_student_artifacts_id_seq OWNER TO queststore;

--
-- TOC entry 4137 (class 0 OID 0)
-- Dependencies: 238
-- Name: shared_arfiacts_payments_student_artifacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: queststore
--

ALTER SEQUENCE public.shared_arfiacts_payments_student_artifacts_id_seq OWNED BY public.shared_arfiacts_payments.student_artifacts_id;


--
-- TOC entry 237 (class 1259 OID 16851)
-- Name: shared_arfiacts_payments_wallet_id_seq; Type: SEQUENCE; Schema: public; Owner: queststore
--

CREATE SEQUENCE public.shared_arfiacts_payments_wallet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shared_arfiacts_payments_wallet_id_seq OWNER TO queststore;

--
-- TOC entry 4138 (class 0 OID 0)
-- Dependencies: 237
-- Name: shared_arfiacts_payments_wallet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: queststore
--

ALTER SEQUENCE public.shared_arfiacts_payments_wallet_id_seq OWNED BY public.shared_arfiacts_payments.wallet_id;


--
-- TOC entry 216 (class 1259 OID 16705)
-- Name: statuses; Type: TABLE; Schema: public; Owner: queststore
--

CREATE TABLE public.statuses (
    id bigint NOT NULL,
    name character varying(50)
);


ALTER TABLE public.statuses OWNER TO queststore;

--
-- TOC entry 215 (class 1259 OID 16703)
-- Name: statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: queststore
--

CREATE SEQUENCE public.statuses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.statuses_id_seq OWNER TO queststore;

--
-- TOC entry 4139 (class 0 OID 0)
-- Dependencies: 215
-- Name: statuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: queststore
--

ALTER SEQUENCE public.statuses_id_seq OWNED BY public.statuses.id;


--
-- TOC entry 235 (class 1259 OID 16831)
-- Name: student_artifacts; Type: TABLE; Schema: public; Owner: queststore
--

CREATE TABLE public.student_artifacts (
    id bigint NOT NULL,
    artifact_id bigint NOT NULL,
    status boolean,
    wallet_id bigint NOT NULL
);


ALTER TABLE public.student_artifacts OWNER TO queststore;

--
-- TOC entry 233 (class 1259 OID 16827)
-- Name: student_artifacts_artifact_id_seq; Type: SEQUENCE; Schema: public; Owner: queststore
--

CREATE SEQUENCE public.student_artifacts_artifact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_artifacts_artifact_id_seq OWNER TO queststore;

--
-- TOC entry 4140 (class 0 OID 0)
-- Dependencies: 233
-- Name: student_artifacts_artifact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: queststore
--

ALTER SEQUENCE public.student_artifacts_artifact_id_seq OWNED BY public.student_artifacts.artifact_id;


--
-- TOC entry 232 (class 1259 OID 16825)
-- Name: student_artifacts_id_seq; Type: SEQUENCE; Schema: public; Owner: queststore
--

CREATE SEQUENCE public.student_artifacts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_artifacts_id_seq OWNER TO queststore;

--
-- TOC entry 4141 (class 0 OID 0)
-- Dependencies: 232
-- Name: student_artifacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: queststore
--

ALTER SEQUENCE public.student_artifacts_id_seq OWNED BY public.student_artifacts.id;


--
-- TOC entry 234 (class 1259 OID 16829)
-- Name: student_artifacts_wallet_id_seq; Type: SEQUENCE; Schema: public; Owner: queststore
--

CREATE SEQUENCE public.student_artifacts_wallet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_artifacts_wallet_id_seq OWNER TO queststore;

--
-- TOC entry 4142 (class 0 OID 0)
-- Dependencies: 234
-- Name: student_artifacts_wallet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: queststore
--

ALTER SEQUENCE public.student_artifacts_wallet_id_seq OWNED BY public.student_artifacts.wallet_id;


--
-- TOC entry 227 (class 1259 OID 16756)
-- Name: student_quests; Type: TABLE; Schema: public; Owner: queststore
--

CREATE TABLE public.student_quests (
    id bigint NOT NULL,
    quest_id bigint NOT NULL,
    status_id bigint NOT NULL,
    wallet_id bigint NOT NULL
);


ALTER TABLE public.student_quests OWNER TO queststore;

--
-- TOC entry 223 (class 1259 OID 16748)
-- Name: student_quests_id_seq; Type: SEQUENCE; Schema: public; Owner: queststore
--

CREATE SEQUENCE public.student_quests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_quests_id_seq OWNER TO queststore;

--
-- TOC entry 4143 (class 0 OID 0)
-- Dependencies: 223
-- Name: student_quests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: queststore
--

ALTER SEQUENCE public.student_quests_id_seq OWNED BY public.student_quests.id;


--
-- TOC entry 224 (class 1259 OID 16750)
-- Name: student_quests_quest_id_seq; Type: SEQUENCE; Schema: public; Owner: queststore
--

CREATE SEQUENCE public.student_quests_quest_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_quests_quest_id_seq OWNER TO queststore;

--
-- TOC entry 4144 (class 0 OID 0)
-- Dependencies: 224
-- Name: student_quests_quest_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: queststore
--

ALTER SEQUENCE public.student_quests_quest_id_seq OWNED BY public.student_quests.quest_id;


--
-- TOC entry 225 (class 1259 OID 16752)
-- Name: student_quests_status_id_seq; Type: SEQUENCE; Schema: public; Owner: queststore
--

CREATE SEQUENCE public.student_quests_status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_quests_status_id_seq OWNER TO queststore;

--
-- TOC entry 4145 (class 0 OID 0)
-- Dependencies: 225
-- Name: student_quests_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: queststore
--

ALTER SEQUENCE public.student_quests_status_id_seq OWNED BY public.student_quests.status_id;


--
-- TOC entry 226 (class 1259 OID 16754)
-- Name: student_quests_wallet_id_seq; Type: SEQUENCE; Schema: public; Owner: queststore
--

CREATE SEQUENCE public.student_quests_wallet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_quests_wallet_id_seq OWNER TO queststore;

--
-- TOC entry 4146 (class 0 OID 0)
-- Dependencies: 226
-- Name: student_quests_wallet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: queststore
--

ALTER SEQUENCE public.student_quests_wallet_id_seq OWNED BY public.student_quests.wallet_id;


--
-- TOC entry 212 (class 1259 OID 16682)
-- Name: user_details; Type: TABLE; Schema: public; Owner: queststore
--

CREATE TABLE public.user_details (
    id bigint NOT NULL,
    name character varying(50),
    surname character varying(50),
    email character varying(50),
    password character varying(50),
    role_id bigint NOT NULL
);


ALTER TABLE public.user_details OWNER TO queststore;

--
-- TOC entry 219 (class 1259 OID 16717)
-- Name: user_details_classes; Type: TABLE; Schema: public; Owner: queststore
--

CREATE TABLE public.user_details_classes (
    classes_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.user_details_classes OWNER TO queststore;

--
-- TOC entry 217 (class 1259 OID 16713)
-- Name: user_details_classes_classes_id_seq; Type: SEQUENCE; Schema: public; Owner: queststore
--

CREATE SEQUENCE public.user_details_classes_classes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_details_classes_classes_id_seq OWNER TO queststore;

--
-- TOC entry 4147 (class 0 OID 0)
-- Dependencies: 217
-- Name: user_details_classes_classes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: queststore
--

ALTER SEQUENCE public.user_details_classes_classes_id_seq OWNED BY public.user_details_classes.classes_id;


--
-- TOC entry 218 (class 1259 OID 16715)
-- Name: user_details_classes_user_id_seq; Type: SEQUENCE; Schema: public; Owner: queststore
--

CREATE SEQUENCE public.user_details_classes_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_details_classes_user_id_seq OWNER TO queststore;

--
-- TOC entry 4148 (class 0 OID 0)
-- Dependencies: 218
-- Name: user_details_classes_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: queststore
--

ALTER SEQUENCE public.user_details_classes_user_id_seq OWNED BY public.user_details_classes.user_id;


--
-- TOC entry 210 (class 1259 OID 16678)
-- Name: user_details_id_seq; Type: SEQUENCE; Schema: public; Owner: queststore
--

CREATE SEQUENCE public.user_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_details_id_seq OWNER TO queststore;

--
-- TOC entry 4149 (class 0 OID 0)
-- Dependencies: 210
-- Name: user_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: queststore
--

ALTER SEQUENCE public.user_details_id_seq OWNED BY public.user_details.id;


--
-- TOC entry 211 (class 1259 OID 16680)
-- Name: user_details_role_id_seq; Type: SEQUENCE; Schema: public; Owner: queststore
--

CREATE SEQUENCE public.user_details_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_details_role_id_seq OWNER TO queststore;

--
-- TOC entry 4150 (class 0 OID 0)
-- Dependencies: 211
-- Name: user_details_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: queststore
--

ALTER SEQUENCE public.user_details_role_id_seq OWNED BY public.user_details.role_id;


--
-- TOC entry 222 (class 1259 OID 16736)
-- Name: wallets; Type: TABLE; Schema: public; Owner: queststore
--

CREATE TABLE public.wallets (
    id bigint NOT NULL,
    user_details_id bigint NOT NULL,
    coins integer
);


ALTER TABLE public.wallets OWNER TO queststore;

--
-- TOC entry 220 (class 1259 OID 16732)
-- Name: wallets_id_seq; Type: SEQUENCE; Schema: public; Owner: queststore
--

CREATE SEQUENCE public.wallets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wallets_id_seq OWNER TO queststore;

--
-- TOC entry 4151 (class 0 OID 0)
-- Dependencies: 220
-- Name: wallets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: queststore
--

ALTER SEQUENCE public.wallets_id_seq OWNED BY public.wallets.id;


--
-- TOC entry 221 (class 1259 OID 16734)
-- Name: wallets_user_details_id_seq; Type: SEQUENCE; Schema: public; Owner: queststore
--

CREATE SEQUENCE public.wallets_user_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wallets_user_details_id_seq OWNER TO queststore;

--
-- TOC entry 4152 (class 0 OID 0)
-- Dependencies: 221
-- Name: wallets_user_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: queststore
--

ALTER SEQUENCE public.wallets_user_details_id_seq OWNED BY public.wallets.user_details_id;


--
-- TOC entry 3899 (class 2604 OID 16652)
-- Name: artifact_types id; Type: DEFAULT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.artifact_types ALTER COLUMN id SET DEFAULT nextval('public.artifact_types_id_seq'::regclass);


--
-- TOC entry 3913 (class 2604 OID 16789)
-- Name: artifacts id; Type: DEFAULT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.artifacts ALTER COLUMN id SET DEFAULT nextval('public.artifacts_id_seq'::regclass);


--
-- TOC entry 3914 (class 2604 OID 16790)
-- Name: artifacts category_id; Type: DEFAULT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.artifacts ALTER COLUMN category_id SET DEFAULT nextval('public.artifacts_category_id_seq'::regclass);


--
-- TOC entry 3915 (class 2604 OID 16791)
-- Name: artifacts artifact_type_id; Type: DEFAULT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.artifacts ALTER COLUMN artifact_type_id SET DEFAULT nextval('public.artifacts_artifact_type_id_seq'::regclass);


--
-- TOC entry 3900 (class 2604 OID 16658)
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- TOC entry 3898 (class 2604 OID 16643)
-- Name: classes id; Type: DEFAULT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.classes ALTER COLUMN id SET DEFAULT nextval('public.classes_id_seq'::regclass);


--
-- TOC entry 3903 (class 2604 OID 16699)
-- Name: quests id; Type: DEFAULT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.quests ALTER COLUMN id SET DEFAULT nextval('public.quests_id_seq'::regclass);


--
-- TOC entry 3897 (class 2604 OID 16623)
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- TOC entry 3919 (class 2604 OID 16858)
-- Name: shared_arfiacts_payments id; Type: DEFAULT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.shared_arfiacts_payments ALTER COLUMN id SET DEFAULT nextval('public.shared_arfiacts_payments_id_seq'::regclass);


--
-- TOC entry 3920 (class 2604 OID 16859)
-- Name: shared_arfiacts_payments wallet_id; Type: DEFAULT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.shared_arfiacts_payments ALTER COLUMN wallet_id SET DEFAULT nextval('public.shared_arfiacts_payments_wallet_id_seq'::regclass);


--
-- TOC entry 3921 (class 2604 OID 16860)
-- Name: shared_arfiacts_payments student_artifacts_id; Type: DEFAULT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.shared_arfiacts_payments ALTER COLUMN student_artifacts_id SET DEFAULT nextval('public.shared_arfiacts_payments_student_artifacts_id_seq'::regclass);


--
-- TOC entry 3904 (class 2604 OID 16708)
-- Name: statuses id; Type: DEFAULT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.statuses ALTER COLUMN id SET DEFAULT nextval('public.statuses_id_seq'::regclass);


--
-- TOC entry 3916 (class 2604 OID 16834)
-- Name: student_artifacts id; Type: DEFAULT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.student_artifacts ALTER COLUMN id SET DEFAULT nextval('public.student_artifacts_id_seq'::regclass);


--
-- TOC entry 3917 (class 2604 OID 16835)
-- Name: student_artifacts artifact_id; Type: DEFAULT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.student_artifacts ALTER COLUMN artifact_id SET DEFAULT nextval('public.student_artifacts_artifact_id_seq'::regclass);


--
-- TOC entry 3918 (class 2604 OID 16836)
-- Name: student_artifacts wallet_id; Type: DEFAULT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.student_artifacts ALTER COLUMN wallet_id SET DEFAULT nextval('public.student_artifacts_wallet_id_seq'::regclass);


--
-- TOC entry 3909 (class 2604 OID 16759)
-- Name: student_quests id; Type: DEFAULT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.student_quests ALTER COLUMN id SET DEFAULT nextval('public.student_quests_id_seq'::regclass);


--
-- TOC entry 3910 (class 2604 OID 16760)
-- Name: student_quests quest_id; Type: DEFAULT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.student_quests ALTER COLUMN quest_id SET DEFAULT nextval('public.student_quests_quest_id_seq'::regclass);


--
-- TOC entry 3911 (class 2604 OID 16761)
-- Name: student_quests status_id; Type: DEFAULT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.student_quests ALTER COLUMN status_id SET DEFAULT nextval('public.student_quests_status_id_seq'::regclass);


--
-- TOC entry 3912 (class 2604 OID 16762)
-- Name: student_quests wallet_id; Type: DEFAULT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.student_quests ALTER COLUMN wallet_id SET DEFAULT nextval('public.student_quests_wallet_id_seq'::regclass);


--
-- TOC entry 3901 (class 2604 OID 16685)
-- Name: user_details id; Type: DEFAULT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.user_details ALTER COLUMN id SET DEFAULT nextval('public.user_details_id_seq'::regclass);


--
-- TOC entry 3902 (class 2604 OID 16686)
-- Name: user_details role_id; Type: DEFAULT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.user_details ALTER COLUMN role_id SET DEFAULT nextval('public.user_details_role_id_seq'::regclass);


--
-- TOC entry 3905 (class 2604 OID 16720)
-- Name: user_details_classes classes_id; Type: DEFAULT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.user_details_classes ALTER COLUMN classes_id SET DEFAULT nextval('public.user_details_classes_classes_id_seq'::regclass);


--
-- TOC entry 3906 (class 2604 OID 16721)
-- Name: user_details_classes user_id; Type: DEFAULT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.user_details_classes ALTER COLUMN user_id SET DEFAULT nextval('public.user_details_classes_user_id_seq'::regclass);


--
-- TOC entry 3907 (class 2604 OID 16739)
-- Name: wallets id; Type: DEFAULT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.wallets ALTER COLUMN id SET DEFAULT nextval('public.wallets_id_seq'::regclass);


--
-- TOC entry 3908 (class 2604 OID 16740)
-- Name: wallets user_details_id; Type: DEFAULT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.wallets ALTER COLUMN user_details_id SET DEFAULT nextval('public.wallets_user_details_id_seq'::regclass);


--
-- TOC entry 4090 (class 0 OID 16649)
-- Dependencies: 207
-- Data for Name: artifact_types; Type: TABLE DATA; Schema: public; Owner: queststore
--



--
-- TOC entry 4114 (class 0 OID 16786)
-- Dependencies: 231
-- Data for Name: artifacts; Type: TABLE DATA; Schema: public; Owner: queststore
--



--
-- TOC entry 4092 (class 0 OID 16655)
-- Dependencies: 209
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: queststore
--



--
-- TOC entry 4088 (class 0 OID 16640)
-- Dependencies: 205
-- Data for Name: classes; Type: TABLE DATA; Schema: public; Owner: queststore
--



--
-- TOC entry 4097 (class 0 OID 16696)
-- Dependencies: 214
-- Data for Name: quests; Type: TABLE DATA; Schema: public; Owner: queststore
--



--
-- TOC entry 4086 (class 0 OID 16620)
-- Dependencies: 203
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: queststore
--



--
-- TOC entry 4122 (class 0 OID 16855)
-- Dependencies: 239
-- Data for Name: shared_arfiacts_payments; Type: TABLE DATA; Schema: public; Owner: queststore
--



--
-- TOC entry 4099 (class 0 OID 16705)
-- Dependencies: 216
-- Data for Name: statuses; Type: TABLE DATA; Schema: public; Owner: queststore
--



--
-- TOC entry 4118 (class 0 OID 16831)
-- Dependencies: 235
-- Data for Name: student_artifacts; Type: TABLE DATA; Schema: public; Owner: queststore
--



--
-- TOC entry 4110 (class 0 OID 16756)
-- Dependencies: 227
-- Data for Name: student_quests; Type: TABLE DATA; Schema: public; Owner: queststore
--



--
-- TOC entry 4095 (class 0 OID 16682)
-- Dependencies: 212
-- Data for Name: user_details; Type: TABLE DATA; Schema: public; Owner: queststore
--



--
-- TOC entry 4102 (class 0 OID 16717)
-- Dependencies: 219
-- Data for Name: user_details_classes; Type: TABLE DATA; Schema: public; Owner: queststore
--



--
-- TOC entry 4105 (class 0 OID 16736)
-- Dependencies: 222
-- Data for Name: wallets; Type: TABLE DATA; Schema: public; Owner: queststore
--



--
-- TOC entry 4153 (class 0 OID 0)
-- Dependencies: 206
-- Name: artifact_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: queststore
--

SELECT pg_catalog.setval('public.artifact_types_id_seq', 1, false);


--
-- TOC entry 4154 (class 0 OID 0)
-- Dependencies: 230
-- Name: artifacts_artifact_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: queststore
--

SELECT pg_catalog.setval('public.artifacts_artifact_type_id_seq', 1, false);


--
-- TOC entry 4155 (class 0 OID 0)
-- Dependencies: 229
-- Name: artifacts_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: queststore
--

SELECT pg_catalog.setval('public.artifacts_category_id_seq', 1, false);


--
-- TOC entry 4156 (class 0 OID 0)
-- Dependencies: 228
-- Name: artifacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: queststore
--

SELECT pg_catalog.setval('public.artifacts_id_seq', 1, false);


--
-- TOC entry 4157 (class 0 OID 0)
-- Dependencies: 208
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: queststore
--

SELECT pg_catalog.setval('public.categories_id_seq', 1, false);


--
-- TOC entry 4158 (class 0 OID 0)
-- Dependencies: 204
-- Name: classes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: queststore
--

SELECT pg_catalog.setval('public.classes_id_seq', 1, false);


--
-- TOC entry 4159 (class 0 OID 0)
-- Dependencies: 213
-- Name: quests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: queststore
--

SELECT pg_catalog.setval('public.quests_id_seq', 1, false);


--
-- TOC entry 4160 (class 0 OID 0)
-- Dependencies: 202
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: queststore
--

SELECT pg_catalog.setval('public.roles_id_seq', 1, false);


--
-- TOC entry 4161 (class 0 OID 0)
-- Dependencies: 236
-- Name: shared_arfiacts_payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: queststore
--

SELECT pg_catalog.setval('public.shared_arfiacts_payments_id_seq', 1, false);


--
-- TOC entry 4162 (class 0 OID 0)
-- Dependencies: 238
-- Name: shared_arfiacts_payments_student_artifacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: queststore
--

SELECT pg_catalog.setval('public.shared_arfiacts_payments_student_artifacts_id_seq', 1, false);


--
-- TOC entry 4163 (class 0 OID 0)
-- Dependencies: 237
-- Name: shared_arfiacts_payments_wallet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: queststore
--

SELECT pg_catalog.setval('public.shared_arfiacts_payments_wallet_id_seq', 1, false);


--
-- TOC entry 4164 (class 0 OID 0)
-- Dependencies: 215
-- Name: statuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: queststore
--

SELECT pg_catalog.setval('public.statuses_id_seq', 1, false);


--
-- TOC entry 4165 (class 0 OID 0)
-- Dependencies: 233
-- Name: student_artifacts_artifact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: queststore
--

SELECT pg_catalog.setval('public.student_artifacts_artifact_id_seq', 1, false);


--
-- TOC entry 4166 (class 0 OID 0)
-- Dependencies: 232
-- Name: student_artifacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: queststore
--

SELECT pg_catalog.setval('public.student_artifacts_id_seq', 1, false);


--
-- TOC entry 4167 (class 0 OID 0)
-- Dependencies: 234
-- Name: student_artifacts_wallet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: queststore
--

SELECT pg_catalog.setval('public.student_artifacts_wallet_id_seq', 1, false);


--
-- TOC entry 4168 (class 0 OID 0)
-- Dependencies: 223
-- Name: student_quests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: queststore
--

SELECT pg_catalog.setval('public.student_quests_id_seq', 1, false);


--
-- TOC entry 4169 (class 0 OID 0)
-- Dependencies: 224
-- Name: student_quests_quest_id_seq; Type: SEQUENCE SET; Schema: public; Owner: queststore
--

SELECT pg_catalog.setval('public.student_quests_quest_id_seq', 1, false);


--
-- TOC entry 4170 (class 0 OID 0)
-- Dependencies: 225
-- Name: student_quests_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: queststore
--

SELECT pg_catalog.setval('public.student_quests_status_id_seq', 1, false);


--
-- TOC entry 4171 (class 0 OID 0)
-- Dependencies: 226
-- Name: student_quests_wallet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: queststore
--

SELECT pg_catalog.setval('public.student_quests_wallet_id_seq', 1, false);


--
-- TOC entry 4172 (class 0 OID 0)
-- Dependencies: 217
-- Name: user_details_classes_classes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: queststore
--

SELECT pg_catalog.setval('public.user_details_classes_classes_id_seq', 1, false);


--
-- TOC entry 4173 (class 0 OID 0)
-- Dependencies: 218
-- Name: user_details_classes_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: queststore
--

SELECT pg_catalog.setval('public.user_details_classes_user_id_seq', 1, false);


--
-- TOC entry 4174 (class 0 OID 0)
-- Dependencies: 210
-- Name: user_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: queststore
--

SELECT pg_catalog.setval('public.user_details_id_seq', 1, false);


--
-- TOC entry 4175 (class 0 OID 0)
-- Dependencies: 211
-- Name: user_details_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: queststore
--

SELECT pg_catalog.setval('public.user_details_role_id_seq', 1, false);


--
-- TOC entry 4176 (class 0 OID 0)
-- Dependencies: 220
-- Name: wallets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: queststore
--

SELECT pg_catalog.setval('public.wallets_id_seq', 1, false);


--
-- TOC entry 4177 (class 0 OID 0)
-- Dependencies: 221
-- Name: wallets_user_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: queststore
--

SELECT pg_catalog.setval('public.wallets_user_details_id_seq', 1, false);


--
-- TOC entry 3927 (class 2606 OID 16677)
-- Name: artifact_types artifact_types_pkey; Type: CONSTRAINT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.artifact_types
    ADD CONSTRAINT artifact_types_pkey PRIMARY KEY (id);


--
-- TOC entry 3941 (class 2606 OID 16806)
-- Name: artifacts artifacts_pkey; Type: CONSTRAINT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.artifacts
    ADD CONSTRAINT artifacts_pkey PRIMARY KEY (id);


--
-- TOC entry 3929 (class 2606 OID 16675)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- TOC entry 3925 (class 2606 OID 16673)
-- Name: classes classes_pkey; Type: CONSTRAINT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_pkey PRIMARY KEY (id);


--
-- TOC entry 3933 (class 2606 OID 16710)
-- Name: quests quests_pkey; Type: CONSTRAINT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.quests
    ADD CONSTRAINT quests_pkey PRIMARY KEY (id);


--
-- TOC entry 3923 (class 2606 OID 16671)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- TOC entry 3945 (class 2606 OID 16872)
-- Name: shared_arfiacts_payments shared_arfiacts_payments_pkey; Type: CONSTRAINT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.shared_arfiacts_payments
    ADD CONSTRAINT shared_arfiacts_payments_pkey PRIMARY KEY (id);


--
-- TOC entry 3935 (class 2606 OID 16712)
-- Name: statuses statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.statuses
    ADD CONSTRAINT statuses_pkey PRIMARY KEY (id);


--
-- TOC entry 3943 (class 2606 OID 16848)
-- Name: student_artifacts student_artifacts_pkey; Type: CONSTRAINT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.student_artifacts
    ADD CONSTRAINT student_artifacts_pkey PRIMARY KEY (id);


--
-- TOC entry 3939 (class 2606 OID 16779)
-- Name: student_quests student_quests_pkey; Type: CONSTRAINT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.student_quests
    ADD CONSTRAINT student_quests_pkey PRIMARY KEY (id);


--
-- TOC entry 3931 (class 2606 OID 16688)
-- Name: user_details user_details_pkey; Type: CONSTRAINT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.user_details
    ADD CONSTRAINT user_details_pkey PRIMARY KEY (id);


--
-- TOC entry 3937 (class 2606 OID 16747)
-- Name: wallets wallets_pkey; Type: CONSTRAINT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.wallets
    ADD CONSTRAINT wallets_pkey PRIMARY KEY (id);


--
-- TOC entry 3955 (class 2606 OID 16837)
-- Name: student_artifacts fk_artifactid; Type: FK CONSTRAINT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.student_artifacts
    ADD CONSTRAINT fk_artifactid FOREIGN KEY (artifact_id) REFERENCES public.artifacts(id);


--
-- TOC entry 3954 (class 2606 OID 16800)
-- Name: artifacts fk_artifacttypeid; Type: FK CONSTRAINT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.artifacts
    ADD CONSTRAINT fk_artifacttypeid FOREIGN KEY (artifact_type_id) REFERENCES public.artifact_types(id);


--
-- TOC entry 3953 (class 2606 OID 16795)
-- Name: artifacts fk_categoryid; Type: FK CONSTRAINT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.artifacts
    ADD CONSTRAINT fk_categoryid FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- TOC entry 3947 (class 2606 OID 16722)
-- Name: user_details_classes fk_classesid; Type: FK CONSTRAINT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.user_details_classes
    ADD CONSTRAINT fk_classesid FOREIGN KEY (classes_id) REFERENCES public.classes(id);


--
-- TOC entry 3950 (class 2606 OID 16763)
-- Name: student_quests fk_questid; Type: FK CONSTRAINT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.student_quests
    ADD CONSTRAINT fk_questid FOREIGN KEY (quest_id) REFERENCES public.quests(id);


--
-- TOC entry 3946 (class 2606 OID 16689)
-- Name: user_details fk_roleid; Type: FK CONSTRAINT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.user_details
    ADD CONSTRAINT fk_roleid FOREIGN KEY (role_id) REFERENCES public.roles(id);


--
-- TOC entry 3951 (class 2606 OID 16768)
-- Name: student_quests fk_statusid; Type: FK CONSTRAINT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.student_quests
    ADD CONSTRAINT fk_statusid FOREIGN KEY (status_id) REFERENCES public.statuses(id);


--
-- TOC entry 3958 (class 2606 OID 16866)
-- Name: shared_arfiacts_payments fk_studentartifactid; Type: FK CONSTRAINT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.shared_arfiacts_payments
    ADD CONSTRAINT fk_studentartifactid FOREIGN KEY (student_artifacts_id) REFERENCES public.student_artifacts(id);


--
-- TOC entry 3948 (class 2606 OID 16727)
-- Name: user_details_classes fk_userid; Type: FK CONSTRAINT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.user_details_classes
    ADD CONSTRAINT fk_userid FOREIGN KEY (user_id) REFERENCES public.user_details(id);


--
-- TOC entry 3949 (class 2606 OID 16741)
-- Name: wallets fk_userid; Type: FK CONSTRAINT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.wallets
    ADD CONSTRAINT fk_userid FOREIGN KEY (user_details_id) REFERENCES public.user_details(id);


--
-- TOC entry 3952 (class 2606 OID 16773)
-- Name: student_quests fk_walletid; Type: FK CONSTRAINT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.student_quests
    ADD CONSTRAINT fk_walletid FOREIGN KEY (wallet_id) REFERENCES public.wallets(id);


--
-- TOC entry 3956 (class 2606 OID 16842)
-- Name: student_artifacts fk_walletid; Type: FK CONSTRAINT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.student_artifacts
    ADD CONSTRAINT fk_walletid FOREIGN KEY (wallet_id) REFERENCES public.wallets(id);


--
-- TOC entry 3957 (class 2606 OID 16861)
-- Name: shared_arfiacts_payments fk_walletid; Type: FK CONSTRAINT; Schema: public; Owner: queststore
--

ALTER TABLE ONLY public.shared_arfiacts_payments
    ADD CONSTRAINT fk_walletid FOREIGN KEY (wallet_id) REFERENCES public.wallets(id);


-- Completed on 2020-08-17 21:16:16 CEST

--
-- PostgreSQL database dump complete
--

