--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

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

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: answers; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.answers (
    id integer NOT NULL,
    string text
);


ALTER TABLE public.answers OWNER TO ayaya;

--
-- Name: answers_id_seq; Type: SEQUENCE; Schema: public; Owner: ayaya
--

CREATE SEQUENCE public.answers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.answers_id_seq OWNER TO ayaya;

--
-- Name: answers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayaya
--

ALTER SEQUENCE public.answers_id_seq OWNED BY public.answers.id;

--
-- Name: ayaya; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.ayaya (
    gif_id integer NOT NULL,
    link text
);


ALTER TABLE public.ayaya OWNER TO ayaya;

--
-- Name: ayaya_footer_quotes; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.ayaya_footer_quotes (
    quote_id integer NOT NULL,
    quote text
);


ALTER TABLE public.ayaya_footer_quotes OWNER TO ayaya;

--
-- Name: ayaya_gif_id_seq; Type: SEQUENCE; Schema: public; Owner: ayaya
--

CREATE SEQUENCE public.ayaya_gif_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ayaya_gif_id_seq OWNER TO ayaya;

--
-- Name: ayaya_gif_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayaya
--

ALTER SEQUENCE public.ayaya_gif_id_seq OWNED BY public.ayaya.gif_id;

--
-- Name: ayaya_quotes; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.ayaya_quotes (
    quote_id integer NOT NULL,
    quote text
);


ALTER TABLE public.ayaya_quotes OWNER TO ayaya;

--
-- Name: baka; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.baka (
    gif_id integer NOT NULL,
    link text
);


ALTER TABLE public.baka OWNER TO ayaya;

--
-- Name: baka_gif_id_seq; Type: SEQUENCE; Schema: public; Owner: ayaya
--

CREATE SEQUENCE public.baka_gif_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.baka_gif_id_seq OWNER TO ayaya;

--
-- Name: baka_gif_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayaya
--

ALTER SEQUENCE public.baka_gif_id_seq OWNED BY public.baka.gif_id;

--
-- Name: bite; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.bite (
    gif_id integer NOT NULL,
    link text
);


ALTER TABLE public.bite OWNER TO ayaya;

--
-- Name: bite_gif_id_seq; Type: SEQUENCE; Schema: public; Owner: ayaya
--

CREATE SEQUENCE public.bite_gif_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bite_gif_id_seq OWNER TO ayaya;

--
-- Name: bite_gif_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayaya
--

ALTER SEQUENCE public.bite_gif_id_seq OWNED BY public.bite.gif_id;

--
-- Name: blacklist; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.blacklist (
    user_id text NOT NULL,
    block_date text
);


ALTER TABLE public.blacklist OWNER TO ayaya;

--
-- Name: blush; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.blush (
    gif_id integer NOT NULL,
    link text
);


ALTER TABLE public.blush OWNER TO ayaya;

--
-- Name: blush_gif_id_seq; Type: SEQUENCE; Schema: public; Owner: ayaya
--

CREATE SEQUENCE public.blush_gif_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blush_gif_id_seq OWNER TO ayaya;

--
-- Name: blush_gif_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayaya
--

ALTER SEQUENCE public.blush_gif_id_seq OWNED BY public.blush.gif_id;

--
-- Name: botlists; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.botlists (
    name text NOT NULL,
    token text,
    stats_post_url text,
    headers text,
    upvote text
);


ALTER TABLE public.botlists OWNER TO ayaya;

--
-- Name: changelogs; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.changelogs (
    version text NOT NULL,
    changes text
);


ALTER TABLE public.changelogs OWNER TO ayaya;

--
-- Name: confused; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.confused (
    gif_id integer NOT NULL,
    link text
);


ALTER TABLE public.confused OWNER TO ayaya;

--
-- Name: confused_gif_id_seq; Type: SEQUENCE; Schema: public; Owner: ayaya
--

CREATE SEQUENCE public.confused_gif_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.confused_gif_id_seq OWNER TO ayaya;

--
-- Name: confused_gif_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayaya
--

ALTER SEQUENCE public.confused_gif_id_seq OWNED BY public.confused.gif_id;

--
-- Name: converter; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.converter (
    id integer NOT NULL,
    unit1 text,
    unit2 text,
    rating real
);


ALTER TABLE public.converter OWNER TO ayaya;

--
-- Name: converter_id_seq; Type: SEQUENCE; Schema: public; Owner: ayaya
--

CREATE SEQUENCE public.converter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.converter_id_seq OWNER TO ayaya;

--
-- Name: converter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayaya
--

ALTER SEQUENCE public.converter_id_seq OWNED BY public.converter.id;


--
-- Name: cry; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.cry (
    gif_id integer NOT NULL,
    link text
);


ALTER TABLE public.cry OWNER TO ayaya;

--
-- Name: cry_gif_id_seq; Type: SEQUENCE; Schema: public; Owner: ayaya
--

CREATE SEQUENCE public.cry_gif_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cry_gif_id_seq OWNER TO ayaya;

--
-- Name: cry_gif_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayaya
--

ALTER SEQUENCE public.cry_gif_id_seq OWNED BY public.cry.gif_id;

--
-- Name: dance; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.dance (
    gif_id integer NOT NULL,
    link text
);


ALTER TABLE public.dance OWNER TO ayaya;

--
-- Name: dance_gif_id_seq; Type: SEQUENCE; Schema: public; Owner: ayaya
--

CREATE SEQUENCE public.dance_gif_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dance_gif_id_seq OWNER TO ayaya;

--
-- Name: dance_gif_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayaya
--

ALTER SEQUENCE public.dance_gif_id_seq OWNED BY public.dance.gif_id;

--
-- Name: emojis; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.emojis (
    id integer NOT NULL,
    emoji_name text,
    emoji text
);


ALTER TABLE public.emojis OWNER TO ayaya;

--
-- Name: emojis_id_seq; Type: SEQUENCE; Schema: public; Owner: ayaya
--

CREATE SEQUENCE public.emojis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.emojis_id_seq OWNER TO ayaya;

--
-- Name: emojis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayaya
--

ALTER SEQUENCE public.emojis_id_seq OWNED BY public.emojis.id;


--
-- Name: facedesk; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.facedesk (
    gif_id integer NOT NULL,
    link text
);


ALTER TABLE public.facedesk OWNER TO ayaya;

--
-- Name: facedesk_gif_id_seq; Type: SEQUENCE; Schema: public; Owner: ayaya
--

CREATE SEQUENCE public.facedesk_gif_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.facedesk_gif_id_seq OWNER TO ayaya;

--
-- Name: facedesk_gif_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayaya
--

ALTER SEQUENCE public.facedesk_gif_id_seq OWNED BY public.facedesk.gif_id;

--
-- Name: fliptable; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.fliptable (
    gif_id integer NOT NULL,
    link text
);


ALTER TABLE public.fliptable OWNER TO ayaya;

--
-- Name: fliptable_gif_id_seq; Type: SEQUENCE; Schema: public; Owner: ayaya
--

CREATE SEQUENCE public.fliptable_gif_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fliptable_gif_id_seq OWNER TO ayaya;

--
-- Name: fliptable_gif_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayaya
--

ALTER SEQUENCE public.fliptable_gif_id_seq OWNED BY public.fliptable.gif_id;

--
-- Name: greet; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.greet (
    gif_id integer NOT NULL,
    link text
);


ALTER TABLE public.greet OWNER TO ayaya;

--
-- Name: greet_gif_id_seq; Type: SEQUENCE; Schema: public; Owner: ayaya
--

CREATE SEQUENCE public.greet_gif_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.greet_gif_id_seq OWNER TO ayaya;

--
-- Name: greet_gif_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayaya
--

ALTER SEQUENCE public.greet_gif_id_seq OWNED BY public.greet.gif_id;

--
-- Name: highfive; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.highfive (
    gif_id integer NOT NULL,
    link text
);


ALTER TABLE public.highfive OWNER TO ayaya;

--
-- Name: highfive_gif_id_seq; Type: SEQUENCE; Schema: public; Owner: ayaya
--

CREATE SEQUENCE public.highfive_gif_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.highfive_gif_id_seq OWNER TO ayaya;

--
-- Name: highfive_gif_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayaya
--

ALTER SEQUENCE public.highfive_gif_id_seq OWNED BY public.highfive.gif_id;

--
-- Name: hug; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.hug (
    gif_id integer NOT NULL,
    link text
);


ALTER TABLE public.hug OWNER TO ayaya;

--
-- Name: hug_gif_id_seq; Type: SEQUENCE; Schema: public; Owner: ayaya
--

CREATE SEQUENCE public.hug_gif_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hug_gif_id_seq OWNER TO ayaya;

--
-- Name: hug_gif_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayaya
--

ALTER SEQUENCE public.hug_gif_id_seq OWNED BY public.hug.gif_id;

--
-- Name: kawaii; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.kawaii (
    gif_id integer NOT NULL,
    link text
);


ALTER TABLE public.kawaii OWNER TO ayaya;

--
-- Name: kawaii_gif_id_seq; Type: SEQUENCE; Schema: public; Owner: ayaya
--

CREATE SEQUENCE public.kawaii_gif_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kawaii_gif_id_seq OWNER TO ayaya;

--
-- Name: kawaii_gif_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayaya
--

ALTER SEQUENCE public.kawaii_gif_id_seq OWNED BY public.kawaii.gif_id;

--
-- Name: kiss; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.kiss (
    gif_id integer NOT NULL,
    link text
);


ALTER TABLE public.kiss OWNER TO ayaya;

--
-- Name: kiss_gif_id_seq; Type: SEQUENCE; Schema: public; Owner: ayaya
--

CREATE SEQUENCE public.kiss_gif_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kiss_gif_id_seq OWNER TO ayaya;

--
-- Name: kiss_gif_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayaya
--

ALTER SEQUENCE public.kiss_gif_id_seq OWNED BY public.kiss.gif_id;

--
-- Name: laugh; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.laugh (
    gif_id integer NOT NULL,
    link text
);


ALTER TABLE public.laugh OWNER TO ayaya;

--
-- Name: laugh_gif_id_seq; Type: SEQUENCE; Schema: public; Owner: ayaya
--

CREATE SEQUENCE public.laugh_gif_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.laugh_gif_id_seq OWNER TO ayaya;

--
-- Name: laugh_gif_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayaya
--

ALTER SEQUENCE public.laugh_gif_id_seq OWNED BY public.laugh.gif_id;

--
-- Name: nom; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.nom (
    gif_id integer NOT NULL,
    link text
);


ALTER TABLE public.nom OWNER TO ayaya;

--
-- Name: nom_gif_id_seq; Type: SEQUENCE; Schema: public; Owner: ayaya
--

CREATE SEQUENCE public.nom_gif_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nom_gif_id_seq OWNER TO ayaya;

--
-- Name: nom_gif_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayaya
--

ALTER SEQUENCE public.nom_gif_id_seq OWNED BY public.nom.gif_id;

--
-- Name: nuzzle; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.nuzzle (
    gif_id integer NOT NULL,
    link text
);


ALTER TABLE public.nuzzle OWNER TO ayaya;

--
-- Name: nuzzle_gif_id_seq; Type: SEQUENCE; Schema: public; Owner: ayaya
--

CREATE SEQUENCE public.nuzzle_gif_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nuzzle_gif_id_seq OWNER TO ayaya;

--
-- Name: nuzzle_gif_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayaya
--

ALTER SEQUENCE public.nuzzle_gif_id_seq OWNED BY public.nuzzle.gif_id;

--
-- Name: pat; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.pat (
    gif_id integer NOT NULL,
    link text
);


ALTER TABLE public.pat OWNER TO ayaya;

--
-- Name: pat_gif_id_seq; Type: SEQUENCE; Schema: public; Owner: ayaya
--

CREATE SEQUENCE public.pat_gif_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pat_gif_id_seq OWNER TO ayaya;

--
-- Name: pat_gif_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayaya
--

ALTER SEQUENCE public.pat_gif_id_seq OWNED BY public.pat.gif_id;

--
-- Name: patreon_keys; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.patreon_keys (
    key text NOT NULL,
    duration integer NOT NULL
);


ALTER TABLE public.patreon_keys OWNER TO ayaya;

--
-- Name: patreon_whitelist; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.patreon_whitelist (
    user_id text NOT NULL,
    expiration_date text NOT NULL
);


ALTER TABLE public.patreon_whitelist OWNER TO ayaya;

--
-- Name: permissions; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.permissions (
    id integer NOT NULL,
    permission_name text,
    permission_full_name text
);


ALTER TABLE public.permissions OWNER TO ayaya;

--
-- Name: permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ayaya
--

CREATE SEQUENCE public.permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.permissions_id_seq OWNER TO ayaya;

--
-- Name: permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayaya
--

ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;


--
-- Name: poke; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.poke (
    gif_id integer NOT NULL,
    link text
);


ALTER TABLE public.poke OWNER TO ayaya;

--
-- Name: poke_gif_id_seq; Type: SEQUENCE; Schema: public; Owner: ayaya
--

CREATE SEQUENCE public.poke_gif_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.poke_gif_id_seq OWNER TO ayaya;

--
-- Name: poke_gif_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayaya
--

ALTER SEQUENCE public.poke_gif_id_seq OWNED BY public.poke.gif_id;

--
-- Name: pout; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.pout (
    gif_id integer NOT NULL,
    link text
);


ALTER TABLE public.pout OWNER TO ayaya;

--
-- Name: pout_gif_id_seq; Type: SEQUENCE; Schema: public; Owner: ayaya
--

CREATE SEQUENCE public.pout_gif_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pout_gif_id_seq OWNER TO ayaya;

--
-- Name: pout_gif_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayaya
--

ALTER SEQUENCE public.pout_gif_id_seq OWNED BY public.pout.gif_id;

--
-- Name: scared; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.scared (
    gif_id integer NOT NULL,
    link text
);


ALTER TABLE public.scared OWNER TO ayaya;

--
-- Name: scared_gif_id_seq; Type: SEQUENCE; Schema: public; Owner: ayaya
--

CREATE SEQUENCE public.scared_gif_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.scared_gif_id_seq OWNER TO ayaya;

--
-- Name: scared_gif_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayaya
--

ALTER SEQUENCE public.scared_gif_id_seq OWNED BY public.scared.gif_id;

--
-- Name: scold; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.scold (
    gif_id integer NOT NULL,
    link text
);


ALTER TABLE public.scold OWNER TO ayaya;

--
-- Name: scold_gif_id_seq; Type: SEQUENCE; Schema: public; Owner: ayaya
--

CREATE SEQUENCE public.scold_gif_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.scold_gif_id_seq OWNER TO ayaya;

--
-- Name: scold_gif_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayaya
--

ALTER SEQUENCE public.scold_gif_id_seq OWNED BY public.scold.gif_id;

--
-- Name: shrug; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.shrug (
    gif_id integer NOT NULL,
    link text
);


ALTER TABLE public.shrug OWNER TO ayaya;

--
-- Name: shrug_gif_id_seq; Type: SEQUENCE; Schema: public; Owner: ayaya
--

CREATE SEQUENCE public.shrug_gif_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shrug_gif_id_seq OWNER TO ayaya;

--
-- Name: shrug_gif_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayaya
--

ALTER SEQUENCE public.shrug_gif_id_seq OWNED BY public.shrug.gif_id;

--
-- Name: slap; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.slap (
    gif_id integer NOT NULL,
    link text
);


ALTER TABLE public.slap OWNER TO ayaya;

--
-- Name: slap_gif_id_seq; Type: SEQUENCE; Schema: public; Owner: ayaya
--

CREATE SEQUENCE public.slap_gif_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.slap_gif_id_seq OWNER TO ayaya;

--
-- Name: slap_gif_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayaya
--

ALTER SEQUENCE public.slap_gif_id_seq OWNED BY public.slap.gif_id;

--
-- Name: sleep; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.sleep (
    gif_id integer NOT NULL,
    link text
);


ALTER TABLE public.sleep OWNER TO ayaya;

--
-- Name: sleep_gif_id_seq; Type: SEQUENCE; Schema: public; Owner: ayaya
--

CREATE SEQUENCE public.sleep_gif_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sleep_gif_id_seq OWNER TO ayaya;

--
-- Name: sleep_gif_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayaya
--

ALTER SEQUENCE public.sleep_gif_id_seq OWNED BY public.sleep.gif_id;

--
-- Name: smile; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.smile (
    gif_id integer NOT NULL,
    link text
);


ALTER TABLE public.smile OWNER TO ayaya;

--
-- Name: smile_gif_id_seq; Type: SEQUENCE; Schema: public; Owner: ayaya
--

CREATE SEQUENCE public.smile_gif_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.smile_gif_id_seq OWNER TO ayaya;

--
-- Name: smile_gif_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayaya
--

ALTER SEQUENCE public.smile_gif_id_seq OWNED BY public.smile.gif_id;

--
-- Name: snuggle; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.snuggle (
    gif_id integer NOT NULL,
    link text
);


ALTER TABLE public.snuggle OWNER TO ayaya;

--
-- Name: snuggle_gif_id_seq; Type: SEQUENCE; Schema: public; Owner: ayaya
--

CREATE SEQUENCE public.snuggle_gif_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.snuggle_gif_id_seq OWNER TO ayaya;

--
-- Name: snuggle_gif_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayaya
--

ALTER SEQUENCE public.snuggle_gif_id_seq OWNED BY public.snuggle.gif_id;

--
-- Name: stare; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.stare (
    gif_id integer NOT NULL,
    link text
);


ALTER TABLE public.stare OWNER TO ayaya;

--
-- Name: stare_gif_id_seq; Type: SEQUENCE; Schema: public; Owner: ayaya
--

CREATE SEQUENCE public.stare_gif_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stare_gif_id_seq OWNER TO ayaya;

--
-- Name: stare_gif_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayaya
--

ALTER SEQUENCE public.stare_gif_id_seq OWNED BY public.stare.gif_id;

--
-- Name: teehee; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.teehee (
    gif_id integer NOT NULL,
    link text
);


ALTER TABLE public.teehee OWNER TO ayaya;

--
-- Name: teehee_gif_id_seq; Type: SEQUENCE; Schema: public; Owner: ayaya
--

CREATE SEQUENCE public.teehee_gif_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teehee_gif_id_seq OWNER TO ayaya;

--
-- Name: teehee_gif_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayaya
--

ALTER SEQUENCE public.teehee_gif_id_seq OWNED BY public.teehee.gif_id;

--
-- Name: throw; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.throw (
    gif_id integer NOT NULL,
    link text
);


ALTER TABLE public.throw OWNER TO ayaya;

--
-- Name: throw_gif_id_seq; Type: SEQUENCE; Schema: public; Owner: ayaya
--

CREATE SEQUENCE public.throw_gif_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.throw_gif_id_seq OWNER TO ayaya;

--
-- Name: throw_gif_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayaya
--

ALTER SEQUENCE public.throw_gif_id_seq OWNED BY public.throw.gif_id;

--
-- Name: thumbup; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.thumbup (
    gif_id integer NOT NULL,
    link text
);


ALTER TABLE public.thumbup OWNER TO ayaya;

--
-- Name: thumbup_gif_id_seq; Type: SEQUENCE; Schema: public; Owner: ayaya
--

CREATE SEQUENCE public.thumbup_gif_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.thumbup_gif_id_seq OWNER TO ayaya;

--
-- Name: thumbup_gif_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayaya
--

ALTER SEQUENCE public.thumbup_gif_id_seq OWNED BY public.thumbup.gif_id;

--
-- Name: tickle; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.tickle (
    gif_id integer NOT NULL,
    link text
);


ALTER TABLE public.tickle OWNER TO ayaya;

--
-- Name: tickle_gif_id_seq; Type: SEQUENCE; Schema: public; Owner: ayaya
--

CREATE SEQUENCE public.tickle_gif_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tickle_gif_id_seq OWNER TO ayaya;

--
-- Name: tickle_gif_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayaya
--

ALTER SEQUENCE public.tickle_gif_id_seq OWNED BY public.tickle.gif_id;

--
-- Name: tsundere; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.tsundere (
    gif_id integer NOT NULL,
    link text
);


ALTER TABLE public.tsundere OWNER TO ayaya;

--
-- Name: tsundere_gif_id_seq; Type: SEQUENCE; Schema: public; Owner: ayaya
--

CREATE SEQUENCE public.tsundere_gif_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tsundere_gif_id_seq OWNER TO ayaya;

--
-- Name: tsundere_gif_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayaya
--

ALTER SEQUENCE public.tsundere_gif_id_seq OWNED BY public.tsundere.gif_id;

--
-- Name: wakeup; Type: TABLE; Schema: public; Owner: ayaya
--

CREATE TABLE public.wakeup (
    gif_id integer NOT NULL,
    link text
);


ALTER TABLE public.wakeup OWNER TO ayaya;

--
-- Name: wakeup_gif_id_seq; Type: SEQUENCE; Schema: public; Owner: ayaya
--

CREATE SEQUENCE public.wakeup_gif_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wakeup_gif_id_seq OWNER TO ayaya;

--
-- Name: wakeup_gif_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ayaya
--

ALTER SEQUENCE public.wakeup_gif_id_seq OWNED BY public.wakeup.gif_id;

--
-- Name: answers id; Type: DEFAULT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.answers ALTER COLUMN id SET DEFAULT nextval('public.answers_id_seq'::regclass);


--
-- Name: ayaya gif_id; Type: DEFAULT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.ayaya ALTER COLUMN gif_id SET DEFAULT nextval('public.ayaya_gif_id_seq'::regclass);


--
-- Name: baka gif_id; Type: DEFAULT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.baka ALTER COLUMN gif_id SET DEFAULT nextval('public.baka_gif_id_seq'::regclass);


--
-- Name: bite gif_id; Type: DEFAULT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.bite ALTER COLUMN gif_id SET DEFAULT nextval('public.bite_gif_id_seq'::regclass);


--
-- Name: blush gif_id; Type: DEFAULT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.blush ALTER COLUMN gif_id SET DEFAULT nextval('public.blush_gif_id_seq'::regclass);


--
-- Name: confused gif_id; Type: DEFAULT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.confused ALTER COLUMN gif_id SET DEFAULT nextval('public.confused_gif_id_seq'::regclass);


--
-- Name: converter id; Type: DEFAULT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.converter ALTER COLUMN id SET DEFAULT nextval('public.converter_id_seq'::regclass);


--
-- Name: cry gif_id; Type: DEFAULT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.cry ALTER COLUMN gif_id SET DEFAULT nextval('public.cry_gif_id_seq'::regclass);


--
-- Name: dance gif_id; Type: DEFAULT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.dance ALTER COLUMN gif_id SET DEFAULT nextval('public.dance_gif_id_seq'::regclass);


--
-- Name: emojis id; Type: DEFAULT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.emojis ALTER COLUMN id SET DEFAULT nextval('public.emojis_id_seq'::regclass);


--
-- Name: facedesk gif_id; Type: DEFAULT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.facedesk ALTER COLUMN gif_id SET DEFAULT nextval('public.facedesk_gif_id_seq'::regclass);


--
-- Name: fliptable gif_id; Type: DEFAULT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.fliptable ALTER COLUMN gif_id SET DEFAULT nextval('public.fliptable_gif_id_seq'::regclass);


--
-- Name: greet gif_id; Type: DEFAULT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.greet ALTER COLUMN gif_id SET DEFAULT nextval('public.greet_gif_id_seq'::regclass);


--
-- Name: highfive gif_id; Type: DEFAULT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.highfive ALTER COLUMN gif_id SET DEFAULT nextval('public.highfive_gif_id_seq'::regclass);


--
-- Name: hug gif_id; Type: DEFAULT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.hug ALTER COLUMN gif_id SET DEFAULT nextval('public.hug_gif_id_seq'::regclass);


--
-- Name: kawaii gif_id; Type: DEFAULT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.kawaii ALTER COLUMN gif_id SET DEFAULT nextval('public.kawaii_gif_id_seq'::regclass);


--
-- Name: kiss gif_id; Type: DEFAULT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.kiss ALTER COLUMN gif_id SET DEFAULT nextval('public.kiss_gif_id_seq'::regclass);


--
-- Name: laugh gif_id; Type: DEFAULT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.laugh ALTER COLUMN gif_id SET DEFAULT nextval('public.laugh_gif_id_seq'::regclass);


--
-- Name: nom gif_id; Type: DEFAULT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.nom ALTER COLUMN gif_id SET DEFAULT nextval('public.nom_gif_id_seq'::regclass);


--
-- Name: nuzzle gif_id; Type: DEFAULT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.nuzzle ALTER COLUMN gif_id SET DEFAULT nextval('public.nuzzle_gif_id_seq'::regclass);


--
-- Name: pat gif_id; Type: DEFAULT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.pat ALTER COLUMN gif_id SET DEFAULT nextval('public.pat_gif_id_seq'::regclass);


--
-- Name: permissions id; Type: DEFAULT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);


--
-- Name: poke gif_id; Type: DEFAULT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.poke ALTER COLUMN gif_id SET DEFAULT nextval('public.poke_gif_id_seq'::regclass);


--
-- Name: pout gif_id; Type: DEFAULT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.pout ALTER COLUMN gif_id SET DEFAULT nextval('public.pout_gif_id_seq'::regclass);


--
-- Name: scared gif_id; Type: DEFAULT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.scared ALTER COLUMN gif_id SET DEFAULT nextval('public.scared_gif_id_seq'::regclass);


--
-- Name: scold gif_id; Type: DEFAULT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.scold ALTER COLUMN gif_id SET DEFAULT nextval('public.scold_gif_id_seq'::regclass);


--
-- Name: shrug gif_id; Type: DEFAULT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.shrug ALTER COLUMN gif_id SET DEFAULT nextval('public.shrug_gif_id_seq'::regclass);


--
-- Name: slap gif_id; Type: DEFAULT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.slap ALTER COLUMN gif_id SET DEFAULT nextval('public.slap_gif_id_seq'::regclass);


--
-- Name: sleep gif_id; Type: DEFAULT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.sleep ALTER COLUMN gif_id SET DEFAULT nextval('public.sleep_gif_id_seq'::regclass);


--
-- Name: smile gif_id; Type: DEFAULT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.smile ALTER COLUMN gif_id SET DEFAULT nextval('public.smile_gif_id_seq'::regclass);


--
-- Name: snuggle gif_id; Type: DEFAULT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.snuggle ALTER COLUMN gif_id SET DEFAULT nextval('public.snuggle_gif_id_seq'::regclass);


--
-- Name: stare gif_id; Type: DEFAULT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.stare ALTER COLUMN gif_id SET DEFAULT nextval('public.stare_gif_id_seq'::regclass);


--
-- Name: teehee gif_id; Type: DEFAULT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.teehee ALTER COLUMN gif_id SET DEFAULT nextval('public.teehee_gif_id_seq'::regclass);


--
-- Name: throw gif_id; Type: DEFAULT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.throw ALTER COLUMN gif_id SET DEFAULT nextval('public.throw_gif_id_seq'::regclass);


--
-- Name: thumbup gif_id; Type: DEFAULT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.thumbup ALTER COLUMN gif_id SET DEFAULT nextval('public.thumbup_gif_id_seq'::regclass);


--
-- Name: tickle gif_id; Type: DEFAULT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.tickle ALTER COLUMN gif_id SET DEFAULT nextval('public.tickle_gif_id_seq'::regclass);


--
-- Name: tsundere gif_id; Type: DEFAULT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.tsundere ALTER COLUMN gif_id SET DEFAULT nextval('public.tsundere_gif_id_seq'::regclass);


--
-- Name: wakeup gif_id; Type: DEFAULT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.wakeup ALTER COLUMN gif_id SET DEFAULT nextval('public.wakeup_gif_id_seq'::regclass);


--
-- Data for Name: answers; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.answers (id, string) FROM stdin;
1	I think so.
2	I don't think so.
3	Honestly, I don't know.
4	Yes, certainly.
5	Sadly, that won't happen.
6	I wish I knew.
7	Why not?
8	I don't see how that could happen, but who knows.
9	Hmm, I'm unsure, let me think for a moment.
\.


--
-- Data for Name: ayaya; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.ayaya (gif_id, link) FROM stdin;
1	https://cdn.discordapp.com/attachments/332853782247374848/351144134964281344/Tsundere_Aya_2.gif
2	https://cdn.discordapp.com/attachments/332853782247374848/351132117411037195/84a.gif
3	https://cdn.discordapp.com/attachments/332853782247374848/351134085059444736/Tsundere_Aya.gif
4	https://cdn.discordapp.com/attachments/332853782247374848/351137416310161408/tumblr_no9cyrKlhc1rxzudco1_500.gif
5	https://cdn.discordapp.com/attachments/332853782247374848/351137455761522691/tumblr_nn2ki3jKnu1s0ifhgo2_500.gif
6	https://cdn.discordapp.com/attachments/333305071129460746/351127164839788545/ayaya_7.gif
7	https://cdn.discordapp.com/attachments/332853782247374848/351141263006760962/QMTH18U.gif
8	https://cdn.discordapp.com/attachments/320906001404395520/356037550655275018/tumblr_o5miyxtEzr1skbmyho1_540.gif
9	https://cdn.discordapp.com/attachments/332853782247374848/351141347631169537/tumblr_nnsu6boOri1ro4cfco1_500.gif
10	https://cdn.discordapp.com/attachments/332853782247374848/351141440031817728/tumblr_novc4xJI1a1s0ifhgo1_500.gif
11	https://cdn.discordapp.com/attachments/332853782247374848/351141498185842688/tumblr_nsdeopAgKg1u86t2qo1_500.gif
12	https://cdn.discordapp.com/attachments/332853782247374848/351144372487585792/08fbb9ef8085d256d04f8faf1301bf862160cf6f_hq.gif
13	https://cdn.discordapp.com/attachments/332853782247374848/351144382449188864/tumblr_mpxb4fyAcZ1r3nw4do1_500.gif
14	https://cdn.discordapp.com/attachments/332853782247374848/351506529792294943/aya-scolding-yoko-again.gif
15	https://cdn.discordapp.com/attachments/332853782247374848/492274494661197834/l7vhuar.gif
16	https://cdn.discordapp.com/attachments/332853782247374848/492274644590788618/0qsBnMK.gif
17	https://cdn.discordapp.com/attachments/332853782247374848/492274739495043074/tZRSkLE.gif
18	https://cdn.discordapp.com/attachments/332853782247374848/492274832377905153/6qFHWOB.gif
19	NULL
\.


--
-- Data for Name: ayaya_footer_quotes; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.ayaya_footer_quotes (quote_id, quote) FROM stdin;
1	N-N-No, I'm not a tsundere you b-baka!
2	NULL
3	Stop saying I am a tsundere!
4	I didn't want that pic so much, don't get the wrong idea.
5	NULL
6	Yoko you bakaaaaa!
7	NULL
8	NULL
9	NULL
10	Y-Y-You Pervert!
11	NULL
12	Bakaaaaaa!
13	NULL
14	You baka!
15	Oh no, what do I do now!
16	NULL
17	NULL
18	NULL
19	NULL
\.


--
-- Data for Name: ayaya_quotes; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.ayaya_quotes (quote_id, quote) FROM stdin;
1	NULL
2	NULL
3	NULL
4	*Wha! A pic of me and Yoko!*
5	I'm not!
6	NULL
7	*Oh no! They all saw it!*
8	*Th-This is kind of like...*
9	NULL
10	NULL
11	NULL
12	I don't act like that!
13	NULL
14	NULL
15	NULL
16	NULL
17	<:Ayaya:331115493429739530>
18	NULL
19	Stop calling me that! <:AyaPout:396828476445032459>
\.


--
-- Data for Name: baka; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.baka (gif_id, link) FROM stdin;
1	https://cdn.discordapp.com/attachments/213468583252983809/337610699385602058/baka_1.gif
2	https://68.media.tumblr.com/c5c260dcb303f9c2414485a69f057fcb/tumblr_nzk87vmJ1c1uz8vb5o1_500.gif
3	https://24.media.tumblr.com/804493109f8fccc9adba5ebee63aa786/tumblr_mj35y5dNpS1qmkpzlo1_500.gif
4	https://cdn.discordapp.com/attachments/332853782247374848/492321696750108683/ZaWRAG1.gif
5	https://cdn.discordapp.com/attachments/332853782247374848/492321748935507968/79UU.gif
6	https://38.media.tumblr.com/tumblr_me4jvmRBY41r9fb7ko1_r3_500.gif
7	https://cdn.discordapp.com/attachments/332853782247374848/492321900836421652/BdlswEi.gif
8	https://media.tenor.com/images/be710bcc4a956dbbd0353c09fa678a0f/tenor.gif
9	https://cdn.discordapp.com/attachments/332853782247374848/492322147822469120/tumblr_mxhlx1kDHC1rveihgo1_500.gif
10	https://cdn.discordapp.com/attachments/332853782247374848/492322227480559626/tenor.gif
11	https://cdn.discordapp.com/attachments/332853782247374848/492322335207194634/oJraq.gif
12	https://cdn.discordapp.com/attachments/332853782247374848/492322420552892417/cc6.gif
\.


--
-- Data for Name: bite; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.bite (gif_id, link) FROM stdin;
1	https://cdn.discordapp.com/attachments/332853782247374848/494128785793351700/VPhAwVK.gif
2	https://cdn.discordapp.com/attachments/332853782247374848/494128836255023124/5cc.gif
3	https://cdn.discordapp.com/attachments/332853782247374848/494128905414770698/bite..gif
4	https://cdn.discordapp.com/attachments/332853782247374848/494129000453505040/giphy_1.gif
5	https://cdn.discordapp.com/attachments/332853782247374848/494129046314024980/giphy_2.gif
6	https://cdn.discordapp.com/attachments/332853782247374848/494129090501279744/original.gif
7	https://cdn.discordapp.com/attachments/332853782247374848/494129157404491796/ea79c34150072b17a6e9fcb8cf623905fb6ea9da_hq.gif
\.


--
-- Data for Name: blacklist; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.blacklist (user_id, block_date) FROM stdin;
\.


--
-- Data for Name: blush; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.blush (gif_id, link) FROM stdin;
1	https://cdn.discordapp.com/attachments/332853782247374848/493798540628197396/xgXXBdl.gif
2	https://cdn.discordapp.com/attachments/332853782247374848/493799203340812288/PCcKOlk.gif
3	https://cdn.discordapp.com/attachments/332853782247374848/493799276531417088/4axW0gC.gif
4	https://cdn.discordapp.com/attachments/332853782247374848/493799396979507200/CLYLMmB.gif
5	https://cdn.discordapp.com/attachments/332853782247374848/493799458316746752/VFCQozo.gif
6	https://cdn.discordapp.com/attachments/332853782247374848/493800138289184789/BcPPLdW.gif
7	https://cdn.discordapp.com/attachments/332853782247374848/493800196246077465/XR1bfv5.gif
8	https://cdn.discordapp.com/attachments/332853782247374848/493800294715490315/CegQBIC.gif
9	https://cdn.discordapp.com/attachments/332853782247374848/493800345676414976/RuTgNK4.gif
10	https://cdn.discordapp.com/attachments/332853782247374848/493800454401163264/SYmfjc2.gif
11	https://cdn.discordapp.com/attachments/332853782247374848/351144134964281344/Tsundere_Aya_2.gif
12	https://cdn.discordapp.com/attachments/332853782247374848/493800984871567362/GnKsPCu.gif
13	https://cdn.discordapp.com/attachments/332853782247374848/493801037845495818/5ULHaG4.gif
14	https://cdn.discordapp.com/attachments/332853782247374848/493801108557529099/oxKbqok.gif
15	https://cdn.discordapp.com/attachments/332853782247374848/493801213557604382/arbxL8W.gif
16	https://cdn.discordapp.com/attachments/332853782247374848/493801440423182346/U1dqdTZ.gif
17	https://cdn.discordapp.com/attachments/332853782247374848/493801506714288158/1VAG6lw.gif
18	https://cdn.discordapp.com/attachments/332853782247374848/493801577686237184/zGcbq4U.gif
19	https://cdn.discordapp.com/attachments/332853782247374848/493801638281347072/skoSHAm.gif
20	https://cdn.discordapp.com/attachments/332853782247374848/493801711128018965/81IEDKu.gif
21	https://cdn.discordapp.com/attachments/332853782247374848/493801766752747520/blush1.gif
22	https://cdn.discordapp.com/attachments/332853782247374848/493801815012409344/blush2.gif
23	https://cdn.discordapp.com/attachments/332853782247374848/493801884906291200/blush3.gif
24	https://cdn.discordapp.com/attachments/332853782247374848/493802010026704896/ApDujqA.gif
25	https://cdn.discordapp.com/attachments/332853782247374848/493802082168471562/UZueKSq.gif
26	https://cdn.discordapp.com/attachments/332853782247374848/493802141467672618/ee1.gif
27	https://cdn.discordapp.com/attachments/332853782247374848/493802204692742144/tumblr_novlttOoW31th2d3do1_400.gif
28	https://cdn.discordapp.com/attachments/332853782247374848/493802261093416961/tumblr_novlttOoW31th2d3do2_500.gif
29	https://cdn.discordapp.com/attachments/332853782247374848/493802305821474827/37a14c3d2310dfd495869ac1574d9ad5203c19af_hq.gif
30	https://cdn.discordapp.com/attachments/332853782247374848/494411895584063488/tumblr_nmvfgdoS3q1taeqnfo1_500.gif
31	https://cdn.discordapp.com/attachments/332853782247374848/494412656724410368/e0ac7d47b9fc8259f6c817d317744d54.gif
32	https://cdn.discordapp.com/attachments/332853782247374848/494414521725747210/original.gif
33	https://cdn.discordapp.com/attachments/332853782247374848/494486623203885057/mio_blush.gif
34	https://cdn.discordapp.com/attachments/332853782247374848/495204037294030859/source_1.gif
35	https://cdn.discordapp.com/attachments/332853782247374848/495204150288711681/ff0360f71d56e50fceae5e5ca5a5c40f.gif
36	https://cdn.discordapp.com/attachments/332853782247374848/495533593242763276/9ruejr.gif
37	https://cdn.discordapp.com/attachments/332853782247374848/688719602771165301/0d31b6e935a2d9fb94aea46f0a5a5035.gif
38	https://cdn.discordapp.com/attachments/332853782247374848/495718122536566795/tumblr_omhxuuDQ4R1w5657yo1_500.gif
39	https://cdn.discordapp.com/attachments/332853782247374848/495718204841394186/ffb.gif
40	https://cdn.discordapp.com/attachments/332853782247374848/495718221291192331/4042c17c362b26698cbe7b6e5151e7f31378003490_full.gif
41	https://cdn.discordapp.com/attachments/332853782247374848/495718270448697368/83e.gif
42	https://cdn.discordapp.com/attachments/332853782247374848/627932057884164156/tumblr_nb2pxrm4sJ1taeqnfo1_500.gif
43	https://cdn.discordapp.com/attachments/332853782247374848/627933186894200869/tenor_4.gif
44	https://cdn.discordapp.com/attachments/332853782247374848/635279825128652800/da5b9de30bb5a57d211070bf4af780d0.gif
45	https://cdn.discordapp.com/attachments/332853782247374848/688722390099689482/anime-blush-gif-6.gif
46	https://cdn.discordapp.com/attachments/332853782247374848/688722562448097301/Bybm.gif
47	https://cdn.discordapp.com/attachments/332853782247374848/688722995593740345/dd6d47837ba2952f8ccadfa4167e706b.gif
48	https://cdn.discordapp.com/attachments/332853782247374848/688723082055254038/giphy.gif
49	https://cdn.discordapp.com/attachments/332853782247374848/688723221918253140/tenor_2.gif
50	https://cdn.discordapp.com/attachments/332853782247374848/688723381482553412/tenor_4.gif
51	https://cdn.discordapp.com/attachments/332853782247374848/688723468367429688/tenor_5.gif
52	https://cdn.discordapp.com/attachments/332853782247374848/688723634411405327/tenor_16.gif
\.


--
-- Data for Name: botlists; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.botlists (name, token, stats_post_url, headers, upvote) FROM stdin;
Bots on Discord	9e0aeae7381172a1acc0a2a113463056	https://bots.ondiscord.xyz/bot-api/bots/%s/guilds	guildCount	\N
Discord Extreme List	DELAPI_4da1a7058bee056734e2a43723b5fc5e-329994901230190593	https://api.discordextremelist.xyz/v2/bot/%s/stats	guildCount,shardCount	\N
Discord Bots	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcGkiOnRydWUsImlkIjoiMjE0MzkzMjMyMzQyMTIyNTA2IiwiaWF0IjoxNTkzNjA1NzM1fQ.rNRAqojXOF02xmNdA6vScpxNfw2R16PBL_rLay-21C4	https://discord.bots.gg/api/v1/bots/%s/stats	guildCount,shardCount	\N
Discord Bot List	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0IjoxLCJpZCI6IjMyOTk5NDkwMTIzMDE5MDU5MyIsImlhdCI6MTU5MzYwNjQ5Mn0.gdJHAuM1RRFsXRraJRuHOjT2JFM8oHpDzSiuLvifOhI	https://discordbotlist.com/api/v1/bots/%s/stats	guilds	https://discordbotlist.com/bots/ayaya/upvote
Top.gg	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjMyOTk5NDkwMTIzMDE5MDU5MyIsImJvdCI6dHJ1ZSwiaWF0IjoxNTM2ODI3MzcyfQ.Yc9pyhb9p9pYLgtoUu7sXjdI-nixM55V5frzj9rS8dI	https://top.gg/api/bots/%s/stats	server_count	https://top.gg/bot/329994901230190593/vote
Discord Services	DSd14dNAX5Yh6NXV8BeQ3OjUfKnBluCg	https://api.discordservices.net/bot/%s/stats	servers,shards	https://discordservices.net/bot/329994901230190593
Botlist.me	pkNIxEKjHcHMwdBfayzhQGnIHf@fZm	https://api.botlist.me/api/v1/bots/%s/stats	server_count,shard_count	https://botlist.me/bots/329994901230190593/vote
Void Bots	VOID_FbIPpFQFj9lwsiQCHByxJem8HunwrZvaEguUxa7M48TRXwby	https://api.voidbots.net/bot/stats/%s	server_count,shard_count	https://voidbots.net/bot/329994901230190593/vote
\.


--
-- Data for Name: changelogs; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.changelogs (version, changes) FROM stdin;
1.0 Alpha	**1.0 Alpha**\n+Added basic python core to connect and login;\n+Added the commands help, ping, ayaya, roll and about as well as other commands necessary for control;\n+Added .ini file to store the necessary data.
1.1 Alpha	**1.0 Alpha -> 1.1 Alpha**\n+Added the action module as well as the commands pat, hug and tsundere;\n+Added another .ini file to store the links of the gifs for the action commands.
1.2 Alpha	**1.1 Alpha -> 1.2 Alpha**\n+Added the commands pout and slap to the action module;\n+Added the commands flipcoin and rps to the fun module;\n+Added 2 hidden commands as eastereggs.
1.3 Alpha	**1.2 Alpha -> 1.3 Alpha**\n+Added the commands scold and stare to the action module;\n+Added the command rate to the fun module;\n+Added the command invite to the information module.
1.4 Alpha	**1.3 Alpha -> 1.4 Alpha**\n+Added facedesk command to action module;\n+Added highfive command to action module;\n+Added avatar command to info module;\n+Added changelog command to info module;\n+Added another easteregg;\n*Small change in invite command.
1.5 Alpha	**1.4 Alpha -> 1.5 Alpha**\n+Added greet command to action module;\n+Added teehee command to action module;\n*New quotes for ayaya command, which also is now triggerable without the prefix now.
1.0 Beta	**1.5 Alpha -> 1.0 Beta**\n*Most of the action commands now work with mentions;\n*Help command now shows the help for individual commands;\n*Ayaya command now has gifs, have fun! ^^
1.1 Beta	**1.0 Beta -> 1.1 Beta**\n+Added the suggestion command;\n+Added the cookie command;\n*Added new gifs to the action commands;\n*Replaced the old `a` prefix with the `a.` one to avoid some errors in the console.
1.2 Beta	**1.1 Beta -> 1.2 Beta**\n+Added the feedback command;\n+Added the todo command;\n+Added the baka command;\n+Added the poke command;\n+Added the say command;\n*Fixed a bug where the help for individual commands wouldn't show all the actual prefix;\n*Updated the invite link with all the necessary perms needed.
1.3 Beta	**1.2 Beta -> 1.3 Beta**\n+Added the userinfo command;\n+Added the channelinfo command;\n+Added the serverinfo command;\n*Fixed a bug related with the tsundere command.
1.4 Beta	**1.3 Beta -> 1.4 Beta Test**\n+Added the wakeup command;\n+Added the sleep command.
1.5 Beta	**1.4 Beta -> 1.5 Beta**\n*Now channelinfo should work with channel mentions;\n*Bot now sends a message confirming the reception of suggestions or feedback;\n*The eastereggs were now revealed, do a.easteregg for more info.
1.0	**1.5 Beta -> 1.0**\n+Added moderation commands (kick and ban);\n+Added the bugreport command;\n*The eastereggs were now transformed into real commands;\n-Removed the eateregg command.
1.1	**1.0 -> 1.1**\n+4 new action commands;\n+2 new fun commands;\n*Many new gifs for the other action commands;\n*Some bugfixes in the action commands;\n*New status messages;\n*New emotes for some of the quotes of some commands;\n*A few surprises for rate command.
1.2	**1.1 -> 1.2**\n+Added the command quote;\n+Added the command roleinfo (huge thanks to Desiree#3658;\n+Added a reaction system for when a command isn't found (gives a message instead in case of lack of perms);\n+Added a system to handle possible errors that may occur in the commands (includes a message to inform the users that an error occurred and a way to send the error details automatically to the console);\n+Added the alias `die` for roll command;\n+Added 3 new gifs for facedesk command;\n-Removed ayaya's command extension without prefix due to an evil document called Discord ToS (I don't know when it will come back);\n*Roll and flipcoin now can work with multiple objects at once (roll up to 10000, flipcoin up to 1000);\n*Changed the category Others to Util (and made a module for the category as well);\n*Moved the command avatar from Info to Util category;\n*Changed the way the ping is displayed (now no decimal houses);\n*Fixed the times showed in the info commands being in a weird format and added some extra info to them;\n*Slight code rewrite in some commands (nothing so special).
1.3	**1.2 -> 1.3**\n+Added a suggestion system to suggest commands for some cases when the command isn't recognized;\n+Added Ayaya's uptime to about command;\n+Added 3 new ping quotes;\n*Replaced the deprecated fragmented handler error with a proper centralized one;\n*Fixed a bug with help command throwing an error when asking for specific help for an unknown command or alias;\n*Cleaned some old http links of the assets and replaced them with https ones;\n*Made bigtext work with all the restant characters existent (although the new ones don't have emotes yet).
1.4	**1.3 -> 1.4**\n+Added the command prune to delete messages;\n+Added the command convert to convert units (length, speed and weight units for now);\n+Added a basic modlog system to regist kicks and bans (use "+prefix+"modlog to see how to set up the modlog);\n*Announcements system was remade, do {prefix}news to see how to keep receiving announcements;\n*Made some of the embed commands usable through dms;\n*Average code rewrite in some commands.
1.5.0	**1.4 -> 1.5.0**\n+Added the choose command to the fun module;\n+Added the command dmcommands to show a list of the commands that aren't useable in dms;\n+Added temperature measures to convert command;\n*Help for specific commands now works in dms;\n*The way the role names are displayed in the informative commands was changed;\n*Now you can specify the number of faces for the dies in roll command, check `a!help roll` to see how to do it;\n*None of the action commands needs a mention now, if you don't give a mention you will get the same answer you would get by mentioning yourself;\n*Replaced some of the emotes of rps command;\n*Reduced the amount of keywords able to trigger the rate command eastereggs;\n*Replaced the ugly black embeds in dms with white ones.
1.5.1	**1.5.0 -> 1.5.1**\n*Added 2 more ways to use the choose command.
1.5.2	**1.5.1 -> 1.5.2**\n*Added message for when the characters for bigtext command are too much.
1.5.3	**1.5.2 -> 1.5.3**\n*Changed the status quotes as sometimes the prefix and the help command weren't visible at all;\n*Other minor changes.
1.5.4	**1.5.3 -> 1.5.4**\n*Fixed a bug in the assets file;\n*Fixed the typo in rps command.
1.5.5	**1.5.4 -> 1.5.5**\n*Fixed a bug in Ayaya command;\n*Changes in the gifs in general: some where moved to other commands, others were replaced.
1.6.0	**1.5.5 -> 1.6.0**\n+Added 8 new action commands: nuzzle, snuggle, tickle, laugh, smile, nom, cry and blush;\n+Added a few new gifs to the other action commands and to kawaii command;\n+Added the stats command for those who love numbers;\n*Rewrite of the code to fetch the list of roles in userinfo and serverinfo;\n*Statistics now are more accurate;\n*Modlog and news commands were recoded and moved to the new Administrator module, check their help for more information about their new functionalities;\n*All the action and funny commands are now useable through direct messages;\n*Help list was tweaked;\n*Join time is now displayed in a box for userinfo;\n*New quotes in the previous action command embeds;\n*Direct message embeds are now blue;\n-Removed the limit of 100 messages for prune command (this will be readded if problems appear due to it).
1.6.1	**1.6.0 -> 1.6.1**\n+Added the alias `suggest` to the suggestion command;\n*Changed some of the titles in the stats command;\n*Code rewrite to prevent some future bug occurrences.
1.6.2	**1.6.1 -> 1.6.2**\n*Fixed some bugs in rate command;\n*Fixed some of the help embeds for specific commands not being very legible.
1.6.3	**1.6.2 -> 1.6.3**\n*Fixed a bug with the cookie command through dms;\n*Another small code rewrite to avoid future bugs.
1.6.4	**1.6.3 -> 1.6.4**\n*Fixed some grammar errors in userinfo, channelinfo, serverinfo, roleinfo, tehee, baka and tsundere commands;\n*Fixed the direct message embeds color of avatar command.
1.6.5	**1.6.4 -> 1.6.5**\n*Improved userinfo and channelinfo commands, both now work with and without mentions;\n-Removed the todo command as it was useless (doesn't mean my developer gave up on the objectives written there);\n-Removed most of the suggestions for unknown commands due to not being really needed.
1.6.6	**1.6.5 -> 1.6.6**\n*Fixed the server statistics;\n*The avatar command now works without mentions aswell when inside servers, but in direct messages it will throw an error message.
1.7.0	**1.6.6 -> 1.7.0**\n+Added the bite command to the action module;\n+Added the channel command to create, edit or delete channels;\n+Added the role command to create, edit or delete roles;\n+Added currency conversion to the convert command, for now 33 currency units;\n*Added new gifs to some of the action commands;\n*The command serverinfo will now show the amount of custom emotes of the server;\n*The command roleinfo now displays the name of all the permissions a role has instead of their total value;\n*The rock emote of rps was replaced with a better one;\n*The statistics now won't reset on reconnections;\n*Average code rewrite.
1.7.1	**1.7.0 -> 1.7.1**\n*Major code rewrite of the help system;\n*Fixed possible API spam.
1.7.2	**1.7.1 -> 1.7.2**\n*Kick and ban commands now work with usernames and nicknames;\n*Another code rewrite.
1.7.3	**1.7.2 -> 1.7.3**\n*Added a proper message for when someone tries to trigger a server only command through direct messages;\n-Removed the dmcommands command as it won't be useful anymore.
1.7.4	**1.7.3 -> 1.7.4**\n+Added the support command;\n*Moved the support link from invite command to the support command and added extra invite links with different permissions;\n*Fixed a bug in avatar command throwing an error with unknown usernames.
1.7.5	**1.7.4 -> 1.7.5**\n+Added the donate command;\n*The convert command was reshaped in code and usage. Check it's new usage through it's help or just type `"+prefix+"convert`.
1.8.0	**1.7.5 -> 1.8.0**\n+Added the upvote command;\n+New gifs added;\n*The help of some commands was slightly changed;\n*Fixed the bugs with showing the help list when any module is unloaded;\n*Serverinfo and channelinfo embeds changed a bit:\n   - Serverinfo now displays information about categories amount, users and bots amount and verification level;\n   - Channelinfo will now display information about the category of the channel. For the text channels it will also tell the amount of users that can read the channel and if it's a nsfw channel or not. For voice channels it will tell the amount of users currently in the voice channel;\n*Prune command now has the option to prune messages from a specific user or to prune messages from bots;\n*Any actions requested through moderation and administrator commands will now be posted in the audit logs with the name of who requested them;\n*Average code rewrite;\n-Removed the system to suggest possible commands based in some keywords.
1.8.1	**1.8.0 -> 1.8.1**\n+Added a mute command (note that this needs a role called `muted`);\n+Added the amount of servers with 500 members or more to the statistics, run the stats command to check them;\n*The action commands were refreshed with lots of new gifs and some older ones got replaced;\n*The kawaii command got many of it's gifs taken out, but it also got some new gifs;\n*The bigtext command got new emojis to replace the older ones and some extra ones for other characters (sorry, this was meant to be brought way earlier);\n*The convert command now has convertion available for some pressure units and for almost every information unit;\n*The changelog command now can show the changes for older versions, however due to the 4 first Alpha versions not having this command their changes won't be listed in this command for now, but my developer promises to bring them in the next update;\n*Some of the action commands and the kawaii command got some cosmetic changes in their quotes.
2.0.0	**1.8.1 -> 2.0.0**\n+Added a full music system and music commands;\n+Added the ask command to the funny category. It's based on the 8ball command, but different;\n+Added the category command to manage categories;\n*Swapped the old python core for a java core and swapped the discord.py library for the JDA library;\n*Some of the quotes from action commands were redone;\n*The quotes for rate, choose and rps were changed;\n*The cookie command was moved from the funny module to the action module;\n*The command about now does not display any statistics, all of those have been moved into the stats command;\n*The command stats now shows the total amount of voice channnels;\n*The command channelinfo now displays the name of the category of the channel and can add channels to categories;\n*The convert command has been split into 2 commands, convert and cc, being cc the currency converter;\n*The commands kick, ban, mute and unmute can now apply the respective operation to multiple users at once;\n*The command prune can now prune messages from users who were directly mentioned on the command;\n*The channel command now only needs Manage Channels permission to be used and now it can change everything on a channel except permission overrides;\n*All the commands including the ones not mentioned above got a code rewrite and bugs like the ones in the old convert command were now patched;\n-Removed the old modlog system due to it being very inefficient, in the future it will be replaced with a proper one.
2.0.1	**2.0.0 -> 2.0.1**\n*Rewrite of commands and internals;\n*Changed the ways to separate options for the choose command.
2.0.2	**2.0.1 -> 2.0.2**\n*Small code rewrite of the internals;\n*Added the required code to post the server count statistics on 2 other bot list websites.
2.0.3	**2.0.2 -> 2.0.3**\n*Fixed the bug where the link showed by the upvote command was null and other upvote links were added;\n*Small code rewrite.
2.0.4	**2.0.3 -> 2.0.4**\n**Several bugs related with the input of commands with no additional arguments were fixed;\n*Added color to the embed of the upvote command.
2.1.0	**2.0.4 -> 2.1.0**\n+Added the volume command to change the volume of the player (this will be a permanent premium only command);\n+Added the np command to check the song currently playing (this is for when you don't need to check the whole queue);\n*The stop command was changed to now only clear the queue (to make me disconnect from the channel just use the leave command);\n*Removed the code to post the server count statistics on one of the bot list websites due to their api not working properly;\n-Removed the clear command.
2.1.1	**2.1.0 -> 2.1.1**\n*Changed the way exceptions when loading music tracks are handled;\n*Patched a bug in the stop command that caused it to error when there were no musics in the queue;\n-Removed the users counter from the stats command as it's no longer accurate with the lazy load cache.
2.1.2	**2.1.1 -> 2.1.2**\n*Updated the dependencies;\n*Fixed a bug related with the communication with the database;
2.2.0	**2.1.2 -> 2.2.0**\n+Added the Seek command to the music module;\n+Added the Scared command to the action category with 9 gifs;\n+Added the Dance command to the action category with 9 gifs;\n+Added new gifs and replaced some others on other commands;\n+Added a 2 seconds cooldown to all the commands to avoid spam and lag;\n*The commands Skip and NP are now free to use;\n*Updated the permission names for the command Role;\n*Fixed a bug with the invite command through direct messages;\n*Fixed a bug thrown whenever there was an attempted to join a voice channel that was already full;\n*Fixed a bug when the Serverinfo command was called and the server owner wasn't cached (now it's mention won't be displayed in this case);\n*Re-organized the fields of the Serverinfo embed;\n*Small code rewrite.
2.2.1	**2.2.0 -> 2.2.1**\n*Changed the field layout of the commands Serverinfo e Userinfo;\n*Added explicit information to the help command to not use the characters <> on any command;\n*Fixed a bug with the CC and Convert commands when using <> by mistake;\n*Fixed a bug with the Tsundere command;\n*Fixed the footer of the About command;\n*Fixed the command counter on the Stats command;\n*Restored the reliability of moderation commands in very large servers when using mentions (for names and nicknames the reliability is no longer guaranteed on such servers);\n*Any other commands dependent on mentions will now also work on larger servers like before.
2.2.2	**2.2.1 -> 2.2.2**\n*Fixed the joined and created dates of the commands Userinfo, Challeninfo, Serverinfo and Roleinfo;\n*Now the Activity field of the command Userinfo will display all the statuses of the user.
2.2.3	**2.2.2 -> 2.2.3**\n*Fixed a stupid bug in the roll command (apologizes from my developer);\n*Other minor fixes.
2.2.4	**2.2.3 -> 2.2.4**\n*Fixed a bug in the moderation commands Ban, Kick, Mute and Unmute.
2.3.0	**2.2.4 -> 2.3.0**\n+Added the Color command to check colors;\n+Added the Time command to check the current time for different timezones;\n+Added the possibility of banning users given their id with the Ban command. When the user is in the server, the same rules as for the normal Ban command are applied. Else a hackban is performed;\n+Added the ability to manage the roles of users through the Role command;\n+Added the ability to configure permission overrides for the public role with the commands Channel and Category;\n+Added a progress bar to the NP command;\n*Code rewrite of some of the commands to improve efficiency;\n*Fixed some bugs and inconsistencies with the commands Channel and Role;\n*Changed the layout of the informative commands for better legibility and improved the clarity of the information.
2.3.1	**2.3.0 -> 2.3.1**\n*Fixed the Queue command needing premium when it wasn't supposed to need it anymore, sorry for the inconveniences this bug may have caused;\n*Fixed the Bigtext command not working;\n*Killed the ability of the Say command to mention roles along with everyone and here, from now on all @s will be eliminated from the output;\n*Updated the error message of the Color command when either no color code or color code type are specified to make it easier to understand.
2.3.2	**2.3.1 -> 2.3.2**\n*Fixed 2 bugs with the Quote command.
2.3.3	**2.3.2 -> 2.3.3**\n*Server count and shard count are now posted to the Discord Services bot list;\n*Deleted the DBL list api dependency for posting statistics (this was replaced with new source code);\n*Fixed a bug with the Dequeue command that caused it to throw an error;\n*Fixed a bug with the Resume command;\n*Fixed some possible weird behaviour of the repeat system;\n*Fixed a typo in the help embed of the claimkey command;\n*Made the patreon url embed stop appearing when premium commands are triggered by non premium users.
2.3.4	**2.3.3 -> 2.3.4**\n*Reskinned the stats command in an attempt to improve readability;\n*Owner only commands are no longer shown once again due to the confusion they cause on users (they're not meant for server owners);\n*Patrons can now claim more than 1 key as the system will now stack their amount of premium days;\n*2 more bot lists will now get statistics from the bot;\n*Replaced the Discord Boats api with simpler code.
2.3.5	**2.3.4 -> 2.3.5**\n*Fixed a bug on all moderation commands when inputting usernames with numbers.
2.3.6	**2.3.5 -> 2.3.6**\n+Added the privacypolicy command with Ayaya's first privacy policy as required by the new enforced Discord ToS;\n*Fixed a logic bug that could affect commands doing get or post requests;\n*The server count is now also posted on Bots on Discord website.
2.3.7	**2.3.6 -> 2.3.7**\n*Fixed a bug with the Quote command when missing the permission Message History for the channel to fetch the quote from.
2.3.8	**2.3.7 -> 2.3.8**\n*The Dequeue command is now free to use for everyone;\n*The commands Convert and CC now accept numbers with commas instead of only dots;\n*The premium only commands now will give you a message again if you aren't premium;\n*The track scheduler was paartially recoded in preparation for the update 2.4.0.
2.3.9	**2.3.8 -> 2.3.9**\n*Fixed a bug with the play command when executing it with no arguments;\n*Additional code rewrite of the music system.
2.3.10	**2.3.9 -> 2.3.10**\n*Fixed a bug with the skip command.
2.3.11	**2.3.10 -> 2.3.11**\n*Fixed another bug with the Play command;\n*Fixed a bug with the NP command;\n*Fixed a bug with the Stop command.
2.3.12	**2.3.11 -> 2.3.12**\n*Attempt at fixing a bug on the music system causing the Skip command to thrown an exception (hopefully it worked);\n*Fixed a typo on one of the changelogs.
2.3.13	**2.3.12 -> 2.3.13**\n*Second and final attempt at fixing the bug in the Skip command.
2.3.14	**2.3.13 -> 2.3.14**\n*Rolled back the music system code to the older version.
2.3.15	**2.3.14 -> 2.3.15**\n*Fixed a bug with the Category command.
2.3.16	**2.3.15 -> 2.3.16**\n*Fixed a bug with the Role command when trying to manage permissions the bot does not have;\n*Now the commands Role, Category and Channel will always warn you when at least one permission cannot be managed due to the bot not having it.
2.3.17	**2.3.16 -> 2.3.17**\n+Added extra information to the output of the commands Ban, Kick, Mute and Unmute;\n*Fixed a bug on all the commands mentioned above;\n*Fixed a bug on the Ban command.
2.3.18	**2.3.17 -> 2.3.18**\n*Fixed a bug introduced in the command Dequeue on version 2.3.14 when rolling back some of the music code.
2.3.19	**2.3.18 -> 2.3.19**\n*The commands Ban, Kick, Mute and Unmute cannot display information like before, due to the new code necessary to abide by the discord api intents rules, but the core functionality is the same;\n*The command Prune can still prune messages from users given their names but as it only searches the cache, the recommended way now is mentions or ids;\n*Some of the information can no longer be displayed by information commands, due to the same reasons stated above;\n*Recoding of the action commands, their core functionality was kept the same.
2.3.20	**2.3.19 -> 2.3.20**\n*Fixed the lack of error messages on the commands Avatar and Userinfo.
2.3.21	**2.3.20 -> 2.3.21**\n+Added the percentage of online users to the Serverinfo command;\n+Added the list of discord badges to the Userinfo command;\n*Fixed a bug with the Quote command;\n*Small code refactoring.
2.3.22	**2.3.21 -> 2.3.22**\n+Added the Disconnect alias to the Leave command;\n+Added the Nowplaying alias to the NP command;\n+Added the Vote alias to the Upvote command;\n*The Help command can now show if a command is or isn't only for premium users;\n*Fixed a bug that made the Help command throw an error when checking the help for the Stats command;\n*Switched the lavaplayer release to a fork of it.
2.3.23	**2.3.22 -> 2.3.23**\n*Fixed a bug in the Avatar command;\n*The Avatar command is supporting gif avatars again.
2.3.24	**2.3.23 -> 2.3.24**\n*Fixed a bug with permission checking for commands;\n*Fixed undefined behavior on the commands Role, Channel and Category.
2.3.25	**2.3.24 -> 2.3.25**\n*The output of Ban, Kick, Mute and Unmute is informative again (at the cost of some performance);\n*The commands mentioned above along with Prune and Role now have a cooldown of 5 seconds;\n*The Help command will now show the cooldown of the command;\n*Fixed a bug with the help embed for the ask command.
2.3.26	**2.3.25 -> 2.3.26**\n*Fixed a bug with Ban, Kick, Prune, Role and Unmute;\n*Fixed the hackban function of the Ban command.
2.3.27	**2.3.26 -> 2.3.27**\n*Fixed a possible bug with permission checking;\n*Fixed a bug with the commands Prune and Role.
2.3.28	**2.3.27 -> 2.3.28**\n*The command Choose no longer pings roles when they are mentioned in the choices.
2.3.29	**2.3.28 -> 2.3.29**\n+Added server count posting to the Discord Extreme List;\n+Added the short name for the Use Slash Commands permission;\n*Replaced the old music system with a new one, this will allow for future music features;\n*Fixed a bug with the Quote command;\n*Fixed a mistake in one of the short permission names in the list;\n*Changed a few command descriptions.
2.3.30	**2.3.29 -> 2.3.30**\n*The server count posting for the Discord Extreme List should be fixed now;\n*Fixed the track queueing from urls;\n*Owner only commands will no longer count towards the command counter on the Stats command.
2.3.31	**2.3.30 -> 2.3.31**\n*Attempt at fixing a bug with the music system making it throw an exception;\n*Made the play command more informative when adding new music to a non empty queue and when resuming the music;\n*The text of the say command is no longer changed when there are bad mentions in it, instead those are disabled for the message being sent.
2.3.32	**2.3.31 -> 2.3.32**\n*Bringing back the old music system again since the new one had a severe bug.
2.3.33	**2.3.32 -> 2.3.33**\n*Reapplied some previous changes to command help strings that were lost on the last patch.
2.3.34	**2.3.33 -> 2.3.34**\n*Fixed a bug with the permissions checker;\n*The Channelinfo command now supports store channels.
2.3.35	**2.3.34 -> 2.3.35**\n*Third attempt at replacing the old music system (hopefully this one works).
2.3.36	**2.3.35 -> 2.3.36**\n*Inserted a possible fix for the music system error;\n*Fixed a few other errors.
2.3.37	**2.3.36 -> 2.3.37**\n*Part of the music system was rewritten to prevent more errors.
2.4.0 rc1	**2.3.7 -> 2.4.0 rc1**\n+Added hiragana emotes to the bigtext command;\n*The SQLite database previously used was replaced by a PostgreSQL database;\n*The commands will now be executed by multiple threads instead of only one;\n*The commands Serverinfo, Channelinfo and Roleinfo got some more tweaks;\n*The action commands got reworked quotes;
2.4.0	**2.3.7 -> 2.4.0**\n+Added the premium commands MoveTrack and Previous;\n+Added the command Shuffle;\n+Added the command EmoteSearch, to search for nitro only emotes;\n+Added hiragana emotes to the Bigtext command;\n*The SQLite database previously used was replaced by a PostgreSQL database;\n*The commands will now be executed by multiple threads instead of only one;\n*The command Say can now be used to use nitro only emotes that aren't accessible for the free users, just use them as you normally would;\n*The commands Serverinfo, Channelinfo and Roleinfo got some more tweaks;\n*The command Avatar now offers more options for the profile picture, including options with the original size;\n*The action commands got reworked quotes.
2.4.2	**2.4.1 -> 2.4.2**\n*Fixed more bugs with the Say command.
2.4.3	**2.4.2 -> 2.4.3**\n*Added color to the embed of the EmoteSearch command;\n*The Say command will now always first search for the nitro only emotes in the server the command is triggered, unless it is used through direct messages;\n*Fixed a few issues with some commands that would make them not respond when issued through direct messages.
2.4.4	**2.4.3 -> 2.4.4**\n+Added the Banner command;\n*The Prune command now can delete messages from a author give the author's id;\n*The Prune command can now prune messages with a given content;\n*Region is no longer something exclusive of a server, so the region information was moved from the Serverinfo command to the Channelinfo command for voice channels.
2.4.5	**2.4.4 -> 2.4.5**\n*Fixed a few sql commands that weren't working.
2.4.6	**2.4.5 -> 2.4.6**\n*Fixed a bug with the Ask command.
2.4.7	**2.4.6 -> 2.4.7**\n*Fixed a bug in the command Premium.
2.4.8	**2.4.7 -> 2.4.8**\n*Downscaled the thread amount to avoid overloading the system and cause slowdowns.
2.4.9	**2.4.8 -> 2.4.9**\n*Tweaked the music system internals to avoid excessive system threads usage.\n*The commands Volume and NP have a new reply for when the user is in a voice channel while the bot isn't.
2.4.10	**2.4.9 -> 2.4.10**\n*Tweaked some more internal code to avoid abusing threads.
2.4.11	**2.4.10 -> 2.4.11**\n*Fixed a bug that made the Unmute command useless.
2.4.12	**2.4.11 -> 2.4.12**\n*The command list will now be posted on Discord Services.
2.4.13	**2.4.12 -> 2.4.13**\n*Renamed the Upvote command to Vote, upvote will be kept as an alias.
2.4.14	**2.4.13 -> 2.4.14**\n+Added the Move command to move the bot to another voice channel;\n*When the next track starts, the bot will now send a message to the text channel initially used to make the bot join the voice channel;\n*Fixed bugs causing the bot to leave the voice channel when she shouldn't.
2.4.15	**2.4.14 -> 2.4.15**\n*Revamped the NP command embed layout and changed the old ascii bar for a new one;\n*Some small optimizations to the code.
2.4.16	**2.4.15 -> 2.4.16**\n*Now the bot's mention should work as a command prefix;\n*Tweaked some of the moderation commands' code.
2.4.17	**2.4.16 -> 2.4.17**\n*Fixed a bug that caused the Tsundere command to not respond;\n*Toned down the answer of the cookie command when not properly used.
\.


--
-- Data for Name: confused; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.confused (gif_id, link) FROM stdin;
1	https://cdn.discordapp.com/attachments/332853782247374848/492596789002895370/HuF3cst.gif
2	https://cdn.discordapp.com/attachments/332853782247374848/492596867331522571/confused-anime-gif-9.gif
3	https://cdn.discordapp.com/attachments/332853782247374848/492596949803991040/AgWkEio.gif
4	https://cdn.discordapp.com/attachments/332853782247374848/492597027486695425/A7o02RZ.gif
5	https://cdn.discordapp.com/attachments/332853782247374848/492597104544448512/LHmQDgI.gif
6	https://cdn.discordapp.com/attachments/332853782247374848/492597169371480065/Ql3SKgG.gif
7	https://cdn.discordapp.com/attachments/332853782247374848/492597231451635722/coDIsU9.gif
8	https://cdn.discordapp.com/attachments/332853782247374848/492597291014946837/bQFSHYi.gif
9	https://cdn.discordapp.com/attachments/332853782247374848/492597383826505738/iVKbYEH.gif
10	https://cdn.discordapp.com/attachments/332853782247374848/492597507780640778/s8iBOoc.gif
11	https://cdn.discordapp.com/attachments/332853782247374848/492597561551618048/1452751274204.gif
12	https://cdn.discordapp.com/attachments/332853782247374848/492597618434637824/1480896521-e62a917750263855dbda05f5e165de31.gif
13	https://cdn.discordapp.com/attachments/332853782247374848/492597697828749313/71c.gif
14	https://cdn.discordapp.com/attachments/332853782247374848/492598110166450177/1453412731060.gif
15	https://cdn.discordapp.com/attachments/332853782247374848/492598228894613504/889v.gif
16	https://cdn.discordapp.com/attachments/332853782247374848/492598314899079177/raw.gif
17	https://cdn.discordapp.com/attachments/332853782247374848/492598365310418954/7ZAD.gif
18	https://cdn.discordapp.com/attachments/332853782247374848/492598438161285120/2D1.gif
19	https://cdn.discordapp.com/attachments/332853782247374848/627934161637867551/3fYL8i6Q-n-155t3dn_4uMaU859SiHzYfaqu2YwCXfMnqBX9uokL4f1eZX3nsA8.gif
\.


--
-- Data for Name: converter; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.converter (id, unit1, unit2, rating) FROM stdin;
1	km	hm	10
2	km	dam	100
3	km	m	1000
4	km	dm	10000
5	km	cm	100000
6	km	mm	1e+06
7	km	mi	0.6213712
8	km	ft	3280.8398
9	hm	km	0.1
10	hm	dam	10
11	hm	m	100
12	hm	dm	1000
13	hm	cm	10000
14	hm	mm	100000
15	hm	mi	0.06213712
16	hm	ft	328.08398
17	dam	km	0.01
18	dam	hm	0.1
19	dam	m	10
20	dam	dm	100
21	dam	cm	1000
22	dam	mm	10000
23	dam	mi	0.006213712
24	dam	ft	32.8084
25	m	km	0.001
26	m	hm	0.01
27	m	dam	0.1
28	m	dm	10
29	m	cm	100
30	m	mm	1000
31	m	mi	0.0006213712
32	m	ft	3.28084
33	dm	km	0.0001
34	dm	hm	0.001
35	dm	dam	0.01
36	dm	m	0.1
37	dm	cm	10
38	dm	mm	100
39	dm	mi	6.213712e-05
40	dm	ft	0.328084
41	cm	km	1e-05
42	cm	hm	0.0001
43	cm	dam	0.001
44	cm	m	0.01
45	cm	dm	0.1
46	cm	mm	10
47	cm	mi	6.213712e-06
48	cm	ft	0.0328084
49	mm	km	1e-06
50	mm	hm	1e-05
51	mm	dam	0.0001
52	mm	m	0.001
53	mm	dm	0.01
54	mm	cm	0.1
55	mm	mi	6.213712e-07
56	mm	ft	0.0032808399
57	mi	km	1.609344
58	mi	hm	16.09344
59	mi	dam	160.9344
60	mi	m	1609.344
61	mi	dm	16093.44
62	mi	cm	160934.4
63	mi	mm	1.609344e+06
64	mi	ft	5280
65	ft	km	0.0003048
66	ft	hm	0.003048
67	ft	dam	0.03048
68	ft	m	0.3048
69	ft	dm	3.048
70	ft	cm	30.48
71	ft	mm	304.8
72	ft	mi	0.00018939393
73	km/h	mph	0.6213712
74	km/h	m/s	0.2777778
75	mph	km/h	1.609344
76	mph	m/s	0.44704
77	m/s	km/h	3.6
78	m/s	mph	2.2369363
79	kg	g	1000
80	kg	lbs	2.2046225
81	kg	oz	0.03527396
82	g	kg	0.001
83	g	lbs	0.0022046226
84	g	oz	0.03527396
85	lbs	kg	0.45359236
86	lbs	g	453.59238
87	lbs	oz	16
88	oz	kg	0.028349523
89	oz	g	28.349524
90	oz	lbs	0.0625
91	pa	bar	1e-05
92	pa	at	1.0197e-05
93	pa	atm	9.8692e-06
94	pa	mmhg	0.075006
95	pa	psi	0.00014503773
96	bar	pa	100000
97	bar	at	1.0197
98	bar	atm	0.98692
99	bar	mmhg	750.06
100	bar	psi	14.503774
101	at	pa	98066.5
102	at	bar	0.980665
103	at	atm	0.9678411
104	at	mmhg	735.55927
105	at	psi	14.223343
106	atm	pa	101325
107	atm	bar	1.01325
108	atm	at	1.0332
109	atm	mmhg	760
110	atm	psi	14.695949
111	mmhg	pa	133.32237
112	mmhg	bar	0.001333224
113	mmhg	at	0.00135951
114	mmhg	atm	0.001315789
115	mmhg	psi	0.019336775
116	psi	pa	6894.7573
117	psi	bar	0.068947576
118	psi	at	0.07030696
119	psi	atm	0.06804597
120	psi	mmhg	51.71493
121	bit	kbit	0.0009765625
122	bit	mbit	9.537644e-07
123	bit	gbit	9.313226e-10
124	bit	tbit	9.094947e-13
125	bit	pbit	8.881784e-16
126	bit	ebit	8.6736174e-19
127	bit	zbit	8.4703295e-22
128	bit	ybit	8.271806e-25
129	bit	byte	0.125
130	bit	kbyte	0.00012207031
131	bit	mbyte	1.1920929e-07
132	bit	gbyte	1.1641532e-10
133	bit	tbyte	1.1368684e-13
134	bit	pbyte	1.110223e-16
135	bit	ebyte	1.0842022e-19
136	bit	zbyte	1.0587912e-22
137	bit	ybyte	1.0339758e-25
138	kbit	bit	1024
139	kbit	mbit	0.0009765625
140	kbit	gbit	9.536743e-07
141	kbit	tbit	9.313226e-10
142	kbit	pbit	9.094947e-13
143	kbit	ebit	8.881784e-16
144	kbit	zbit	8.6736174e-19
145	kbit	ybit	8.4703295e-22
146	kbit	byte	128
147	kbit	kbyte	0.125
148	kbit	mbyte	0.00012207031
149	kbit	gbyte	1.1920929e-07
150	kbit	tbyte	1.1641532e-10
151	kbit	pbyte	1.1368684e-13
152	kbit	ebyte	1.110223e-16
153	kbit	zbyte	1.0842022e-19
154	kbit	ybyte	1.0587912e-22
155	mbit	bit	1.048576e+06
156	mbit	kbit	1024
157	mbit	gbit	0.0009765625
158	mbit	tbit	9.536743e-07
159	mbit	pbit	9.313226e-10
160	mbit	ebit	9.094947e-13
161	mbit	zbit	8.881784e-16
162	mbit	ybit	8.6736174e-19
163	mbit	byte	131072
164	mbit	kbyte	128
165	mbit	mbyte	0.125
166	mbit	gbyte	0.00012207031
167	mbit	tbyte	1.1920929e-07
168	mbit	pbyte	1.1641532e-10
169	mbit	ebyte	1.1368684e-13
170	mbit	zbyte	1.110223e-16
171	mbit	ybyte	1.0842022e-19
172	gbit	bit	1.0737418e+09
173	gbit	kbit	1.048576e+06
174	gbit	mbit	1024
175	gbit	tbit	0.0009765625
176	gbit	pbit	9.536743e-07
177	gbit	ebit	9.313226e-10
178	gbit	zbit	9.094947e-13
179	gbit	ybit	8.881784e-16
180	gbit	byte	1.3421773e+08
181	gbit	kbyte	131072
182	gbit	mbyte	128
183	gbit	gbyte	0.125
184	gbit	tbyte	0.00012207031
185	gbit	pbyte	1.1920929e-07
186	gbit	ebyte	1.1641532e-10
187	gbit	zbyte	1.1368684e-13
188	gbit	ybyte	1.110223e-16
189	tbit	bit	1.0995116e+12
190	tbit	kbit	1.0737418e+09
191	tbit	mbit	1.048576e+06
192	tbit	gbit	1024
193	tbit	pbit	0.0009765625
194	tbit	ebit	9.536743e-07
195	tbit	zbit	9.313226e-10
196	tbit	ybit	9.094947e-13
197	tbit	byte	1.3743895e+11
198	tbit	kbyte	1.3421773e+08
199	tbit	mbyte	131072
200	tbit	gbyte	128
201	tbit	tbyte	0.125
202	tbit	pbyte	0.00012207031
203	tbit	ebyte	1.1920929e-07
204	tbit	zbyte	1.1641532e-10
205	tbit	ybyte	1.1368684e-13
206	pbit	bit	1.1258999e+15
207	pbit	kbit	1.0995116e+12
208	pbit	mbit	1.0737418e+09
209	pbit	gbit	1.048576e+06
210	pbit	tbit	1024
211	pbit	ebit	0.0009765625
212	pbit	zbit	9.536743e-07
213	pbit	ybit	9.313226e-10
214	pbit	byte	1.4073749e+14
215	pbit	kbyte	1.3743895e+11
216	pbit	mbyte	1.3421773e+08
217	pbit	gbyte	131072
218	pbit	tbyte	128
219	pbit	pbyte	0.125
220	pbit	ebyte	0.00012207031
221	pbit	zbyte	1.1920929e-07
222	pbit	ybyte	1.1641532e-10
223	ebit	bit	1.1529215e+18
224	ebit	kbit	1.1258999e+15
225	ebit	mbit	1.0995116e+12
226	ebit	gbit	1.0737418e+09
227	ebit	tbit	1.048576e+06
228	ebit	pbit	1024
229	ebit	zbit	0.0009765625
230	ebit	ybit	9.536743e-07
231	ebit	byte	1.4411519e+17
232	ebit	kbyte	1.4073749e+14
233	ebit	mbyte	1.3743895e+11
234	ebit	gbyte	1.3421773e+08
235	ebit	tbyte	131072
236	ebit	pbyte	128
237	ebit	ebyte	0.125
238	ebit	zbyte	0.00012207031
239	ebit	ybyte	1.1920929e-07
240	zbit	bit	1.1805916e+21
241	zbit	kbit	1.1529215e+18
242	zbit	mbit	1.1258999e+15
243	zbit	gbit	1.0995116e+12
244	zbit	tbit	1.0737418e+09
245	zbit	pbit	1.048576e+06
246	zbit	ebit	1024
247	zbit	ybit	0.0009765625
248	zbit	byte	1.3281656e+21
249	zbit	kbyte	1.4411519e+17
250	zbit	mbyte	1.4073749e+14
251	zbit	gbyte	1.3743895e+11
252	zbit	tbyte	1.3421773e+08
253	zbit	pbyte	131072
254	zbit	ebyte	128
255	zbit	zbyte	0.125
256	zbit	ybyte	0.00012207031
257	ybit	bit	1.2089258e+24
258	ybit	kbit	1.1805916e+21
259	ybit	mbit	1.1529215e+18
260	ybit	gbit	1.1258999e+15
261	ybit	tbit	1.0995116e+12
262	ybit	pbit	1.0737418e+09
263	ybit	ebit	1.048576e+06
264	ybit	zbit	1024
265	ybit	byte	1.3600415e+24
266	ybit	kbyte	1.3281656e+21
267	ybit	mbyte	1.4411519e+17
268	ybit	gbyte	1.4073749e+14
269	ybit	tbyte	1.3743895e+11
270	ybit	pbyte	1.3421773e+08
271	ybit	ebyte	131072
272	ybit	zbyte	128
273	ybit	ybyte	0.125
274	byte	bit	8
275	byte	kbit	0.0078125
276	byte	mbit	7.6293945e-06
277	byte	gbit	7.450581e-09
278	byte	tbit	7.275958e-12
279	byte	pbit	7.1054274e-15
280	byte	ebit	6.938894e-18
281	byte	zbit	6.7762636e-21
282	byte	ybit	6.617445e-24
283	byte	kbyte	0.0009765625
284	byte	mbyte	9.536743e-07
285	byte	gbyte	9.313226e-10
286	byte	tbyte	9.094947e-13
287	byte	pbyte	8.881784e-16
288	byte	ebyte	8.6736174e-19
289	byte	zbyte	8.4703295e-22
290	byte	ybyte	8.271806e-25
291	kbyte	bit	8192
292	kbyte	kbit	8
293	kbyte	mbit	0.0078125
294	kbyte	gbit	7.6293945e-06
295	kbyte	tbit	7.450581e-09
296	kbyte	pbit	7.275958e-12
297	kbyte	ebit	7.1054274e-15
298	kbyte	zbit	6.938894e-18
299	kbyte	ybit	6.7762636e-21
300	kbyte	byte	1024
301	kbyte	mbyte	0.0009765625
302	kbyte	gbyte	9.536743e-07
303	kbyte	tbyte	9.313226e-10
304	kbyte	pbyte	9.094947e-13
305	kbyte	ebyte	8.881784e-16
306	kbyte	zbyte	8.6736174e-19
307	kbyte	ybyte	8.4703295e-22
308	mbyte	bit	8.388608e+06
309	mbyte	kbit	8192
310	mbyte	mbit	8
311	mbyte	gbit	0.0078125
312	mbyte	tbit	7.6293945e-06
313	mbyte	pbit	7.450581e-09
314	mbyte	ebit	7.275958e-12
315	mbyte	zbit	7.1054274e-15
316	mbyte	ybit	6.938894e-18
317	mbyte	byte	1.048576e+06
318	mbyte	kbyte	1024
319	mbyte	gbyte	0.0009765625
320	mbyte	tbyte	9.536743e-07
321	mbyte	pbyte	9.313226e-10
322	mbyte	ebyte	9.094947e-13
323	mbyte	zbyte	8.881784e-16
324	mbyte	ybyte	8.6736174e-19
325	gbyte	bit	8.589935e+09
326	gbyte	kbit	8.388608e+06
327	gbyte	mbit	8192
328	gbyte	gbit	8
329	gbyte	tbit	0.0078125
330	gbyte	pbit	7.6293945e-06
331	gbyte	ebit	7.450581e-09
332	gbyte	zbit	7.275958e-12
333	gbyte	ybit	7.1054274e-15
334	gbyte	byte	1.0737418e+09
335	gbyte	kbyte	1.048576e+06
336	gbyte	mbyte	1024
337	gbyte	tbyte	0.0009765625
338	gbyte	pbyte	9.536743e-07
339	gbyte	ebyte	9.313226e-10
340	gbyte	zbyte	9.094947e-13
341	gbyte	ybyte	8.881784e-16
342	tbyte	bit	8.796093e+12
343	tbyte	kbit	8.589935e+09
344	tbyte	mbit	8.388608e+06
345	tbyte	gbit	8192
346	tbyte	tbit	8
347	tbyte	pbit	0.0078125
348	tbyte	ebit	7.6293945e-06
349	tbyte	zbit	7.450581e-09
350	tbyte	ybit	7.275958e-12
351	tbyte	byte	1.0995116e+12
352	tbyte	kbyte	1.0737418e+09
353	tbyte	mbyte	1.048576e+06
354	tbyte	gbyte	1024
355	tbyte	pbyte	0.0009765625
356	tbyte	ebyte	9.536743e-07
357	tbyte	zbyte	9.313226e-10
358	tbyte	ybyte	9.094947e-13
359	pbyte	bit	9.007199e+15
360	pbyte	kbit	8.796093e+12
361	pbyte	mbit	8.589935e+09
362	pbyte	gbit	8.388608e+06
363	pbyte	tbit	8192
364	pbyte	pbit	8
365	pbyte	ebit	0.0078125
366	pbyte	zbit	7.6293945e-06
367	pbyte	ybit	7.450581e-09
368	pbyte	byte	1.1258999e+15
369	pbyte	kbyte	1.0995116e+12
370	pbyte	mbyte	1.0737418e+09
371	pbyte	gbyte	1.048576e+06
372	pbyte	tbyte	1024
373	pbyte	ebyte	0.0009765625
374	pbyte	zbyte	9.536743e-07
375	pbyte	ybyte	9.313226e-10
376	ebyte	bit	9.223372e+18
377	ebyte	kbit	9.007199e+15
378	ebyte	mbit	8.796093e+12
379	ebyte	gbit	8.589935e+09
380	ebyte	tbit	8.388608e+06
381	ebyte	pbit	8192
382	ebyte	ebit	8
383	ebyte	zbit	0.0078125
384	ebyte	ybit	7.6293945e-06
385	ebyte	byte	1.1529215e+18
386	ebyte	kbyte	1.1258999e+15
387	ebyte	mbyte	1.0995116e+12
388	ebyte	gbyte	1.0737418e+09
389	ebyte	tbyte	1.048576e+06
390	ebyte	pbyte	1024
391	ebyte	zbyte	0.0009765625
392	ebyte	ybyte	9.536743e-07
393	zbyte	bit	9.444733e+21
394	zbyte	kbit	9.223372e+18
395	zbyte	mbit	9.007199e+15
396	zbyte	gbit	8.796093e+12
397	zbyte	tbit	8.589935e+09
398	zbyte	pbit	8.388608e+06
399	zbyte	ebit	8192
400	zbyte	zbit	8
401	zbyte	ybit	0.0078125
402	zbyte	byte	1.1805916e+21
403	zbyte	kbyte	1.1529215e+18
404	zbyte	mbyte	1.1258999e+15
405	zbyte	gbyte	1.0995116e+12
406	zbyte	tbyte	1.0737418e+09
407	zbyte	pbyte	1.048576e+06
408	zbyte	ebyte	1024
409	zbyte	ybyte	0.0009765625
410	ybyte	bit	9.671407e+24
411	ybyte	kbit	9.444733e+21
412	ybyte	mbit	9.223372e+18
413	ybyte	gbit	9.007199e+15
414	ybyte	tbit	8.796093e+12
415	ybyte	pbit	8.589935e+09
416	ybyte	ebit	8.388608e+06
417	ybyte	zbit	8192
418	ybyte	ybit	8
419	ybyte	byte	1.2089258e+24
420	ybyte	kbyte	1.1805916e+21
421	ybyte	mbyte	1.1529215e+18
422	ybyte	gbyte	1.1258999e+15
423	ybyte	tbyte	1.0995116e+12
424	ybyte	pbyte	1.0737418e+09
425	ybyte	ebyte	1.048576e+06
426	ybyte	zbyte	1024
\.


--
-- Data for Name: cry; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.cry (gif_id, link) FROM stdin;
1	https://cdn.discordapp.com/attachments/332853782247374848/494113204738457600/00Uhf6M.gif
2	https://cdn.discordapp.com/attachments/332853782247374848/494113319905394708/ion_cry.gif
3	https://cdn.discordapp.com/attachments/332853782247374848/494113365602598932/041c4201-0803-4465-a139-7cfbdece88c0_201406010132556661.gif
4	https://cdn.discordapp.com/attachments/332853782247374848/494113480303968270/k5B1CBd.gif
5	https://cdn.discordapp.com/attachments/332853782247374848/494113521408409620/2b23dd81e676445b8759bce42808b50466767264_hq1.gif
6	https://cdn.discordapp.com/attachments/332853782247374848/494113578081583115/2v4N1.gif
7	https://cdn.discordapp.com/attachments/332853782247374848/494113625309446144/03-i2ds0k71.gif
8	https://cdn.discordapp.com/attachments/332853782247374848/494113671090536458/5a87dca264c8a2c651eed4a4cb5228e91.gif
9	https://cdn.discordapp.com/attachments/332853782247374848/494113729219264512/665365-azusacry1.gif
10	https://cdn.discordapp.com/attachments/332853782247374848/494113835716706305/14500414103611.gif
11	https://cdn.discordapp.com/attachments/332853782247374848/494113893006835712/anime-cry-gif-91.gif
12	https://cdn.discordapp.com/attachments/332853782247374848/494114208854835210/cry-anime-gif-131.gif
13	https://cdn.discordapp.com/attachments/332853782247374848/494114278937198592/Dramatic-Crying-In-Anime-Gif1.gif
14	https://cdn.discordapp.com/attachments/332853782247374848/494116043078238228/3ju8.gif
15	https://cdn.discordapp.com/attachments/332853782247374848/494114505526345729/e718de4951cf43c25b7ac4972e2b32ec9cbfd35e690436c2539e3cc391b7df6e1.gif
16	https://cdn.discordapp.com/attachments/332853782247374848/494114650103742474/e758e06b1de0259baea276b77d025806b7a330dd_hq1.gif
17	https://cdn.discordapp.com/attachments/332853782247374848/494114736863182848/original1.gif
18	https://cdn.discordapp.com/attachments/332853782247374848/494114797751894026/true.gif
19	https://cdn.discordapp.com/attachments/332853782247374848/494114879163203584/true2.gif
20	https://cdn.discordapp.com/attachments/332853782247374848/494114961648386069/tumblr_n7qysx1vL81qcwhdyo1_5001.gif
21	https://cdn.discordapp.com/attachments/332853782247374848/494115115029889024/tumblr_o349ccKT9C1slmfozo1_5401.gif
22	https://cdn.discordapp.com/attachments/332853782247374848/494115264577798154/tumblr_olrmy4djBG1tydz8to1_5001.gif
23	https://cdn.discordapp.com/attachments/332853782247374848/494115476285161482/tumblr_opqkpsFVyG1scqbpuo1_5001.gif
24	https://cdn.discordapp.com/attachments/332853782247374848/494115602273665055/tWtXttk.gif
25	https://cdn.discordapp.com/attachments/332853782247374848/494115663606972417/giphy2.gif
26	https://cdn.discordapp.com/attachments/332853782247374848/495705778641174529/tenor_1.gif
27	https://cdn.discordapp.com/attachments/332853782247374848/495705791286870026/Anime-girl-crying.gif
28	https://cdn.discordapp.com/attachments/332853782247374848/495705833787621405/tumblr_mtxk6zVzaa1sogk1do1_r1_500.gif
29	https://cdn.discordapp.com/attachments/332853782247374848/495705861931532324/f9209274b3d70be059a609f588a472dc.gif
30	https://cdn.discordapp.com/attachments/332853782247374848/495705956093526018/7239144f9492a477092d05271e10657b9e1a335b_hq.gif
31	https://cdn.discordapp.com/attachments/332853782247374848/495705987655663616/tumblr_npop99n0aK1tugr7eo1_500.gif
32	https://cdn.discordapp.com/attachments/332853782247374848/495706045302177812/Cry_001.gif
33	https://cdn.discordapp.com/attachments/332853782247374848/495706131306643480/a01.gif
34	https://cdn.discordapp.com/attachments/332853782247374848/495706167125999616/f281cf3d5b1f4ae5058ff1aabbabf7d5.gif
35	https://cdn.discordapp.com/attachments/332853782247374848/495706213024137228/giphy_1.gif
36	https://cdn.discordapp.com/attachments/332853782247374848/495706263876009995/original_1.gif
37	https://cdn.discordapp.com/attachments/332853782247374848/495706347694981120/tenor_3.gif
38	https://cdn.discordapp.com/attachments/332853782247374848/495706381089898496/source.gif
39	https://cdn.discordapp.com/attachments/332853782247374848/495706394847084545/3660a66807f1fd34-gif-cry-crying-happy-happy-tears-tearful-tears-gif.gif
40	https://cdn.discordapp.com/attachments/332853782247374848/688723304994963508/tenor_3.gif
\.


--
-- Data for Name: dance; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.dance (gif_id, link) FROM stdin;
1	https://cdn.discordapp.com/attachments/332853782247374848/688720540990701582/3cb100ec8312be72c2e8b868ea7c744e405f2377r1-514-640_00.gif
2	https://cdn.discordapp.com/attachments/332853782247374848/688720634888323146/3SlnLWZ.gif
3	https://cdn.discordapp.com/attachments/332853782247374848/688721290424746014/5problemchildren.gif
4	https://cdn.discordapp.com/attachments/332853782247374848/688721402659995652/8da.gif
5	https://cdn.discordapp.com/attachments/332853782247374848/688722128370925603/1445596130_mashiro-dance.gif
6	https://cdn.discordapp.com/attachments/332853782247374848/688723556741283840/tenor.gif
7	https://cdn.discordapp.com/attachments/332853782247374848/688723789927940230/zmUyr5b.gif
8	https://cdn.discordapp.com/attachments/332853782247374848/688742214058377223/4fe96bc1750e49b2bf11b0972b8212b5ae8c7621_hq.gif
9	https://cdn.discordapp.com/attachments/332853782247374848/688742322422153296/raw.gif
\.


--
-- Data for Name: emojis; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.emojis (id, emoji_name, emoji) FROM stdin;
1	rock	<:rock:420682494942380045>
2	paper	:newspaper:
3	scissors	:scissors:
4	0	:zero:
5	1	:one:
6	2	:two:
7	3	:three:
8	4	:four:
9	5	:five:
10	6	:six:
11	7	:seven:
12	8	:eight:
13	9	:nine:
14	<	<
15	>	>
16	@	@
17	!	!
18	?	?
19	#	:hash:
20	*	:asterisk:
21	.	.
22	,	,
23	'	'
24	-	-
25	_	_
26	:	:
27	;	;
28	(	(
29	)	)
30	[	[
31	]	]
32	{	{
33	}	}
34	«	«
35	»	»
36	=	=
37	/	/
38	\\	\\
39	|	|
40	"	"
41	&	&
42	%	%
43	$	$
44	£	£
45	§	§
46	~	~
47	^	^
48	`	`
49	´	´
50	¨	¨
51	º	º
52	ª	ª
53	ə	ə
54	ı	ı
55	ß	ß
56	ø	ø
57	ō	:regional_indicator_o:
58	æ	:regional_indicator_a::regional_indicator_e:
59	œ	:regional_indicator_o::regional_indicator_e:
60	ł	ł
61	¥	¥
62	€	€
63	 	   
64	’	’
65	‘	‘
66	¿	¿
67	•	•
68	…	…
69	ã	:regional_indicator_a:
70	â	:regional_indicator_a:
71	á	:regional_indicator_a:
72	à	:regional_indicator_a:
73	ä	:regional_indicator_a:
74	ê	:regional_indicator_e:
75	é	:regional_indicator_e:
76	è	:regional_indicator_e:
77	ë	:regional_indicator_e:
78	õ	:regional_indicator_o:
79	ô	:regional_indicator_o:
80	ó	:regional_indicator_o:
81	ò	:regional_indicator_o:
82	ö	:regional_indicator_o:
83	û	:regional_indicator_u:
84	ú	:regional_indicator_u:
85	ù	:regional_indicator_u:
86	ü	:regional_indicator_u:
87	î	:regional_indicator_i:
88	í	:regional_indicator_i:
89	ì	:regional_indicator_i:
90	ï	:regional_indicator_i:
91	å	:regional_indicator_a:
92	ā	:regional_indicator_a:
93	č	:regional_indicator_c:
94	ē	:regional_indicator_e:
95	ė	:regional_indicator_e:
96	ę	:regional_indicator_e:
97	į	:regional_indicator_i:
98	ī	:regional_indicator_i:
99	ñ	:regional_indicator_n:
100	ń	:regional_indicator_n:
101	ū	:regional_indicator_u:
102	ś	:regional_indicator_s:
103	š	:regional_indicator_s:
104	:regional_indicator_ÿ:	:regional_indicator_y:
105	ÿ	:regional_indicator_z:
106	ž	:regional_indicator_z:
107	ź	:regional_indicator_z:
109	a	:regional_indicator_a:
110	b	:regional_indicator_b:
111	c	:regional_indicator_c:
112	d	:regional_indicator_d:
113	e	:regional_indicator_e:
114	f	:regional_indicator_f:
115	g	:regional_indicator_g:
116	h	:regional_indicator_h:
117	i	:regional_indicator_i:
118	j	:regional_indicator_j:
119	k	:regional_indicator_k:
120	l	:regional_indicator_l:
121	m	:regional_indicator_m:
122	n	:regional_indicator_n:
123	o	:regional_indicator_o:
124	p	:regional_indicator_p:
125	q	:regional_indicator_q:
126	r	:regional_indicator_r:
127	s	:regional_indicator_s:
128	t	:regional_indicator_t:
129	u	:regional_indicator_u:
130	v	:regional_indicator_v:
131	w	:regional_indicator_w:
132	x	:regional_indicator_x:
133	y	:regional_indicator_y:
134	z	:regional_indicator_z:
135	あ	あ
136	い	い
137	う	う
138	え	え
139	お	お
140	ん	ん
141	は	は
142	ひ	ひ
143	ふ	ふ
144	へ	へ
145	ほ	ほ
146	ち	ち
147	ま	ま
148	み	み
149	む	む
150	め	め
151	も	も
152	な	な
153	に	に
154	ぬ	ぬ
155	ね	ね
156	の	の
157	し	し
158	さ	さ
159	す	す
160	せ	せ
161	そ	そ
162	た	た
163	て	て
164	と	と
165	つ	つ
166	か	か
167	き	き
168	く	く
169	け	け
170	こ	こ
171	ら	ら
172	り	り
173	る	る
174	れ	れ
175	ろ	ろ
176	や	や
177	ゆ	ゆ
178	よ	よ
179	わ	わ
180	を	を
181	。	。
182	、	、
\.


--
-- Data for Name: facedesk; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.facedesk (gif_id, link) FROM stdin;
1	https://puu.sh/rK6E7/0b745e5544.gif
2	https://cdn.discordapp.com/attachments/332853782247374848/492266935673815040/NYnrdRX.gif
3	https://cdn.discordapp.com/attachments/332853782247374848/492267038337925120/QBIpuM6.gif
4	https://cdn.discordapp.com/attachments/332853782247374848/492267100530933760/cnDaGLJ.gif
5	https://cdn.discordapp.com/attachments/332853782247374848/492267172337418240/AfrtyGZ.gif
6	https://cdn.discordapp.com/attachments/332853782247374848/492267245615972352/Vqv310r.gif
7	https://cdn.discordapp.com/attachments/332853782247374848/635280077114048532/facedesk-Bk_03yQoZ..gif
\.


--
-- Data for Name: fliptable; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.fliptable (gif_id, link) FROM stdin;
1	https://cdn.discordapp.com/attachments/320906001404395520/360385375669190656/4lCNxmh.gif
2	https://cdn.discordapp.com/attachments/320906001404395520/360385386024927234/4087350-4407681327-tumbl.gif
3	https://cdn.discordapp.com/attachments/320906001404395520/360385419277500416/MebsK05.gif
4	https://cdn.discordapp.com/attachments/320906001404395520/360385461656616962/8eC0kbM.gif
5	https://cdn.discordapp.com/attachments/320906001404395520/360385478135906304/tumblr_m0psvtoYci1qjamsjo2_500.gif
6	https://cdn.discordapp.com/attachments/320906001404395520/360393889766572032/65316.gif
7	https://cdn.discordapp.com/attachments/332853782247374848/492338394622328834/giphy.gif
8	https://cdn.discordapp.com/attachments/332853782247374848/492333047417536522/tableflip_f27ff0_3932526.gif
\.


--
-- Data for Name: greet; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.greet (gif_id, link) FROM stdin;
1	https://cdn.discordapp.com/attachments/332853782247374848/350435861890072576/9b979863dc2de7b27f29c4948455fe4f04fdf48f_hq.gif
2	https://cdn.discordapp.com/attachments/332853782247374848/350435868827189258/aqyDYi7.gif
3	https://cdn.discordapp.com/attachments/332853782247374848/350435899928084480/b68e6ea69d083462c6bfe7421d4ea732.gif
4	https://cdn.discordapp.com/attachments/332853782247374848/350435921352458260/giphy.gif
5	https://cdn.discordapp.com/attachments/332853782247374848/350435940239540225/kTxO14s.gif
6	https://cdn.discordapp.com/attachments/332853782247374848/350435969213923339/mEQM3.gif
7	https://cdn.discordapp.com/attachments/332853782247374848/350436002503983104/tenor_1.gif
8	https://cdn.discordapp.com/attachments/332853782247374848/350436035651436554/tenor.gif
9	https://cdn.discordapp.com/attachments/332853782247374848/350437175076192256/tumblr_nt2axxI1no1tydz8to1_500.gif
10	https://cdn.discordapp.com/attachments/332853782247374848/350437174988111872/tumblr_notq4gp0qw1us70pno1_500.gif
11	https://cdn.discordapp.com/attachments/332853782247374848/350437229669122049/tumblr_o328lujnMO1tydz8to1_540.gif
12	https://cdn.discordapp.com/attachments/332853782247374848/350437245955735552/waving_anime_girl.gif
13	https://cdn.discordapp.com/attachments/332853782247374848/492316699656192021/giphy.gif
14	https://cdn.discordapp.com/attachments/332853782247374848/492316788730888192/tumblr_inline_or64joDCrr1uclv06_540.gif
15	https://cdn.discordapp.com/attachments/332853782247374848/492316904082374666/anime-wave-gif-4.gif
16	https://cdn.discordapp.com/attachments/332853782247374848/492316970662756373/tenor.gif
17	https://cdn.discordapp.com/attachments/332853782247374848/492317023293014016/tumblr_moaunco3811rji3a0o1_500.gif
18	https://cdn.discordapp.com/attachments/332853782247374848/492317070587854849/tumblr_mx3wdqub2S1s05l8po1_500.gif
19	https://cdn.discordapp.com/attachments/332853782247374848/492317166864171018/tumblr_ntrzlnPEJ31rd6sdio1_500.gif
20	https://cdn.discordapp.com/attachments/332853782247374848/492317223340212224/tumblr_o5p3ut4Ibb1uzwbyjo1_500.gif
21	https://cdn.discordapp.com/attachments/332853782247374848/492317281481785344/girl-anime-happy.gif
22	https://cdn.discordapp.com/attachments/332853782247374848/494412284043722762/tumblr_mtbzmd6Gaa1qztgoio4_250.gif
23	https://cdn.discordapp.com/attachments/332853782247374848/495719692191662090/4E1.gif
\.


--
-- Data for Name: highfive; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.highfive (gif_id, link) FROM stdin;
1	https://cdn.discordapp.com/attachments/332853782247374848/492267430282788864/nMF1S.gif
2	https://cdn.discordapp.com/attachments/332853782247374848/492267506384502785/Mghkjt9.gif
3	https://cdn.discordapp.com/attachments/332853782247374848/492267580325756929/ZsMHlaN.gif
4	https://cdn.discordapp.com/attachments/332853782247374848/492267643181465610/3f46aCY.gif
5	https://cdn.discordapp.com/attachments/332853782247374848/492267701948121088/NSISFsj.gif
6	https://cdn.discordapp.com/attachments/332853782247374848/492268930388197376/giphy.gif
7	https://cdn.discordapp.com/attachments/320906001404395520/357828120625020940/giphy_2.gif
8	https://cdn.discordapp.com/attachments/320906001404395520/357828154175258624/giphy_1.gif
9	https://cdn.discordapp.com/attachments/320906001404395520/357828139818287104/giphy.gif
10	https://cdn.discordapp.com/attachments/332853782247374848/492270693870731264/Gon_and_Killua_high_5_gif.gif
11	https://cdn.discordapp.com/attachments/332853782247374848/492270758777585664/tumblr_ncxm5idqKH1tm5um3o1_500.gif
12	https://cdn.discordapp.com/attachments/332853782247374848/492270844161294336/zhKUBiJ.gif
\.


--
-- Data for Name: hug; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.hug (gif_id, link) FROM stdin;
1	https://puu.sh/suFSN/ba7c981182.gif
2	https://cdn.discordapp.com/attachments/332853782247374848/491624649483091968/BCt32xp.gif
3	https://cdn.discordapp.com/attachments/332853782247374848/491624747990253580/JuLSB9x.gif
4	https://cdn.discordapp.com/attachments/332853782247374848/491624827657125908/H2PhV59.gif
5	https://cdn.discordapp.com/attachments/332853782247374848/491625012667744258/mj6xlN0.gif
6	https://cdn.discordapp.com/attachments/332853782247374848/494956194004336650/giphy_1.gif
7	https://cdn.discordapp.com/attachments/332853782247374848/491625229450215469/1YHstFv.gif
8	https://cdn.discordapp.com/attachments/332853782247374848/491628262691307520/815DFnV.gif
9	https://cdn.discordapp.com/attachments/332853782247374848/491628426235478016/a1gqsoD.gif
10	https://cdn.discordapp.com/attachments/332853782247374848/491628585040478213/OghlfbR.gif
11	https://cdn.discordapp.com/attachments/332853782247374848/491628700895412226/meKKHe0.gif
12	https://cdn.discordapp.com/attachments/332853782247374848/491628821376925705/ASqYhK1.gif
13	https://cdn.discordapp.com/attachments/332853782247374848/491629613961707551/giphy_1.gif
14	https://cdn.discordapp.com/attachments/332853782247374848/491629756404596736/bGrCSZR.gif
15	https://cdn.discordapp.com/attachments/332853782247374848/491629877514993674/9qw74Sb.gif
16	https://cdn.discordapp.com/attachments/332853782247374848/491629996318654474/1ym7jEl.gif
17	https://cdn.discordapp.com/attachments/332853782247374848/491630078371954688/giphy2.gif
18	https://cdn.discordapp.com/attachments/332853782247374848/491630204121513995/gBYIpmU.gif
19	https://cdn.discordapp.com/attachments/332853782247374848/491630318835597312/jqIv0y5.gif
20	https://cdn.discordapp.com/attachments/332853782247374848/491630480521691146/NKX7niS.gif
21	https://cdn.discordapp.com/attachments/332853782247374848/491630730104012810/m8pDgJ4.gif
22	https://cdn.discordapp.com/attachments/332853782247374848/491630910081335306/ImAswLA.gif
23	https://cdn.discordapp.com/attachments/332853782247374848/491631119939403797/Ns9Bpu9.gif
24	https://cdn.discordapp.com/attachments/332853782247374848/491631250788843520/W5OrStA.gif
25	https://cdn.discordapp.com/attachments/332853782247374848/491631384641929216/Zt9wUzl.gif
26	https://cdn.discordapp.com/attachments/332853782247374848/491631475704201226/qyNtmqZ.gif
27	https://cdn.discordapp.com/attachments/332853782247374848/491633579046993931/tumblr_oijzfaiUJy1rcufwuo2_540.gif
28	https://cdn.discordapp.com/attachments/332853782247374848/491633670483083284/u05CUNl.gif
29	https://cdn.discordapp.com/attachments/332853782247374848/491633744772595742/xIfLEzv.gif
30	https://cdn.discordapp.com/attachments/332853782247374848/491633844085063680/0qKlmm5.gif
31	https://cdn.discordapp.com/attachments/332853782247374848/491634029297270804/XWWccKr.gif
32	https://cdn.discordapp.com/attachments/332853782247374848/491634152643493918/s60LbCu.gif
33	https://cdn.discordapp.com/attachments/332853782247374848/491634269471506442/8BVEhXy.gif
34	https://cdn.discordapp.com/attachments/332853782247374848/491634368666664961/Bh7uNRB.gif
35	https://cdn.discordapp.com/attachments/332853782247374848/491634470399770624/ZKvSAwQ.gif
36	https://cdn.discordapp.com/attachments/332853782247374848/491634563970367514/6uR5rpR.gif
37	https://cdn.discordapp.com/attachments/332853782247374848/491634716487843840/uVVAPGE.gif
38	https://cdn.discordapp.com/attachments/332853782247374848/491634839536009216/gNXWu65.gif
39	https://cdn.discordapp.com/attachments/332853782247374848/491634928337944577/f6IKFsx.gif
40	https://cdn.discordapp.com/attachments/332853782247374848/491635058302648320/3ZOnBo4.gif
41	https://cdn.discordapp.com/attachments/332853782247374848/491635213995081728/77ZVZwB.gif
42	https://cdn.discordapp.com/attachments/332853782247374848/491635356135981066/2WywS3T.gif
43	https://cdn.discordapp.com/attachments/332853782247374848/491650553961775164/459-3-ca2f786555a3bf5bcc3a442dcab518bf.gif
44	https://cdn.discordapp.com/attachments/332853782247374848/491650632969617418/1460993069-9ac8eaae8cd4149af4510d0fed0796bf.gif
45	https://cdn.discordapp.com/attachments/332853782247374848/491650887320731680/anime-couple-gif-hug-Favim.com-3637687.gif
46	https://cdn.discordapp.com/attachments/332853782247374848/491651037351116800/anime-hug-gif-7.gif
47	https://cdn.discordapp.com/attachments/332853782247374848/491651107576086540/anime-hug-gif-17.gif
48	https://cdn.discordapp.com/attachments/332853782247374848/491651166019780619/anime-hug-gif-18.gif
49	https://cdn.discordapp.com/attachments/332853782247374848/491651349101019136/xgXXBdl.gif
50	https://cdn.discordapp.com/attachments/332853782247374848/491651490113388556/giphy3.gif
51	https://cdn.discordapp.com/attachments/332853782247374848/491651607470276609/giphy4.gif
52	https://cdn.discordapp.com/attachments/332853782247374848/491651840342228993/hbadG4o.gif
53	https://cdn.discordapp.com/attachments/332853782247374848/491678224410214410/rlOJqHL.gif
54	https://cdn.discordapp.com/attachments/332853782247374848/491653166396342272/tenor1.gif
55	https://cdn.discordapp.com/attachments/332853782247374848/491653255496073216/tenor2.gif
56	https://cdn.discordapp.com/attachments/332853782247374848/491653311750078482/tenor.gif
57	https://cdn.discordapp.com/attachments/332853782247374848/491653377705377793/3136a3e23550b6eb1838332cc0d3c128b207a78b_hq.gif
58	https://cdn.discordapp.com/attachments/332853782247374848/491653459636912139/5901b698f35d0_original.gif
59	https://cdn.discordapp.com/attachments/332853782247374848/491581952739246090/X1nxmQA.gif
60	https://cdn.discordapp.com/attachments/332853782247374848/491653875355484160/qlop9ke.gif
61	https://cdn.discordapp.com/attachments/332853782247374848/491654312271806479/27tE.gif
62	https://cdn.discordapp.com/attachments/332853782247374848/491654449769742337/tumblr_nsmj4nL1ed1u86t2qo1_5001.gif
63	https://cdn.discordapp.com/attachments/332853782247374848/491654527532007424/DefinitiveHeavenlyDalmatian-size_restricted1.gif
64	https://cdn.discordapp.com/attachments/332853782247374848/491654701075660830/tumblr_mbsv1ubbzX1qg78wpo1_500_large.gif
65	https://cdn.discordapp.com/attachments/332853782247374848/491654794612834325/1mrPv7o.gif
66	https://cdn.discordapp.com/attachments/332853782247374848/494956368969859073/1499272728_tumblr_n6rfp8RFWA1ts2cfmo1_500.gif
67	https://cdn.discordapp.com/attachments/332853782247374848/494956556069371914/vRmIcSl.gif
68	https://cdn.discordapp.com/attachments/332853782247374848/495720289032994827/tumblr_nmr51unrUl1th2d3do1_500.gif
69	https://cdn.discordapp.com/attachments/332853782247374848/635272776306917406/BJ0UovdUM.gif
70	https://cdn.discordapp.com/attachments/332853782247374848/635273490420727828/Bk5haAocG.gif
71	https://cdn.discordapp.com/attachments/332853782247374848/635394894650802176/hanako_hug.gif
72	https://cdn.discordapp.com/attachments/332853782247374848/635398118254444544/olivia_hug.gif
73	https://cdn.discordapp.com/attachments/332853782247374848/635400703526961172/rkB4NJtD-.gif
74	https://cdn.discordapp.com/attachments/332853782247374848/635401357263896596/rkN2u_XP-.gif
75	https://cdn.discordapp.com/attachments/332853782247374848/635402022316933120/rkx1dJ25z.gif
76	https://cdn.discordapp.com/attachments/332853782247374848/635407571838173185/Sk2gmRZZG.gif
77	https://cdn.discordapp.com/attachments/332853782247374848/688720831962152964/4a5.gif
\.


--
-- Data for Name: kawaii; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.kawaii (gif_id, link) FROM stdin;
1	https://cdn.discordapp.com/attachments/332853782247374848/494131069499736064/VB63fzH.gif
2	https://cdn.discordapp.com/attachments/332853782247374848/494180253875437568/0edb66f4e5b1e28814cd9c0c06a68be5.gif
3	https://cdn.discordapp.com/attachments/332853782247374848/494180463800483852/asvvn5F.gif
4	https://cdn.discordapp.com/attachments/332853782247374848/494184817785700367/riypblP.gif
5	https://cdn.discordapp.com/attachments/332853782247374848/494184917907800064/hMFUbAp.gif
6	https://cdn.discordapp.com/attachments/332853782247374848/494185139732086784/tumblr_n6d96sBPY81twotlho1_500.gif
7	https://cdn.discordapp.com/attachments/332853782247374848/494189614169456640/RptKOj3.gif
8	https://cdn.discordapp.com/attachments/332853782247374848/494190086909591573/tumblr_ovhzamebaH1vwv71wo1_500.gif
9	https://cdn.discordapp.com/attachments/332853782247374848/494191556916543488/cfad56194f4c634b939fb5f030d767b6ea25b600_hq.gif
10	https://cdn.discordapp.com/attachments/332853782247374848/494191660209668107/giphy1.gif
11	https://cdn.discordapp.com/attachments/332853782247374848/494191798361522200/original.gif
12	https://cdn.discordapp.com/attachments/332853782247374848/494191948152700939/tenor1.gif
13	https://cdn.discordapp.com/attachments/332853782247374848/494192111663448085/tumblr_lksnvpoA0E1qdmxsio1_500.gif
14	https://cdn.discordapp.com/attachments/332853782247374848/494192591860924437/tumblr_m1ejq5AiK51qec4gro1_500.gif
15	https://cdn.discordapp.com/attachments/332853782247374848/494192828885499906/tumblr_mso5khhjuS1sv98gio1_500.gif
16	https://cdn.discordapp.com/attachments/332853782247374848/494192922204569642/tumblr_n2y5grfYLP1tvsah6o1_500.gif
17	https://cdn.discordapp.com/attachments/332853782247374848/494193131277910018/tumblr_oadkarVvOk1vqnc0fo1_500.gif
18	https://cdn.discordapp.com/attachments/332853782247374848/494193442017247249/image1.gif
19	https://cdn.discordapp.com/attachments/332853782247374848/494193630861328384/tumblr_ml4wz4bfU41r6kx85o1_5001.gif
20	https://cdn.discordapp.com/attachments/332853782247374848/494193773086244875/787H2cR.gif
21	https://cdn.discordapp.com/attachments/332853782247374848/494193881458409501/7ad7a01cf901c4b4199a4b5f22fbafaa7a1a1983_hq.gif
22	https://cdn.discordapp.com/attachments/332853782247374848/494193954141503500/tumblr_n0kynl2ysl1s0oixxo1_500.gif
23	https://cdn.discordapp.com/attachments/332853782247374848/495206287806824448/giphy.gif
24	https://cdn.discordapp.com/attachments/332853782247374848/635399695312879628/r1XEOymib.gif
\.


--
-- Data for Name: kiss; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.kiss (gif_id, link) FROM stdin;
1	https://cdn.discordapp.com/attachments/332853782247374848/492338782818009104/W6V99sD.gif
2	https://cdn.discordapp.com/attachments/332853782247374848/492340466340069399/ttm53OK.gif
3	https://cdn.discordapp.com/attachments/332853782247374848/492340748193103893/JzNEU9g.gif
4	https://cdn.discordapp.com/attachments/332853782247374848/492340835703324673/xBrFNe2.gif
5	https://cdn.discordapp.com/attachments/332853782247374848/492341045044969482/1CfeX0M.gif
6	https://cdn.discordapp.com/attachments/332853782247374848/492341175538417674/lvgE35W.gif
7	https://cdn.discordapp.com/attachments/332853782247374848/492341677709590528/niMj9GJ.gif
8	https://cdn.discordapp.com/attachments/332853782247374848/492341760337379349/nxhdQuJ.gif
9	https://cdn.discordapp.com/attachments/332853782247374848/492341853018914826/2mFkqXh.gif
10	https://cdn.discordapp.com/attachments/332853782247374848/492342517807841291/71lpaeH.gif
11	https://cdn.discordapp.com/attachments/332853782247374848/492342775170203649/ZUc3T7U.gif
12	https://cdn.discordapp.com/attachments/332853782247374848/492365922410168350/Lce2Zw2.gif
13	https://cdn.discordapp.com/attachments/332853782247374848/492366033143726088/dpHduEL.gif
14	https://cdn.discordapp.com/attachments/332853782247374848/492366134570647572/YfqU78J.gif
15	https://cdn.discordapp.com/attachments/332853782247374848/492366645650653194/uKxYHBx.gif
16	https://cdn.discordapp.com/attachments/332853782247374848/492366723203334149/gvn3TYx.gif
17	https://cdn.discordapp.com/attachments/332853782247374848/492366841029853185/w58KuGF.gif
18	https://cdn.discordapp.com/attachments/332853782247374848/492366961146069002/6F1blBK.gif
19	https://cdn.discordapp.com/attachments/332853782247374848/492367052896731156/PtoD0Qe.gif
20	https://cdn.discordapp.com/attachments/332853782247374848/492367354161004554/8fTyMll.gif
21	https://cdn.discordapp.com/attachments/332853782247374848/492367733166571521/659BnRT.gif
22	https://cdn.discordapp.com/attachments/332853782247374848/492367844961681408/KEWJTII.gif
23	https://cdn.discordapp.com/attachments/332853782247374848/492367909528666122/824sijZ.gif
24	https://cdn.discordapp.com/attachments/332853782247374848/492367995172028418/Zc1R328.gif
25	https://cdn.discordapp.com/attachments/332853782247374848/492368084712292353/pzauozz.gif
26	https://cdn.discordapp.com/attachments/332853782247374848/492368150264938506/uQ0WpXF.gif
27	https://cdn.discordapp.com/attachments/332853782247374848/350661259626020874/TmsDygm.gif
28	https://cdn.discordapp.com/attachments/332853782247374848/351514668155797504/9zrZasn.gif
29	https://cdn.discordapp.com/attachments/332853782247374848/492368686808694785/94e210aa785d593533f29e3d88b539cc6e1b2de6_hq.gif
30	https://cdn.discordapp.com/attachments/332853782247374848/492368779515527168/7922687153681e641735e8334c1396618b5ff52e_hq.gif
31	https://cdn.discordapp.com/attachments/332853782247374848/492368869755846689/ab99e0459f9f70f87f409cdff4f936d2.gif
32	https://cdn.discordapp.com/attachments/332853782247374848/492368927255691264/d0740ac6cd5006f9098cd13866093a8ba609863c_hq.gif
33	https://cdn.discordapp.com/attachments/332853782247374848/492369000441970691/get.gif
34	https://cdn.discordapp.com/attachments/332853782247374848/492369315430006784/giphy1.gif
35	https://cdn.discordapp.com/attachments/332853782247374848/492369419247288326/giphy2.gif
36	https://cdn.discordapp.com/attachments/332853782247374848/492369475316875264/giphy3.gif
37	https://cdn.discordapp.com/attachments/332853782247374848/492369663980863494/giphy4.gif
38	https://cdn.discordapp.com/attachments/332853782247374848/492369737892757505/giphy.gif
39	https://cdn.discordapp.com/attachments/332853782247374848/492369820847964160/Kiss.gif
40	https://cdn.discordapp.com/attachments/332853782247374848/492369885888905216/original1.gif
41	https://cdn.discordapp.com/attachments/332853782247374848/492369945154289664/original2.gif
42	https://cdn.discordapp.com/attachments/332853782247374848/492370054617366541/original.gif
43	https://cdn.discordapp.com/attachments/332853782247374848/492370126469988352/tenor1.gif
44	https://cdn.discordapp.com/attachments/332853782247374848/492370222557298710/tenor2.gif
45	https://cdn.discordapp.com/attachments/332853782247374848/492370310931415066/tenor3.gif
46	https://cdn.discordapp.com/attachments/332853782247374848/492370371249438726/tenor.gif
47	https://cdn.discordapp.com/attachments/332853782247374848/492370430452170779/tumblr_m6rh9s3B2J1ru1z16o1_500.gif
48	https://cdn.discordapp.com/attachments/332853782247374848/492370503256768516/tumblr_n1tzw7YFsE1rr1hwfo1_500.gif
49	https://cdn.discordapp.com/attachments/332853782247374848/492370551059382283/tumblr_nc6wfj2XWg1tl7e70o1_500.gif
50	https://cdn.discordapp.com/attachments/332853782247374848/492370615790206976/tumblr_odt2geMkpc1t86l7wo1_500.gif
51	https://cdn.discordapp.com/attachments/332853782247374848/492370824670609408/uhhksQr.gif
52	https://cdn.discordapp.com/attachments/332853782247374848/495205045407842304/tumblr_mp1fn2IWQV1sqhtrro1_500.gif
\.


--
-- Data for Name: laugh; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.laugh (gif_id, link) FROM stdin;
1	https://cdn.discordapp.com/attachments/332853782247374848/494123170216017920/true4.gif
2	https://cdn.discordapp.com/attachments/332853782247374848/494123258325499914/DbPO61l.gif
3	https://cdn.discordapp.com/attachments/332853782247374848/494123392744554496/s3xeZv0.gif
4	https://cdn.discordapp.com/attachments/332853782247374848/494123474571362314/rV3ScQ4.gif
5	https://cdn.discordapp.com/attachments/332853782247374848/494123629118750721/3c93598476fe71b2cf1530d94d0f60e4cbfea7fb_hq1.gif
6	https://cdn.discordapp.com/attachments/332853782247374848/494123707401502731/33ea4b5492b37aad34fe4dd408479ce71.gif
7	https://cdn.discordapp.com/attachments/332853782247374848/494123749961105418/4310c19f2b4480d9915ea216c20978af10034623_hq1.gif
8	https://cdn.discordapp.com/attachments/332853782247374848/494123823541518347/ec0c59bf33ed44f9ae05212a7f05534371a335a7_hq1.gif
9	https://cdn.discordapp.com/attachments/332853782247374848/494123880248508416/RipeIcyAlaskajingle-max-1mb1.gif
10	https://cdn.discordapp.com/attachments/332853782247374848/494123920908353536/true5.gif
11	https://cdn.discordapp.com/attachments/332853782247374848/494123968651853824/tumblr_inline_nn9mrvBWv51sglleq_5001.gif
12	https://cdn.discordapp.com/attachments/332853782247374848/494124011102535682/tumblr_n9q2nagbEc1ti1nl1o1_5001.gif
13	https://cdn.discordapp.com/attachments/332853782247374848/494124048159080450/tumblr_om93wdfZTF1tydz8to1_5001.gif
14	https://cdn.discordapp.com/attachments/332853782247374848/494124138894721025/049.gif
15	https://cdn.discordapp.com/attachments/332853782247374848/494124201821732906/737056cdb9f746a5a35df6abd3f213d7c9d81ebfd9924b941316e1fb847a54f6.gif
16	https://cdn.discordapp.com/attachments/332853782247374848/494124389655248896/a27.gif
17	https://cdn.discordapp.com/attachments/332853782247374848/494124764038955018/csKJtxk.gif
18	https://cdn.discordapp.com/attachments/332853782247374848/494124817348558858/G10rrQO.gif
19	https://cdn.discordapp.com/attachments/332853782247374848/494125060202692613/Pripara_Laugh.gif
20	https://cdn.discordapp.com/attachments/332853782247374848/494125132290326548/Taiga_stifle_laugh.gif
21	https://cdn.discordapp.com/attachments/332853782247374848/494125244416786462/tenor.gif
22	https://cdn.discordapp.com/attachments/332853782247374848/494125307545255936/tumblr_n2e0cm2tNo1s0oixxo1_500.gif
23	https://cdn.discordapp.com/attachments/332853782247374848/494125346954805279/tumblr_n53pnqDtW61rveihgo1_500.gif
24	https://cdn.discordapp.com/attachments/332853782247374848/494424913969545216/original_2.gif
25	https://cdn.discordapp.com/attachments/332853782247374848/495536023674290176/EverlastingCompetentArabianhorse-size_restricted.gif
26	https://cdn.discordapp.com/attachments/332853782247374848/495536051172016138/zldac7.gif
27	https://cdn.discordapp.com/attachments/332853782247374848/495536100253892608/493db1f507ecc336cd55d38d349a3d6ee6cfd2fb_hq.gif
28	https://cdn.discordapp.com/attachments/332853782247374848/495719121539825685/5c5.gif
29	https://cdn.discordapp.com/attachments/332853782247374848/495719206055313438/1519225325_tumblr_ok6mogpGd81vlvf9to1_500.gif
30	https://cdn.discordapp.com/attachments/332853782247374848/627933009995104326/tenor_5.gif
\.


--
-- Data for Name: nom; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.nom (gif_id, link) FROM stdin;
1	https://cdn.discordapp.com/attachments/332853782247374848/493819958627926036/giphy.gif
2	https://cdn.discordapp.com/attachments/332853782247374848/493820010188242945/nomnom21.gif
3	https://gfycat.com/gifs/detail/revolvingimpracticalcooter
4	https://cdn.discordapp.com/attachments/332853782247374848/493820365684867122/asvvn5F.gif
5	https://cdn.discordapp.com/attachments/332853782247374848/493820442222657556/zXCkUj5.gif
6	https://cdn.discordapp.com/attachments/332853782247374848/493820547994484738/8f21.gif
7	https://cdn.discordapp.com/attachments/332853782247374848/493820604676440064/0224e7f570f0dad6698b73c5c0b16778faf25c54_hq1.gif
8	https://cdn.discordapp.com/attachments/332853782247374848/493820651702845450/216845_h4iop1f9dksr3x8cjwve0nyum5gzt2a6q7lb1.gif
9	https://cdn.discordapp.com/attachments/332853782247374848/493820699287355393/anime-eating-gif-71.gif
10	https://cdn.discordapp.com/attachments/332853782247374848/493820761388220432/c9c1.gif
11	https://cdn.discordapp.com/attachments/332853782247374848/493820804803592202/d7faf779cd70ee49edf926072c2f0f4ed33f4971_hq1.gif
12	https://cdn.discordapp.com/attachments/332853782247374848/493820848684269598/original2.gif
13	https://cdn.discordapp.com/attachments/332853782247374848/493820894662098945/tumblr_mnykxv0Q2C1s0ha57o1_5001.gif
14	https://cdn.discordapp.com/attachments/332853782247374848/493820947749404672/tumblr_nq1zzw3jNB1utdap1o1_5001.gif
15	https://cdn.discordapp.com/attachments/332853782247374848/493820990766186506/tumblr_o5sa9fNtRs1uxvvvzo1_5001.gif
16	https://cdn.discordapp.com/attachments/332853782247374848/493821050442743828/tumblr_oo40pvL0yL1vymbt8o2_4001.gif
17	https://cdn.discordapp.com/attachments/332853782247374848/493821103660335104/7cdd6b17cdc65bcc0094d91fa08c54ff6d925603_hq.gif
18	https://cdn.discordapp.com/attachments/332853782247374848/495720530863849483/755d2ef4dcd720df467e2cec297061eb35f04604_hq.gif
19	https://cdn.discordapp.com/attachments/332853782247374848/627931427647913986/original.gif
20	https://cdn.discordapp.com/attachments/332853782247374848/627933871190835240/C-MS_MDR.gif
\.


--
-- Data for Name: nuzzle; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.nuzzle (gif_id, link) FROM stdin;
1	https://cdn.discordapp.com/attachments/332853782247374848/635071799855415316/8.gif
2	https://cdn.discordapp.com/attachments/332853782247374848/493745851349598215/815DFnV.gif
3	https://cdn.discordapp.com/attachments/332853782247374848/493745924418437160/gNXWu65.gif
4	https://cdn.discordapp.com/attachments/332853782247374848/493745989115707392/HEWryTP.gif
5	https://cdn.discordapp.com/attachments/332853782247374848/493746058648616962/RRUa4aX.gif
6	https://cdn.discordapp.com/attachments/332853782247374848/493746125829046286/8X6d.gif
7	https://cdn.discordapp.com/attachments/332853782247374848/493746185316859919/anime-nuzzle-gif-3.gif
8	https://cdn.discordapp.com/attachments/332853782247374848/493747914770743296/Tumblr_n78eswzosb1s3jt9ho1_500.gif
9	https://cdn.discordapp.com/attachments/332853782247374848/493746320700604426/anime-nuzzle-gif-6.gif
10	https://cdn.discordapp.com/attachments/332853782247374848/493746391227695105/e46.gif
11	https://cdn.discordapp.com/attachments/332853782247374848/493748503210885120/5Kpx.gif
12	https://cdn.discordapp.com/attachments/332853782247374848/493752102146015232/tenor.gif
13	https://cdn.discordapp.com/attachments/332853782247374848/493746514720587796/tumblr_ogtv5qpyd01vala9ro1_r3_500.gif
14	https://cdn.discordapp.com/attachments/332853782247374848/493746624800227329/anime-snuggle-gif.gif
15	https://cdn.discordapp.com/attachments/332853782247374848/493746696895856640/f81.gif
16	https://cdn.discordapp.com/attachments/332853782247374848/493746762066952193/giphy_2.gif
17	https://cdn.discordapp.com/attachments/332853782247374848/493746828316246016/5b548786bbdd6768674a51cf9747dc0df0a5dcaf65f2dab4d1677d0aaf10bc10.gif
18	https://cdn.discordapp.com/attachments/332853782247374848/493746910813880320/anime-snuggle-gif-4.gif
19	https://cdn.discordapp.com/attachments/332853782247374848/493746986697359373/Shinra_and_celty.gif
20	https://cdn.discordapp.com/attachments/332853782247374848/493747053235798021/giphy_3.gif
21	https://cdn.discordapp.com/attachments/332853782247374848/495204413464379395/tumblr_mckp6cdLOa1qzd219o1_500.gif
22	https://cdn.discordapp.com/attachments/332853782247374848/495532803107061760/tenor_1.gif
23	https://cdn.discordapp.com/attachments/332853782247374848/495533032401272832/4e0.gif
24	https://cdn.discordapp.com/attachments/332853782247374848/495533300283342850/tumblr_nb8bkacJqM1tk3dxfo1_500.gif
25	https://cdn.discordapp.com/attachments/332853782247374848/495533461659189248/tenor_2.gif
26	https://cdn.discordapp.com/attachments/332853782247374848/635277640357642281/By03IkXsZ.gif
27	https://cdn.discordapp.com/attachments/332853782247374848/635281853837869076/G2DLX6i.gif
28	https://cdn.discordapp.com/attachments/332853782247374848/635385680830267393/H1SfI8XwW.gif
29	https://cdn.discordapp.com/attachments/332853782247374848/635399695312879628/r1XEOymib.gif
\.


--
-- Data for Name: pat; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.pat (gif_id, link) FROM stdin;
1	https://cdn.discordapp.com/attachments/332853782247374848/491524742285885440/8dbkJW7.gif
2	https://cdn.discordapp.com/attachments/332853782247374848/491524995693150219/ArejGQL.gif
3	https://cdn.discordapp.com/attachments/332853782247374848/491525119114608641/hZUuR.gif
4	https://cdn.discordapp.com/attachments/332853782247374848/491525250358444032/nnr0Po5.gif
5	https://cdn.discordapp.com/attachments/332853782247374848/491525808398270464/lS0QIW2.gif
6	https://cdn.discordapp.com/attachments/332853782247374848/491525959493746688/T9tQc8l.gif
7	https://cdn.discordapp.com/attachments/332853782247374848/491526053391499264/tenor2.gif
8	https://cdn.discordapp.com/attachments/332853782247374848/491526192847912960/KVBZTrT.gif
9	https://cdn.discordapp.com/attachments/332853782247374848/491526300478078986/fp9XJZO.gif
10	https://cdn.discordapp.com/attachments/332853782247374848/491526410268180490/x0E1U4n.gif
11	https://cdn.discordapp.com/attachments/332853782247374848/491526559161909259/0e5YFbF.gif
12	https://cdn.discordapp.com/attachments/332853782247374848/491526698731307008/1x6lW.gif
13	https://cdn.discordapp.com/attachments/332853782247374848/491526805421817856/m4xZJqj.gif
14	https://cdn.discordapp.com/attachments/332853782247374848/491526908081864714/Ekk16QF.gif
15	https://cdn.discordapp.com/attachments/332853782247374848/491527006031314946/sZ65lvE.gif
16	https://cdn.discordapp.com/attachments/332853782247374848/491576564929003520/QRKXHYd.gif
17	https://cdn.discordapp.com/attachments/332853782247374848/491576660525580288/VIxvOjQ.gif
18	https://cdn.discordapp.com/attachments/332853782247374848/491576860317188096/jl0jCev.gif
19	https://cdn.discordapp.com/attachments/332853782247374848/491576950519758858/EVTCTfd.gif
20	https://cdn.discordapp.com/attachments/332853782247374848/491577539870064640/410zYgR.gif
21	https://cdn.discordapp.com/attachments/332853782247374848/491577623319937040/YwwKG3e.gif
22	https://cdn.discordapp.com/attachments/332853782247374848/491577704425193472/xa50o5J.gif
23	https://cdn.discordapp.com/attachments/332853782247374848/491578430174003200/VtK0mBI.gif
24	https://cdn.discordapp.com/attachments/332853782247374848/491578506296426499/M904hih.gif
25	https://cdn.discordapp.com/attachments/332853782247374848/491579639182131200/a888cc589f76ea380a8944f443872f12fb714d67_hq1.gif
26	https://cdn.discordapp.com/attachments/332853782247374848/491579740327641088/n7AOiGD.gif
27	https://cdn.discordapp.com/attachments/332853782247374848/491579827627884545/YPYFKoD.gif
28	https://cdn.discordapp.com/attachments/332853782247374848/491579914043129857/4qZi6qx.gif
29	https://cdn.discordapp.com/attachments/332853782247374848/491580773468471328/orWUzof.gif
30	https://cdn.discordapp.com/attachments/332853782247374848/491581063467106305/YHs5VYu.gif
31	https://cdn.discordapp.com/attachments/332853782247374848/491581141548269591/fM1SMua.gif
32	https://cdn.discordapp.com/attachments/332853782247374848/491581240768725012/yV9SsJs.gif
33	https://cdn.discordapp.com/attachments/332853782247374848/491581329683775519/aoPO5LzVm_480wa_v1.gif
34	https://cdn.discordapp.com/attachments/332853782247374848/491581472939966464/YRjdCt1.gif
35	https://cdn.discordapp.com/attachments/332853782247374848/491581556423655435/Stvig5V.gif
36	https://cdn.discordapp.com/attachments/332853782247374848/491581676778946560/bGc5Xv4.gif
37	https://cdn.discordapp.com/attachments/332853782247374848/491581780134985759/Cs7ZYZ3.gif
38	https://cdn.discordapp.com/attachments/332853782247374848/491581871688384522/RiVwiu0.gif
39	https://cdn.discordapp.com/attachments/332853782247374848/491581952739246090/X1nxmQA.gif
40	https://cdn.discordapp.com/attachments/332853782247374848/491582062982332427/DecisiveVioletBass-max-1mb.gif
41	https://cdn.discordapp.com/attachments/332853782247374848/491582147312877589/9fbd05308735d74b014a99fb748fc0aefe740ca0_hq.gif
42	https://cdn.discordapp.com/attachments/332853782247374848/491582210068054027/46dc5b62894582ecef74a63bd38978765ea988d4_hq.gif
43	https://cdn.discordapp.com/attachments/332853782247374848/494412844142690324/db7899bb.gif
44	https://cdn.discordapp.com/attachments/332853782247374848/491582363990622229/Head_3ed2e5_6102763.gif
45	https://cdn.discordapp.com/attachments/332853782247374848/491582424401313802/original.gif
46	https://cdn.discordapp.com/attachments/332853782247374848/491582522455752704/pat_2.gif
47	https://cdn.discordapp.com/attachments/332853782247374848/491582584631984129/pat.gif
48	https://cdn.discordapp.com/attachments/332853782247374848/491582647643144193/tenor.gif
49	https://cdn.discordapp.com/attachments/332853782247374848/491582762139254814/tumblr_nxjapoyGms1u86t2qo1_540.gif
50	https://cdn.discordapp.com/attachments/332853782247374848/491582826404380672/5d205178900b119f4705dc6122b63aaf7bec668b_hq.gif
51	https://cdn.discordapp.com/attachments/332853782247374848/491582884981768202/tumblr_n8htfpOkq51sg0ytoo1_500.gif
52	https://cdn.discordapp.com/attachments/332853782247374848/491588175236694016/13807874.gif
53	https://cdn.discordapp.com/attachments/332853782247374848/491583153031610379/sLwoifL.gif
54	https://cdn.discordapp.com/attachments/332853782247374848/491583211340562432/01.gif
55	https://cdn.discordapp.com/attachments/332853782247374848/491583281569988638/0znUWqT.gif
56	https://cdn.discordapp.com/attachments/332853782247374848/494423586178859018/9187590619_3cf831b4fa_o.gif
57	https://cdn.discordapp.com/attachments/332853782247374848/494423815598637056/source.gif
58	https://cdn.discordapp.com/attachments/332853782247374848/494424043022319616/tumblr_p14hcsxPsb1tm1dgio1_500.gif
59	https://cdn.discordapp.com/attachments/332853782247374848/494515979087249408/tumblr_ok1oplyzSF1r0tp5lo1_500.gif
60	https://cdn.discordapp.com/attachments/332853782247374848/494524834823274507/LUypjw3.gif
61	https://cdn.discordapp.com/attachments/332853782247374848/494525001941254156/tenor_2.gif
62	https://cdn.discordapp.com/attachments/332853782247374848/494525121084522508/Pat_pat.gif
63	https://cdn.discordapp.com/attachments/332853782247374848/494525252693393430/6mSpKwd.gif
64	https://cdn.discordapp.com/attachments/332853782247374848/494525535452659737/NaughtySpottedAsiantrumpetfish-size_restricted.gif
65	https://cdn.discordapp.com/attachments/332853782247374848/494525746304253964/a1n5V90Eo_480wa_v1.gif
66	https://cdn.discordapp.com/attachments/332853782247374848/494525860410425345/39c0e3b16389e6a38f30b17e1525348f26623a35_hq.gif
67	https://cdn.discordapp.com/attachments/332853782247374848/494526018351136778/npvxionafps01.gif
68	https://cdn.discordapp.com/attachments/332853782247374848/494526203982512128/W1a-Jc991lCLrDuURME2NSGMtMfnsLCfEjENQWXRVqBBRc-QhI5G-RUHvxIooSsbbtq-8ZhA1G2PTK3KcsHe-4DNu4NXLeiHxE7g.gif
69	https://cdn.discordapp.com/attachments/332853782247374848/494526397298114600/1520044313285.gif
70	https://cdn.discordapp.com/attachments/332853782247374848/494543479641210910/3f5215afb8a4099df879443ae1154746.gif
71	https://cdn.discordapp.com/attachments/332853782247374848/627932886493823026/tenor.gif
72	https://cdn.discordapp.com/attachments/332853782247374848/688722645553905684/c234cdcb3af7bed21ccbba2293470b8c.gif
\.


--
-- Data for Name: permissions; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.permissions (id, permission_name, permission_full_name) FROM stdin;
1	admin	Administrator
2	audit	View Audit Logs
3	manage_server	Manage Server
4	manage_roles	Manage Roles
5	manage_channels	Manage Channels
6	kick	Kick Members
7	ban	Ban Members
8	invite	Create Instant Invite
9	nickname	Change Nickname
10	nicknames	Manage Nicknames
11	emojis	Manage Emojis
12	webhooks	Manage Webhooks
13	read	Read Text Channels & See Voice Channels
14	tts	Send TTS Messages
15	embed	Embed Links
16	history	Read History
17	external_emojis	Use External Emojis
18	send_messages	Send Messages
19	manage_messages	Manage Messages
20	files	Attach Files
21	mention_everyone	Mention Everyone
22	reactions	Add Reactions
23	connect	Connect
24	mute	Mute Members
25	move	Move Members
26	speak	Speak
27	deafen	Deafen Members
28	voice_activity	Use Voice Activity
29	priority_speaker	Priority Speaker
30	slash_commands	Use Slash Commands
\.


--
-- Data for Name: poke; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.poke (gif_id, link) FROM stdin;
1	https://cdn.discordapp.com/attachments/332853782247374848/492318257286742016/vZcdVHx.gif
2	https://cdn.discordapp.com/attachments/332853782247374848/492318356335099904/hnCTFIr.gif
3	https://cdn.discordapp.com/attachments/332853782247374848/492318451700858890/syKOTBE.gif
4	https://cdn.discordapp.com/attachments/332853782247374848/492318530054651904/HmyPV0b.gif
5	https://cdn.discordapp.com/attachments/332853782247374848/492318610333630464/kn5MjjT.gif
6	https://cdn.discordapp.com/attachments/332853782247374848/492318685088972800/uGvCEfS.gif
7	https://cdn.discordapp.com/attachments/332853782247374848/492318799433957386/XP2XGof.gif
8	https://cdn.discordapp.com/attachments/332853782247374848/492318889804300289/XL9kQDO.gif
9	https://cdn.discordapp.com/attachments/332853782247374848/492318963477512212/6U67gno.gif
10	https://cdn.discordapp.com/attachments/332853782247374848/492319068326592532/894e5c95715c7963cc884ca148ba110f32a4f60a_hq.gif
11	https://cdn.discordapp.com/attachments/332853782247374848/492319139113861141/13854_1235188662.gif
12	https://cdn.discordapp.com/attachments/332853782247374848/492319235171811348/5823702a00bdcb5f67f54b2a99dfc84a9c2cecc4_hq.gif
13	https://cdn.discordapp.com/attachments/332853782247374848/492319316092649482/ab2fc0f1d54a72f163de9373f2f910457e854d10_hq.gif
14	https://cdn.discordapp.com/attachments/332853782247374848/492319379522977808/anime-poke-gif-4.gif
15	https://cdn.discordapp.com/attachments/332853782247374848/492319503502540800/ConventionalIlliterateFattaileddunnart-small.gif
16	https://cdn.discordapp.com/attachments/332853782247374848/492319653822070795/daea253761b61c887a77dac24d6853d8a922cb09_hq.gif
17	https://cdn.discordapp.com/attachments/332853782247374848/492319720889122836/EnlightenedInferiorAfricanaugurbuzzard-max-1mb.gif
18	https://cdn.discordapp.com/attachments/332853782247374848/492319889625841684/giphy.gif
19	https://cdn.discordapp.com/attachments/332853782247374848/492319978809196544/poke-3-anime-35821879-500-344.gif
20	https://cdn.discordapp.com/attachments/332853782247374848/492320048292167690/tenor.gif
21	https://cdn.discordapp.com/attachments/332853782247374848/492320113731698688/tumblr_mru5odqspb1sayl13o1_500_by_dreameratheart050-d6jf49q.gif
22	https://cdn.discordapp.com/attachments/332853782247374848/492320164705075212/zhDOx0C.gif
23	https://cdn.discordapp.com/attachments/332853782247374848/492320214231547914/CYxJyxQ.gif
24	https://cdn.discordapp.com/attachments/332853782247374848/627931218024857620/poke-H1fMRpYtb.gif
25	https://cdn.discordapp.com/attachments/332853782247374848/627943355636121630/b495fb19f4b9a1b04f48297b676c497b.gif
26	https://cdn.discordapp.com/attachments/332853782247374848/627953477171150849/giphy.gif
27	https://cdn.discordapp.com/attachments/332853782247374848/627953482447585352/b6e.gif
28	https://cdn.discordapp.com/attachments/332853782247374848/627953487573024788/tumblr_ntpfvoxeoz1u03j02o1_500.gif
29	https://cdn.discordapp.com/attachments/332853782247374848/627953494506209305/dalwg6z-03028510-a908-46bd-9175-ba94286d94a7.gif
30	https://cdn.discordapp.com/attachments/332853782247374848/627953508599070794/d8tu2km-9fa0169b-ce82-4e36-a2c8-400cc93e3014.gif
31	https://cdn.discordapp.com/attachments/332853782247374848/627953510817857557/tumblr_pa2vh6pfXJ1slx4imo1_500.gif
32	https://cdn.discordapp.com/attachments/332853782247374848/627953514748051495/giphy_3.gif
33	https://cdn.discordapp.com/attachments/332853782247374848/627953522725486655/tenor.gif
34	https://cdn.discordapp.com/attachments/332853782247374848/635408480328482816/SyQzRaFFb.gif
\.


--
-- Data for Name: pout; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.pout (gif_id, link) FROM stdin;
1	https://cdn.discordapp.com/attachments/332853782247374848/492065608649670677/QWDhnXO.gif
2	https://cdn.discordapp.com/attachments/332853782247374848/492065711573827604/pZyiYW7.gif
3	https://cdn.discordapp.com/attachments/332853782247374848/492065807841361950/IRL5gCu.gif
4	https://cdn.discordapp.com/attachments/332853782247374848/492065916935471105/mdk9hwj.gif
5	https://cdn.discordapp.com/attachments/332853782247374848/492066035390742550/mvKvrMA.gif
6	https://cdn.discordapp.com/attachments/320906001404395520/357846057096577024/tumblr_o2jjytAxIl1tydz8to1_500.gif
7	https://cdn.discordapp.com/attachments/332853782247374848/492066243906371605/sp9apPE.gif
8	https://cdn.discordapp.com/attachments/332853782247374848/492066382888828939/QhceuNM.gif
9	https://cdn.discordapp.com/attachments/332853782247374848/492066769230364682/EEtzN8L.gif
10	https://cdn.discordapp.com/attachments/332853782247374848/492066861966557196/jUcR8BT.gif
11	https://cdn.discordapp.com/attachments/332853782247374848/492066972305981440/WTUGn8D.gif
12	https://cdn.discordapp.com/attachments/332853782247374848/492067279383560202/VevqcMV.gif
13	https://cdn.discordapp.com/attachments/332853782247374848/492067373784760331/FTV3h2x.gif
14	https://cdn.discordapp.com/attachments/332853782247374848/492067443880230912/l5Dtr5S.gif
15	https://cdn.discordapp.com/attachments/332853782247374848/492067531167760404/azSk5ba.gif
16	https://cdn.discordapp.com/attachments/332853782247374848/492067619466248193/0sEx9Vr.gif
17	https://cdn.discordapp.com/attachments/332853782247374848/492067733635203085/A3vDoIJ.gif
18	https://cdn.discordapp.com/attachments/320906001404395520/357846120061206528/GDeyZDA.gif
19	https://cdn.discordapp.com/attachments/332853782247374848/492067830058188801/EFov4d2.gif
20	https://cdn.discordapp.com/attachments/332853782247374848/492067937927036950/pYUAETI.gif
21	https://cdn.discordapp.com/attachments/332853782247374848/492068022194798602/rQjd3H0.gif
22	https://cdn.discordapp.com/attachments/332853782247374848/492068126809391104/9IgAVLT.gif
23	https://cdn.discordapp.com/attachments/332853782247374848/492068427478073374/9FPrEze.gif
24	https://cdn.discordapp.com/attachments/332853782247374848/492068532666761257/EcJCYDa.gif
25	https://cdn.discordapp.com/attachments/320906001404395520/357846163073794059/dd8c1b1d4ef56c49d4dbfce0ccef1b7d.gif
26	https://cdn.discordapp.com/attachments/320906001404395520/357846264714493962/tenor.gif
27	https://cdn.discordapp.com/attachments/320906001404395520/357846327645700106/RemarkableEvergreenBordercollie-size_restricted.gif
28	https://cdn.discordapp.com/attachments/320906001404395520/357846489847955466/ock7.gif
29	https://cdn.discordapp.com/attachments/320906001404395520/357846767636578314/LT0Al64.gif
30	https://cdn.discordapp.com/attachments/320906001404395520/357846809294536714/tumblr_mynfp1dkCn1rbnx7io1_250.gif
31	https://cdn.discordapp.com/attachments/320906001404395520/357846934930587648/HTTP3BhMS5uYXJ2aWkuY29tLzU5MzkvMjI1MWEzZTFmZWVhYmFjN2ExYzFiMjU0ZTc1YjRiZDczYWQ3ZTU0NF9ocS5naWYlog.gif
32	https://cdn.discordapp.com/attachments/332853782247374848/492068772706910209/00Uhf6M.gif
33	https://cdn.discordapp.com/attachments/320906001404395520/357847031898963978/tenor_1.gif
34	https://cdn.discordapp.com/attachments/320906001404395520/357847079571423234/tumblr_npfv0eYXEr1tk91v5o1_500.gif
35	https://cdn.discordapp.com/attachments/332853782247374848/492068878155776042/0b2558f79b01cef87bfc.gif
36	https://cdn.discordapp.com/attachments/332853782247374848/492068976143237120/8kepkWf.gif
37	https://cdn.discordapp.com/attachments/332853782247374848/492069265718116352/AmpleColorlessCommongonolek-small.gif
38	https://cdn.discordapp.com/attachments/332853782247374848/492069116790702090/b585aea3005925796e3e14f3c06ff47aceb489e8_hq.gif
39	https://cdn.discordapp.com/attachments/332853782247374848/492069381572919296/f68223e75764ccd81c56b2d291d7a9c1b04da0c4_hq.gif
40	https://cdn.discordapp.com/attachments/332853782247374848/492069466117767183/imas5.gif
41	https://cdn.discordapp.com/attachments/332853782247374848/492069631377539092/kabaneri4.gif
42	https://cdn.discordapp.com/attachments/332853782247374848/492069711396339722/MpJjM.gif
43	https://cdn.discordapp.com/attachments/332853782247374848/492069834558013442/Omake_Gif_Anime_-_Love_Live_Sunshine_-_Episode_5_-_Riko_Pout.gif
44	https://cdn.discordapp.com/attachments/332853782247374848/492069910462070786/original.gif
45	https://cdn.discordapp.com/attachments/332853782247374848/492070011188281344/tenor1.gif
46	https://cdn.discordapp.com/attachments/332853782247374848/492070100686602250/tenor.gif
47	https://cdn.discordapp.com/attachments/332853782247374848/634134913238564865/tenor2.gif
48	https://cdn.discordapp.com/attachments/332853782247374848/492070316831539200/tumblr_n7fq48UaEs1so052bo1_500.gif
49	https://cdn.discordapp.com/attachments/332853782247374848/492070384577937408/tumblr_nm8lmylQTk1qgip29o1_400.gif
50	https://cdn.discordapp.com/attachments/332853782247374848/492070469713788948/tumblr_om0yvjpkt91v90u75o1_500.gif
51	https://cdn.discordapp.com/attachments/332853782247374848/492070558767382538/tumblr_n6hogfmVZu1r0hv8uo1_5001.gif
52	https://cdn.discordapp.com/attachments/332853782247374848/495204610097545216/original.gif
53	https://cdn.discordapp.com/attachments/332853782247374848/627930866269814784/1520115150_tumblr_oi0b0aDn481twgfw0o1_500.gif
54	https://cdn.discordapp.com/attachments/332853782247374848/635272232523923456/B1iWcv_LG.gif
55	https://cdn.discordapp.com/attachments/332853782247374848/635272477018161174/B1kzWjnAZ.gif
56	https://cdn.discordapp.com/attachments/332853782247374848/635279337511190548/ByEXqvOUM.gif
57	https://cdn.discordapp.com/attachments/332853782247374848/635396069093801984/HkIclytPW.gif
58	https://cdn.discordapp.com/attachments/332853782247374848/635399085414940673/r1PiHy3cM.gif
59	https://cdn.discordapp.com/attachments/332853782247374848/635400493689995294/rJxZ3l1YvZ.gif
60	https://cdn.discordapp.com/attachments/332853782247374848/635402210015969290/S1iol1YwW.gif
61	https://cdn.discordapp.com/attachments/332853782247374848/635402411271258142/S1vFlkYwW.gif
62	https://cdn.discordapp.com/attachments/332853782247374848/635402692684152832/S1Vpeytwb.gif
63	https://cdn.discordapp.com/attachments/332853782247374848/635407060925939722/SJLKgJFPb.gif
64	https://cdn.discordapp.com/attachments/332853782247374848/635407737500467231/Sk7CeJtwZ.gif
65	https://cdn.discordapp.com/attachments/332853782247374848/635408171665719310/SkRUqPuUf.gif
\.


--
-- Data for Name: scared; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.scared (gif_id, link) FROM stdin;
1	https://cdn.discordapp.com/attachments/332853782247374848/688721499141570580/8y0I.gif
2	https://cdn.discordapp.com/attachments/332853782247374848/688721600899842314/42a8c057ce1a780f170823020cea375b3323f4d4_hq.gif
3	https://cdn.discordapp.com/attachments/332853782247374848/688722054530465793/987.gif
4	https://cdn.discordapp.com/attachments/332853782247374848/688722211758014507/1563907368_MildDifferentDipper-size_restricted.gif
5	https://cdn.discordapp.com/attachments/332853782247374848/688722304506527822/a8b56d8af45b07d1fdbf2257bc1b31611d7daf1c_hq.gif
6	https://cdn.discordapp.com/attachments/332853782247374848/688722485105131609/anime-scared-gif.gif
7	https://cdn.discordapp.com/attachments/332853782247374848/688722910310957056/d6fdb7db1e65f336-yuri-kuma-arashi-anime-girl-gif-wifflegif.gif
8	https://cdn.discordapp.com/attachments/332853782247374848/688723148635635739/original.gif
9	https://cdn.discordapp.com/attachments/332853782247374848/688723711788056592/unnamed.gif
10	https://cdn.discordapp.com/attachments/332853782247374848/688743290300137566/tenor_6.gif
\.


--
-- Data for Name: scold; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.scold (gif_id, link) FROM stdin;
1	https://cdn.discordapp.com/attachments/332853782247374848/351506529792294943/aya-scolding-yoko-again.gif
2	https://cdn.discordapp.com/attachments/320906001404395520/354672454872072192/6c801fb942fffaa4733234031bf220c3d04001b8_hq.gif
3	https://cdn.discordapp.com/attachments/320906001404395520/354672481145192448/988f028446fd0e545d8f3d4f7fa5c7a5eae548f5_hq.gif
4	https://cdn.discordapp.com/attachments/332853782247374848/492266455568744448/aya-scolding-yoko.gif
5	https://cdn.discordapp.com/attachments/320906001404395520/354672545888206848/-scolding-nagging-japanese.gif
6	https://cdn.discordapp.com/attachments/332853782247374848/492264028857565185/tumblr_miw08thd6z1s0am14o1_500.gif
7	https://cdn.discordapp.com/attachments/332853782247374848/492264089108611072/tumblr_mpfbdohjLe1sug3zdo1_500.gif
8	https://cdn.discordapp.com/attachments/332853782247374848/492264215805952013/8sqEsVE.gif
9	https://cdn.discordapp.com/attachments/332853782247374848/491874355777765376/rz9rygc.gif
10	https://cdn.discordapp.com/attachments/332853782247374848/492264830347247618/3ae482635d88a11ebcd7bea4b9a5faf81.gif
\.


--
-- Data for Name: shrug; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.shrug (gif_id, link) FROM stdin;
1	https://cdn.discordapp.com/attachments/332853782247374848/350786768653778954/1371b2bbfacc9a0f46987f5ec46b2e7f.gif
2	https://cdn.discordapp.com/attachments/332853782247374848/350786794926768128/bE6l3QC.gif
3	https://cdn.discordapp.com/attachments/332853782247374848/350786888258420736/Renge_Shrug.gif
4	https://cdn.discordapp.com/attachments/332853782247374848/350787014003785738/tenor.gif
5	https://cdn.discordapp.com/attachments/332853782247374848/350787061470724097/tumblr_n0jk23v8xr1rjf4f5o1_500.gif
6	https://cdn.discordapp.com/attachments/332853782247374848/492336549065654272/tenor.gif
7	https://cdn.discordapp.com/attachments/332853782247374848/492336628329742337/tumblr_m26jlrE0Rs1qb24r6o1_500.gif
\.


--
-- Data for Name: slap; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.slap (gif_id, link) FROM stdin;
1	https://cdn.discordapp.com/attachments/332853782247374848/492072728669454338/j94Pt33.gif
2	https://cdn.discordapp.com/attachments/332853782247374848/492072840783462420/TgvWIG2.gif
3	https://cdn.discordapp.com/attachments/332853782247374848/492072990893277199/T9mJkxo.gif
4	https://cdn.discordapp.com/attachments/332853782247374848/492073177711771658/NyOKD4x.gif
5	https://cdn.discordapp.com/attachments/332853782247374848/492073551529246720/yUdj3VT.gif
6	https://cdn.discordapp.com/attachments/332853782247374848/492073627596881930/NIs05qa.gif
7	https://cdn.discordapp.com/attachments/332853782247374848/492073713198432316/z5kOQrF.gif
8	https://cdn.discordapp.com/attachments/332853782247374848/492073797470388244/sSO0MaV.gif
9	https://cdn.discordapp.com/attachments/332853782247374848/492074020288593920/m4JuLWM.gif
10	https://cdn.discordapp.com/attachments/332853782247374848/492074173083156481/DQh39Ec.gif
11	https://cdn.discordapp.com/attachments/332853782247374848/492074247427194901/JEd1K04.gif
12	https://cdn.discordapp.com/attachments/332853782247374848/492074320697491474/hyygFya.gif
13	https://cdn.discordapp.com/attachments/332853782247374848/492074415278784512/d47f8d12a2548ff4b3b264ed67563c6d4ae25ea5_hq1.gif
14	https://cdn.discordapp.com/attachments/332853782247374848/492074516780941322/Cvc7tNF.gif
15	https://cdn.discordapp.com/attachments/332853782247374848/492074624318701577/giphy2.gif
16	https://cdn.discordapp.com/attachments/320906001404395520/357836543827902465/2a1.gif
17	https://cdn.discordapp.com/attachments/320906001404395520/357836580570005504/9af72c9bbf1004936619ae0fe132a362.gif
18	https://cdn.discordapp.com/attachments/332853782247374848/493521274791002113/sXZRqzR.gif
19	https://cdn.discordapp.com/attachments/320906001404395520/357836772895358986/240.gif
20	https://cdn.discordapp.com/attachments/320906001404395520/357836818160549888/6557f684d6ffcd3cd4558f695c6d8956.gif
21	https://cdn.discordapp.com/attachments/332853782247374848/492075158635413514/ClutteredCleanDore-size_restricted1.gif
22	https://cdn.discordapp.com/attachments/320906001404395520/357836891938095104/anime-slap-gif-9.gif
23	https://cdn.discordapp.com/attachments/320906001404395520/357836935835942914/anime-slap-gif-20.gif
24	https://cdn.discordapp.com/attachments/320906001404395520/357837032690548736/dzefPFL.gif
25	https://cdn.discordapp.com/attachments/332853782247374848/492076090345652234/sukisho__wake_up_slap__by_mangamad86-dazyxbh1.gif
26	https://cdn.discordapp.com/attachments/320906001404395520/357837100306923550/giphy_1.gif
27	https://cdn.discordapp.com/attachments/320906001404395520/357837129537028096/giphy_2.gif
28	https://cdn.discordapp.com/attachments/320906001404395520/357837153356611584/giphy_3.gif
29	https://cdn.discordapp.com/attachments/320906001404395520/357837263175942144/giphy_4.gif
30	https://cdn.discordapp.com/attachments/332853782247374848/493526178791948289/46b0a213e3ea1a9c6fcc060af6843a0e.gif
31	https://cdn.discordapp.com/attachments/320906001404395520/357837324291145741/giphy.gif
32	https://cdn.discordapp.com/attachments/332853782247374848/492076791578755073/0cSbtnE1.gif
33	https://cdn.discordapp.com/attachments/320906001404395520/357837580945063936/tenor_1.gif
34	https://cdn.discordapp.com/attachments/320906001404395520/357837603485253633/tenor_2.gif
35	https://cdn.discordapp.com/attachments/320906001404395520/357837654043262976/tenor_3.gif
36	https://cdn.discordapp.com/attachments/320906001404395520/357837713963220992/tenor.gif
37	https://cdn.discordapp.com/attachments/320906001404395520/357837742333362177/tumblr_m1nsxc3jUu1qdjfd8o1_400.gif
38	https://cdn.discordapp.com/attachments/320906001404395520/357837763183247360/tumblr_m4jl21EyuP1qjricxo1_500.gif
39	https://cdn.discordapp.com/attachments/320906001404395520/357837815708516352/tumblr_mp7xsv9nH81qbvovho1_500.gif
40	https://cdn.discordapp.com/attachments/320906001404395520/357837841868390400/tumblr_n8m1dib4eP1tet3lvo1_500.gif
41	https://cdn.discordapp.com/attachments/332853782247374848/492076909719715851/DeliriousVagueElkhound-max-1mb1.gif
42	https://cdn.discordapp.com/attachments/332853782247374848/492077354391175249/Timetoslap_26c141_48156112.gif
43	https://cdn.discordapp.com/attachments/332853782247374848/492077562453950485/7251f1d53f591fbc922226a5724e97740b20ae86_hq.gif
44	https://cdn.discordapp.com/attachments/332853782247374848/492077641361522698/9211ed04d027b5aaa557708b81609eb5.jpg.gif
45	https://cdn.discordapp.com/attachments/332853782247374848/492077709078560781/ac4ddf8d7788c048ba7ad202215c36de4216c69c_hq.gif
46	https://cdn.discordapp.com/attachments/332853782247374848/492077833980477492/d8b.gif
47	https://cdn.discordapp.com/attachments/332853782247374848/492078752273006605/3251.gif
48	https://cdn.discordapp.com/attachments/332853782247374848/492078843692187648/pkBvc42.gif
49	https://cdn.discordapp.com/attachments/332853782247374848/492078903649763328/tenor2.gif
50	https://cdn.discordapp.com/attachments/332853782247374848/492079051310104591/tenor3.gif
51	https://cdn.discordapp.com/attachments/332853782247374848/492078993106010113/tenor.gif
52	https://cdn.discordapp.com/attachments/332853782247374848/492079105987313674/tumblr_mrwoff8Vk01r922azo1_400.gif
\.


--
-- Data for Name: sleep; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.sleep (gif_id, link) FROM stdin;
1	https://cdn.discordapp.com/attachments/332853782247374848/350806008991449098/giphy.gif
2	https://cdn.discordapp.com/attachments/332853782247374848/350806040952176642/giphy_1.gif
3	https://cdn.discordapp.com/attachments/332853782247374848/350806215967768577/tumblr_inline_n97cqioJX61r023wy.gif
4	https://cdn.discordapp.com/attachments/332853782247374848/350806366572642304/tenor.gif
5	https://cdn.discordapp.com/attachments/332853782247374848/350806439767441408/26AHrHYqHv9rVSXMQ.gif
6	https://cdn.discordapp.com/attachments/332853782247374848/350806500714872852/giphy_2.gif
7	https://cdn.discordapp.com/attachments/332853782247374848/350806520985944074/c0c80ca01e76ce8c65943629556b9106171e224b_hq.gif
8	https://cdn.discordapp.com/attachments/332853782247374848/350806635498962945/giphy_3.gif
9	https://cdn.discordapp.com/attachments/332853782247374848/350806696568029204/original.gif
10	https://cdn.discordapp.com/attachments/332853782247374848/350806738330451968/l3V0eOncNkwzIvbTq.gif
11	https://cdn.discordapp.com/attachments/332853782247374848/350806790847463456/tenor_1.gif
12	https://cdn.discordapp.com/attachments/332853782247374848/350806825056206859/giphy_4.gif
13	https://cdn.discordapp.com/attachments/332853782247374848/350806879779160065/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f776174747061642d6d656469612d736572766963652f53746f.gif
14	https://cdn.discordapp.com/attachments/332853782247374848/350806917716770817/giphy_5.gif
15	https://cdn.discordapp.com/attachments/332853782247374848/350807013187649546/tenor_2.gif
16	https://cdn.discordapp.com/attachments/332853782247374848/350807036503785472/tumblr_mgserxYGuT1rksv4mo1_500.gif
17	https://cdn.discordapp.com/attachments/332853782247374848/350807085568753674/tenor_3.gif
18	https://cdn.discordapp.com/attachments/332853782247374848/350807115033477120/180822015004201.gif
19	https://cdn.discordapp.com/attachments/332853782247374848/350807139306045440/tenor_4.gif
20	https://cdn.discordapp.com/attachments/332853782247374848/350807206154862602/tumblr_inline_o354cwxLdL1tjufl6_500.gif
21	https://cdn.discordapp.com/attachments/332853782247374848/350807587999973377/tumblr_ncotk1TuRO1rr01kwo6_500.gif
22	https://cdn.discordapp.com/attachments/332853782247374848/350807629398016010/f7d4883e6aa45c68022eb9949cd2d5f1aa403df3_hq.gif
23	https://cdn.discordapp.com/attachments/332853782247374848/350807687241662464/7c715b28a5deb129bda8a4e8f155b392.gif
24	https://cdn.discordapp.com/attachments/332853782247374848/350807700839596035/tumblr_o9xnh81oWM1tydz8to1_500.gif
25	https://cdn.discordapp.com/attachments/332853782247374848/350807718971310080/tumblr_nnjktnSc1A1uuqo27o1_1280.gif
26	https://cdn.discordapp.com/attachments/332853782247374848/350807804262481941/tumblr_inline_n68w60Pqb51sdn5v7.gif
27	https://cdn.discordapp.com/attachments/332853782247374848/350807871170281472/giphy_6.gif
28	https://cdn.discordapp.com/attachments/332853782247374848/350807915046764554/41274-Anime-Sleep-Gif-By-Kittingirlpretty.gif
29	https://cdn.discordapp.com/attachments/332853782247374848/350807963168014336/large.gif
30	https://cdn.discordapp.com/attachments/332853782247374848/350808040699854848/KCAHjYw.gif
31	https://cdn.discordapp.com/attachments/332853782247374848/350808075852054529/tenor_5.gif
32	https://cdn.discordapp.com/attachments/332853782247374848/350808123121860608/9f058cfd2f679e5ab3f91b9f234dc31e.gif
33	https://cdn.discordapp.com/attachments/332853782247374848/350808156479291413/large_1.gif
34	https://cdn.discordapp.com/attachments/332853782247374848/350808191631753228/Kazuho_sleeping.gif
35	https://cdn.discordapp.com/attachments/332853782247374848/350808235374018560/tenor_6.gif
36	https://cdn.discordapp.com/attachments/332853782247374848/350808296485027841/tenor_7.gif
37	https://cdn.discordapp.com/attachments/332853782247374848/350808348922478592/1b236041e5b97fe0b99297c5942337dd.gif
38	https://cdn.discordapp.com/attachments/332853782247374848/492330318573993994/8e036c135074041358dca09ea4519f8d5c567d08_hq.gif
39	https://cdn.discordapp.com/attachments/332853782247374848/492330371900375041/sleeping.gif
40	https://cdn.discordapp.com/attachments/332853782247374848/492330440200290304/5ed49328e73cceb7ce2f8d71809c55de870e982c_hq.gif
41	https://cdn.discordapp.com/attachments/332853782247374848/492331948417744896/KobayashisanChinoMaidDragon-Episode9-Omake-5.gif
42	https://cdn.discordapp.com/attachments/332853782247374848/492332140147638282/giphy_1.gif
43	https://cdn.discordapp.com/attachments/332853782247374848/492330649475088387/d1cde3036ac95ba54b240e2fa1d25351.jpg.gif
44	https://cdn.discordapp.com/attachments/332853782247374848/492330703422357505/giphy1.gif
45	https://cdn.discordapp.com/attachments/332853782247374848/492330758145310720/giphy.gif
46	https://cdn.discordapp.com/attachments/332853782247374848/492330801414012938/QuarrelsomeInsistentGroundbeetle.gif
47	https://i.kym-cdn.com/photos/images/newsfeed/000/988/701/941.gif
48	https://cdn.discordapp.com/attachments/332853782247374848/492331080305606676/tenor1.gif
49	https://cdn.discordapp.com/attachments/332853782247374848/492331146043195413/tenor.gif
50	https://cdn.discordapp.com/attachments/332853782247374848/492331313244930051/tumblr_os2qsvffPq1qzxv73o1_500.gif
51	https://cdn.discordapp.com/attachments/332853782247374848/492331418890797066/qdEya.gif
52	https://cdn.discordapp.com/attachments/332853782247374848/492331462616678400/10F.gif
53	https://cdn.discordapp.com/attachments/332853782247374848/627942805586706443/3863d96ad3529fdaee7e9a28fb4370df242ca530_hq.gif
\.


--
-- Data for Name: smile; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.smile (gif_id, link) FROM stdin;
1	https://cdn.discordapp.com/attachments/332853782247374848/494117506487681024/KgkUwX7.gif
2	https://cdn.discordapp.com/attachments/332853782247374848/494117934558347264/riypblP.gif
3	https://cdn.discordapp.com/attachments/332853782247374848/494118050405023766/byqioBV.gif
4	https://cdn.discordapp.com/attachments/332853782247374848/494118288872308736/O0URtru.gif
5	https://cdn.discordapp.com/attachments/332853782247374848/494120169644490752/happy31.gif
6	https://cdn.discordapp.com/attachments/332853782247374848/494120274275467276/lZEboKR.gif
7	https://cdn.discordapp.com/attachments/332853782247374848/494120339970981888/ETMCnBy.gif
8	https://cdn.discordapp.com/attachments/332853782247374848/494120385168670720/happy11.gif
9	https://cdn.discordapp.com/attachments/332853782247374848/494120439002562561/happy21.gif
10	https://cdn.discordapp.com/attachments/332853782247374848/494120492408504320/happy41.gif
11	https://cdn.discordapp.com/attachments/332853782247374848/494120538705494016/ccd350e683d0ecbaeff4f5744238d3abf02de577_hq1.gif
12	https://cdn.discordapp.com/attachments/332853782247374848/494120587661148191/aya-smiles.gif
13	https://cdn.discordapp.com/attachments/332853782247374848/494120742506594304/true7.gif
14	https://cdn.discordapp.com/attachments/332853782247374848/494120833619460111/tumblr_n0kynl2ysl1s0oixxo1_500.gif
15	https://cdn.discordapp.com/attachments/332853782247374848/494120910698184724/giphy_2.gif
16	https://cdn.discordapp.com/attachments/332853782247374848/494120961025638400/giphy_1.gif
17	https://cdn.discordapp.com/attachments/332853782247374848/494121063807189005/tumblr_o593girUD71tjzuz3o1_500.gif
18	https://cdn.discordapp.com/attachments/332853782247374848/494121108241383424/921baf5e9ba06fc332c9b87faae526c2.gif
19	https://cdn.discordapp.com/attachments/332853782247374848/494121183172886528/anime_gif37.gif
20	https://cdn.discordapp.com/attachments/332853782247374848/494121269936259072/b79wz8N.gif
21	https://cdn.discordapp.com/attachments/332853782247374848/494121350508707861/Chiyo-Sakura.gif
22	https://cdn.discordapp.com/attachments/332853782247374848/494121493836464151/giphy2.gif
23	https://cdn.discordapp.com/attachments/332853782247374848/494121564766470144/giphy3.gif
24	https://cdn.discordapp.com/attachments/332853782247374848/494121633666170906/giphy_4.gif
25	https://cdn.discordapp.com/attachments/332853782247374848/494121681724375042/InsistentUnnaturalEmu-size_restricted.gif
26	https://cdn.discordapp.com/attachments/332853782247374848/494121735780827162/OblongAdoredGoshawk-size_restricted.gif
27	https://cdn.discordapp.com/attachments/332853782247374848/494121785378471936/original_1.gif
28	https://cdn.discordapp.com/attachments/332853782247374848/494121857268580362/original.gif
29	https://cdn.discordapp.com/attachments/332853782247374848/494121903380889610/tenor.gif
30	https://cdn.discordapp.com/attachments/332853782247374848/494122656074039307/tumblr_n0w3mweVoG1siudfjo3_500.gif
31	https://cdn.discordapp.com/attachments/332853782247374848/494122712554274845/tumblr_static_tumblr_static_7wficgfmy1gcwwwkwwcg8ocgw_640.gif
32	https://cdn.discordapp.com/attachments/332853782247374848/494122756846256132/Y5o48VW.gif
33	https://cdn.discordapp.com/attachments/332853782247374848/494414521725747210/original.gif
34	https://cdn.discordapp.com/attachments/332853782247374848/494525860410425345/39c0e3b16389e6a38f30b17e1525348f26623a35_hq.gif
35	https://cdn.discordapp.com/attachments/332853782247374848/495203375961473024/tenor_1.gif
36	https://cdn.discordapp.com/attachments/332853782247374848/495534882378874893/16_-_1.gif
37	https://cdn.discordapp.com/attachments/332853782247374848/495537912805588993/giphy.gif
38	https://cdn.discordapp.com/attachments/332853782247374848/495538668207996928/giphy.gif
39	https://cdn.discordapp.com/attachments/332853782247374848/495538834621071380/A6zP.gif
40	https://cdn.discordapp.com/attachments/332853782247374848/495709327487795201/tumblr_mrpneoDnOp1scihu7o2_500.gif
41	https://cdn.discordapp.com/attachments/332853782247374848/495709341979115521/giphy.gif
42	https://cdn.discordapp.com/attachments/332853782247374848/495709426708119562/original.gif
43	https://cdn.discordapp.com/attachments/332853782247374848/495709448480751626/tenor_2.gif
44	https://cdn.discordapp.com/attachments/332853782247374848/627932258015248409/tumblr_ot1at4m6g11wpjmk1o1_500.gif
45	https://cdn.discordapp.com/attachments/332853782247374848/627933454687797258/tenor_1.gif
46	https://cdn.discordapp.com/attachments/332853782247374848/627933463743561728/tenor_2.gif
47	https://cdn.discordapp.com/attachments/332853782247374848/635273228050366465/BJbDVkFwW.gif
48	https://cdn.discordapp.com/attachments/332853782247374848/635274065820778496/BkVH4kKPb.gif
49	https://cdn.discordapp.com/attachments/332853782247374848/635395091946668042/HJ0DEytPZ.gif
50	https://cdn.discordapp.com/attachments/332853782247374848/635397333336588298/HypVV1Kwb.gif
51	https://cdn.discordapp.com/attachments/332853782247374848/635397547145560114/HyRFEytwW.gif
52	https://cdn.discordapp.com/attachments/332853782247374848/635397728184041502/HyT3UkFwb.gif
53	https://cdn.discordapp.com/attachments/332853782247374848/635400326408830996/rJcE4ytDb.gif
54	https://cdn.discordapp.com/attachments/332853782247374848/635400703526961172/rkB4NJtD-.gif
55	https://cdn.discordapp.com/attachments/332853782247374848/635401771853938688/rkTDVJYwW.gif
56	https://cdn.discordapp.com/attachments/332853782247374848/635402983378518017/SJBYN1YwZ.gif
57	https://cdn.discordapp.com/attachments/332853782247374848/635406920093663262/SJE9NJtw-.gif
58	https://cdn.discordapp.com/attachments/332853782247374848/635407203175628804/SJPd4JYPZ.gif
59	https://cdn.discordapp.com/attachments/332853782247374848/635407385439109120/SJq9EJKwZ.gif
60	https://cdn.discordapp.com/attachments/332853782247374848/635407933777379348/SkR3TJFNM.gif
61	https://cdn.discordapp.com/attachments/332853782247374848/688720096528564226/01DCC88A3F08DE996F27CAC6D6335F83F371A81C.gif
\.


--
-- Data for Name: snuggle; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.snuggle (gif_id, link) FROM stdin;
1	https://cdn.discordapp.com/attachments/332853782247374848/494128492330352640/RXVj31.gif
2	https://cdn.discordapp.com/attachments/332853782247374848/494128536248909834/tumblr_inline_n6tjc4NAN61s6lw3t1.gif
3	https://cdn.discordapp.com/attachments/332853782247374848/494128583539818496/snuggle1.gif
4	https://cdn.discordapp.com/attachments/332853782247374848/494128634915848192/true5.gif
5	https://cdn.discordapp.com/attachments/332853782247374848/494128685503479838/tumblr_mkiknpSJxF1rbtx3po1_500.gif
\.


--
-- Data for Name: stare; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.stare (gif_id, link) FROM stdin;
1	https://cdn.discordapp.com/attachments/320906001404395520/354575779893346304/tumblr_nhui46lBOP1rw3w54o1_500.gif
2	https://cdn.discordapp.com/attachments/320906001404395520/354575687312474113/tumblr_mstthdrC3P1styo1qo1_400.gif
3	https://cdn.discordapp.com/attachments/320906001404395520/354575632400646144/tumblr_mejwk5pMlh1ricipbo3_500.gif
4	https://cdn.discordapp.com/attachments/332853782247374848/492087741987684352/07769061cfdb67ff6e20a3a7629b63b7037576f5_hq.gif
5	https://cdn.discordapp.com/attachments/332853782247374848/492099343944515585/original.gif
6	https://cdn.discordapp.com/attachments/332853782247374848/492087671498211329/148oo6p1.gif
7	https://cdn.discordapp.com/attachments/332853782247374848/635273046705307668/BJ88vLvd-.gif
8	https://cdn.discordapp.com/attachments/332853782247374848/635395280380100618/HJxqIyFvZ.gif
9	https://cdn.discordapp.com/attachments/332853782247374848/635395454078550017/Hk22hAo9M.gif
10	https://cdn.discordapp.com/attachments/332853782247374848/635395601940611072/Hk768JtP-.gif
11	https://cdn.discordapp.com/attachments/332853782247374848/635397728184041502/HyT3UkFwb.gif
\.


--
-- Data for Name: teehee; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.teehee (gif_id, link) FROM stdin;
1	https://cdn.discordapp.com/attachments/332853782247374848/492313309098541056/KsxFucM.gif
2	https://cdn.discordapp.com/attachments/332853782247374848/492313818324533259/pYebvkr.gif
3	https://cdn.discordapp.com/attachments/332853782247374848/492313992790933504/u2uJlI1.gif
4	https://cdn.discordapp.com/attachments/332853782247374848/492314073409781760/rJ4HiLc.gif
5	https://cdn.discordapp.com/attachments/332853782247374848/492314147292184596/oDFoNZx.gif
6	https://cdn.discordapp.com/attachments/332853782247374848/492314267664777223/ljFOKsO.gif
7	https://cdn.discordapp.com/attachments/332853782247374848/492314324694597632/YPyHOaU.gif
8	https://cdn.discordapp.com/attachments/332853782247374848/492314409067085834/tPBCGiR.gif
9	https://cdn.discordapp.com/attachments/332853782247374848/492314477505806336/fpDcdRj.gif
10	https://cdn.discordapp.com/attachments/332853782247374848/492314555360346112/NAFTh0w.gif
11	https://cdn.discordapp.com/attachments/332853782247374848/492314633512943667/gQhNak5.gif
12	https://cdn.discordapp.com/attachments/332853782247374848/492314708398047243/Kz67FKX.gif
13	https://cdn.discordapp.com/attachments/332853782247374848/492314781651304469/fDjUcYG.gif
14	https://cdn.discordapp.com/attachments/332853782247374848/492314845077700608/mXCLhyM.gif
15	https://cdn.discordapp.com/attachments/332853782247374848/492314917563662376/7Blx8vW.gif
16	https://cdn.discordapp.com/attachments/332853782247374848/492315030138912779/eadfd546f250b26b62ebe6d62316c22dc235daa0_hq.gif
17	https://cdn.discordapp.com/attachments/332853782247374848/492314974702796800/tenor.gif
18	https://cdn.discordapp.com/attachments/332853782247374848/492315091987988500/tumblr_no2gsnddFk1rw3w54o1_500.gif
19	https://cdn.discordapp.com/attachments/332853782247374848/492315138481848330/tumblr_inline_o2g0852dPv1t6qw6r_500.gif
20	https://cdn.discordapp.com/attachments/332853782247374848/492315187018203136/0c6c7667622495ef9db6781d8520d9787a8c8357_hq.gif
21	https://cdn.discordapp.com/attachments/332853782247374848/492315249672978432/1450560496-1abd6fc81911082af0ea376e5c7617a7.gif
22	https://cdn.discordapp.com/attachments/332853782247374848/492315316307623947/image_2.gif
23	https://cdn.discordapp.com/attachments/332853782247374848/492315532217810954/YhhkBxt.gif
24	https://cdn.discordapp.com/attachments/332853782247374848/492315581622517770/805075ae2a36bc61bba6e5bad5bd7e340c4f2aae_hq1.gif
25	https://cdn.discordapp.com/attachments/332853782247374848/492315631518089216/tumblr_ne0l74ypli1rwcs8fo3_500.gif
26	https://cdn.discordapp.com/attachments/332853782247374848/494424285478256640/fce3664060de42bbaf980a084c50f6d2_th.gif
27	https://cdn.discordapp.com/attachments/332853782247374848/494424554823745536/image0.gif
28	https://cdn.discordapp.com/attachments/332853782247374848/627932742952419344/wink-for-justice.gif
\.


--
-- Data for Name: throw; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.throw (gif_id, link) FROM stdin;
1	https://cdn.discordapp.com/attachments/332853782247374848/492371892527824897/ZWmpfYN.gif
2	https://cdn.discordapp.com/attachments/332853782247374848/492372005534957578/7w8ylLR.gif
3	https://cdn.discordapp.com/attachments/332853782247374848/492372091220525058/UQZELBA.gif
4	https://cdn.discordapp.com/attachments/332853782247374848/492372187450441728/137922-hunter-x-hunter-throwing-pillow1.jpg
5	https://cdn.discordapp.com/attachments/332853782247374848/350662620535193620/1480896476-a7ecd94c164b0576485a3fafb66a90cd.gif
6	https://cdn.discordapp.com/attachments/332853782247374848/350662678987014144/accel-world-book-throw.gif
7	https://cdn.discordapp.com/attachments/332853782247374848/350662757827346432/Anime_cat_throwing_snowball.gif
8	https://cdn.discordapp.com/attachments/332853782247374848/492373225452339201/Eq636FF1.gif
9	https://cdn.discordapp.com/attachments/332853782247374848/492373338505609222/AzumangaDaioh-Snowball1.gif
10	https://cdn.discordapp.com/attachments/332853782247374848/350663081300328448/bdRVr.gif
11	https://cdn.discordapp.com/attachments/332853782247374848/492373862839746560/bff1.gif
12	https://cdn.discordapp.com/attachments/332853782247374848/350663485384032256/giphy_1.gif
13	https://cdn.discordapp.com/attachments/332853782247374848/350663579495825418/giphy_2.gif
14	https://cdn.discordapp.com/attachments/332853782247374848/350663743266488322/giphy_3.gif
15	https://cdn.discordapp.com/attachments/332853782247374848/492374351644065802/df7d993b7bd323b649ad3a64a7410c98f34a35c3_hq1.gif
16	https://cdn.discordapp.com/attachments/332853782247374848/350664308394426368/giphy_5.gif
17	https://cdn.discordapp.com/attachments/332853782247374848/492379447874420746/tenor_2.gif
18	https://cdn.discordapp.com/attachments/332853782247374848/350664370449285131/giphy.gif
19	https://cdn.discordapp.com/attachments/332853782247374848/350664532609466369/popcorn_throw.gif
20	https://cdn.discordapp.com/attachments/332853782247374848/350664572362948608/tenor_1.gif
21	https://cdn.discordapp.com/attachments/332853782247374848/350664615061094400/tenor.gif
22	https://cdn.discordapp.com/attachments/332853782247374848/350664687525953556/tumblr_mc98jsdSn61rbvlxzo1_500.gif
23	https://cdn.discordapp.com/attachments/332853782247374848/350664741162844170/tumblr_mfnxjtp4541s00iyvo1_500.gif
24	https://cdn.discordapp.com/attachments/332853782247374848/350664791716790282/VD5pu.gif
25	https://cdn.discordapp.com/attachments/332853782247374848/492376224115458048/1tHpOZ1.gif
26	https://cdn.discordapp.com/attachments/332853782247374848/492376328537112578/giphy2.gif
27	https://cdn.discordapp.com/attachments/332853782247374848/492376433465884672/5M6Ml.gif
28	https://cdn.discordapp.com/attachments/332853782247374848/492376374724657171/105.gif
29	https://cdn.discordapp.com/attachments/332853782247374848/492376493750616084/500e804cbb75b05d95bc8d4042e3abbdbba627b6_hq.gif
30	https://cdn.discordapp.com/attachments/332853782247374848/492376684880855040/7154c8d3227fa32650b71c181bb911f01426866039_full.gif
31	https://cdn.discordapp.com/attachments/332853782247374848/492376779609210890/Omake_Gif_Anime_-_Love_Live_Sunshine_-_Episode_2_-_Chika_Throws_Lobster_at_Riko1.gif
32	https://cdn.discordapp.com/attachments/332853782247374848/492376878020296704/abc56175242a69280a3df1b29376c78fce60db6e_hq.gif
33	https://cdn.discordapp.com/attachments/332853782247374848/492376949201698855/aefbac75a88ee068a3b599578e200f9020817600_hq.gif
34	https://cdn.discordapp.com/attachments/332853782247374848/492377036082380810/animation-throw-regular.gif
35	https://cdn.discordapp.com/attachments/332853782247374848/492377172510507054/b36.gif
36	https://cdn.discordapp.com/attachments/332853782247374848/515211923978059826/HE650eo.gif
37	https://cdn.discordapp.com/attachments/332853782247374848/492377361224957952/Omake_Gif_Anime_-_Love_Live_Sunshine_-_Episode_13_END_-_Riko_Throws_Water_Bottle.gif
38	https://cdn.discordapp.com/attachments/332853782247374848/492377532440510484/Pillowfightsourcekon_fb1c9f_45637661.gif
39	https://cdn.discordapp.com/attachments/332853782247374848/492377636266573854/pillowthrow_zps127935d9_by_hidoisandesu-d63ttvt1.gif
40	https://cdn.discordapp.com/attachments/332853782247374848/492377701496127499/SandyFinishedHoneycreeper-size_restricted.gif
41	https://cdn.discordapp.com/attachments/332853782247374848/492377876079837194/Snowball_pokemon1.gif
42	https://cdn.discordapp.com/attachments/332853782247374848/492377933214646302/tenor1.gif
43	https://cdn.discordapp.com/attachments/332853782247374848/492378007957405726/tenor.gif
44	https://cdn.discordapp.com/attachments/332853782247374848/492378091289706506/true.gif
45	https://cdn.discordapp.com/attachments/332853782247374848/492380602436157440/954cccce86b7f6f624bfa3286d6c8cd7a555eb93_hq.gif
46	https://cdn.discordapp.com/attachments/332853782247374848/492378384584671242/tumblr_m23fomKEfX1qb8a3ro1_500.gif
47	https://cdn.discordapp.com/attachments/332853782247374848/492378452041793550/true3.gif
48	https://cdn.discordapp.com/attachments/332853782247374848/492378527132549131/tumblr_inline_n99fzkf0DZ1rk6wo11.gif
49	https://cdn.discordapp.com/attachments/332853782247374848/492378604466864138/tumblr_meqqe7hjbz1r922azo1_5001.gif
50	https://cdn.discordapp.com/attachments/332853782247374848/492378693067341844/tumblr_ni8r3iEEWY1tvv82oo1_5001.gif
51	https://cdn.discordapp.com/attachments/332853782247374848/492378744212815892/tumblr_nmbqr3XL1p1tahrlzo1_5001.gif
52	https://cdn.discordapp.com/attachments/332853782247374848/492378811070152704/tumblr_ozuj8hoSBA1tlkklno1_5001.gif
53	https://cdn.discordapp.com/attachments/332853782247374848/495206069379923988/57028.gif
54	https://cdn.discordapp.com/attachments/332853782247374848/515213288972484628/HPdm.gif
\.


--
-- Data for Name: thumbup; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.thumbup (gif_id, link) FROM stdin;
1	https://cdn.discordapp.com/attachments/332853782247374848/492598751622463488/uFHEnAm.gif
2	https://cdn.discordapp.com/attachments/332853782247374848/492598824800485376/SChwPof.gif
3	https://cdn.discordapp.com/attachments/332853782247374848/492598906346012673/kNfT67x.gif
4	https://cdn.discordapp.com/attachments/332853782247374848/492598982422429707/SpUA2fC.gif
5	https://cdn.discordapp.com/attachments/332853782247374848/493530053024546819/sZT8EQE.gif
6	https://cdn.discordapp.com/attachments/332853782247374848/492599402385375251/sZT8EQE.gif
7	https://cdn.discordapp.com/attachments/332853782247374848/493526618363527168/RMONZlA.gif
8	https://cdn.discordapp.com/attachments/332853782247374848/493526704250421259/tenor.gif
9	https://cdn.discordapp.com/attachments/332853782247374848/493526777029853184/fDgPMnx.gif
10	https://cdn.discordapp.com/attachments/332853782247374848/493526849909948446/OGIN2iF.gif
11	https://cdn.discordapp.com/attachments/332853782247374848/493526921620226051/pEyvYNJ.gif
12	https://cdn.discordapp.com/attachments/332853782247374848/493527061206401024/thwgkX8.gif
13	https://cdn.discordapp.com/attachments/332853782247374848/493526989777534976/xJMrTe1.gif
14	https://cdn.discordapp.com/attachments/332853782247374848/493527265112489984/Z8GLyUv.gif
15	https://cdn.discordapp.com/attachments/332853782247374848/493527340123684885/XpCf6a8.gif
16	https://cdn.discordapp.com/attachments/332853782247374848/493527402975068180/63nW9rS.gif
17	https://cdn.discordapp.com/attachments/332853782247374848/493527553009647616/lNLoC4y.gif
18	https://cdn.discordapp.com/attachments/332853782247374848/493527620869292040/6Zg033x.gif
19	https://cdn.discordapp.com/attachments/332853782247374848/493527788473679903/r95cr7A.gif
20	https://cdn.discordapp.com/attachments/332853782247374848/493528012378210348/Te4XcuM.gif
21	https://cdn.discordapp.com/attachments/332853782247374848/493528088802492438/2sbqKgd.gif
22	https://cdn.discordapp.com/attachments/332853782247374848/493528258671804446/Omake_Gif_Anime_-_Macross_Delta_-_Episode_16_-_Reina_Thumbs_Up.gif
23	https://cdn.discordapp.com/attachments/332853782247374848/493530274421014578/Omake_Gif_Anime_-_Shounen_Maid_-_Episode_4_-_Chihiros_Mom_Thumbs_Up.gif
24	https://cdn.discordapp.com/attachments/332853782247374848/493528433398382593/6a230f472a97be6ca64b91a2c0267dd9.gif
25	https://cdn.discordapp.com/attachments/332853782247374848/493528487206846464/33cafe70f5f118e2cd218e46d42f56abc9c6d166_hq.gif
26	https://cdn.discordapp.com/attachments/332853782247374848/493528538117439498/54371-lucky-star-thumbs-up.jpg.gif
27	https://cdn.discordapp.com/attachments/332853782247374848/493530987091984404/source.gif
28	https://cdn.discordapp.com/attachments/332853782247374848/493528661727903757/giphy.gif
29	https://cdn.discordapp.com/attachments/332853782247374848/493528714718740491/HardDiligentAlaskanhusky.gif
30	https://cdn.discordapp.com/attachments/332853782247374848/493531384795627520/TartAdeptGoldenmantledgroundsquirrel-max-1mb.gif
31	https://cdn.discordapp.com/attachments/332853782247374848/493528866208350208/tumblr_inline_o0nsmdPgrm1tzwkwy_500.gif
32	https://cdn.discordapp.com/attachments/332853782247374848/493531559484194817/1438595687_tumblr_njmgnlKHE81qad8qko2_500.gif
33	https://cdn.discordapp.com/attachments/332853782247374848/493529033758474249/tumblr_inline_o0nt42sCaJ1tzwkwy_500.gif
34	https://cdn.discordapp.com/attachments/332853782247374848/493529208635523091/tumblr_n17m4dNO731s4qvrdo1_500.gif
35	https://cdn.discordapp.com/attachments/332853782247374848/493532734896209941/3oQ1.gif
\.


--
-- Data for Name: tickle; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.tickle (gif_id, link) FROM stdin;
1	https://cdn.discordapp.com/attachments/332853782247374848/494127360367394826/eGpS7.gif
2	https://cdn.discordapp.com/attachments/332853782247374848/494127424947355658/aedc53ea92d4f9d17498674ad24f6d4a6784ce3f_hq1.gif
3	https://cdn.discordapp.com/attachments/332853782247374848/494127604153057281/QGUxb0y.gif
4	https://media.giphy.com/media/TvkLBqjSlj49a/giphy.gif
5	https://cdn.discordapp.com/attachments/332853782247374848/494127873167458304/giphy4.gif
6	https://cdn.discordapp.com/attachments/332853782247374848/494127944260780043/pikachu_tickles_dragonite_s_belly_by_seviperman13-dbuo4ch1.gif
7	https://cdn.discordapp.com/attachments/332853782247374848/494127992637882378/sekaiichi_hatsukoi_tickle_fight_by_jerseycar-d6ke74l1.gif
8	https://cdn.discordapp.com/attachments/332853782247374848/494128062460592128/Tickle_Tickle1.gif
9	https://cdn.discordapp.com/attachments/332853782247374848/494128125748183040/tickle_poke_by_otakuangelx-d9vflfu1.gif
10	https://cdn.discordapp.com/attachments/332853782247374848/494128320737443840/true.gif
11	https://cdn.discordapp.com/attachments/332853782247374848/494128373887533057/tumblr_og7p24fa3R1vpbklao8_r6_5001.gif
12	https://cdn.discordapp.com/attachments/332853782247374848/495537094928629760/tenor_3.gif
13	https://cdn.discordapp.com/attachments/332853782247374848/495537172842283008/DaringGrossJellyfish-size_restricted.gif
14	https://cdn.discordapp.com/attachments/332853782247374848/635279691280023567/Byj7LJmiW.gif
15	https://cdn.discordapp.com/attachments/332853782247374848/635401623773904909/rkPzIyQi-.gif
16	https://cdn.discordapp.com/attachments/332853782247374848/635408339093815296/SyQHUy7oW.gif
\.


--
-- Data for Name: tsundere; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.tsundere (gif_id, link) FROM stdin;
1	https://cdn.discordapp.com/attachments/332853782247374848/351134085059444736/Tsundere_Aya.gif
2	https://cdn.discordapp.com/attachments/332853782247374848/351137455761522691/tumblr_nn2ki3jKnu1s0ifhgo2_500.gif
3	https://cdn.discordapp.com/attachments/332853782247374848/351516566023831552/tumblr_mm1ebg2UlL1sovif0o2_500.gif
4	https://cdn.discordapp.com/attachments/332853782247374848/491872070104514570/PCcKOlk.gif
5	https://cdn.discordapp.com/attachments/332853782247374848/351516668452798464/9e9a09a15e8bebcdb90352de3e037a87.gif
6	https://cdn.discordapp.com/attachments/332853782247374848/351516824061476864/f89.gif
7	https://cdn.discordapp.com/attachments/332853782247374848/491872325260804106/4axW0gC.gif
8	https://cdn.discordapp.com/attachments/332853782247374848/491872554416341022/CLYLMmB.gif
9	https://cdn.discordapp.com/attachments/332853782247374848/491872699845574667/VFCQozo.gif
10	https://cdn.discordapp.com/attachments/332853782247374848/351517156648681472/giphy_1.gif
11	https://cdn.discordapp.com/attachments/332853782247374848/351517175288168448/aee5a07215edf50db5fd65b861501e317803244f_hq.gif
12	https://cdn.discordapp.com/attachments/332853782247374848/351517218967650332/30ffe1101713defa8d41d64804fe4c98.gif
13	https://cdn.discordapp.com/attachments/332853782247374848/351517236382400513/tumblr_m7jki4bTBq1rwc838o1_500.gif
14	https://cdn.discordapp.com/attachments/332853782247374848/491873549372358657/UQZELBA.gif
15	https://cdn.discordapp.com/attachments/332853782247374848/627959396969742359/giphy1.gif
16	https://cdn.discordapp.com/attachments/332853782247374848/491873668083744768/BcPPLdW.gif
17	https://cdn.discordapp.com/attachments/332853782247374848/491873749193457664/ZWmpfYN.gif
18	https://cdn.discordapp.com/attachments/332853782247374848/491873818055278614/Tumblr_nrtze7wEz41tlazn5o2_5001.gif
19	https://cdn.discordapp.com/attachments/332853782247374848/351517757944365066/large.gif
20	https://cdn.discordapp.com/attachments/332853782247374848/491873936057958410/CegQBIC.gif
21	https://cdn.discordapp.com/attachments/332853782247374848/491874009470730240/RuTgNK4.gif
22	https://cdn.discordapp.com/attachments/332853782247374848/491874355777765376/rz9rygc.gif
23	https://cdn.discordapp.com/attachments/332853782247374848/351517931173052416/3fd2bc6b048438ba8d8ef334d2276833.gif
24	https://cdn.discordapp.com/attachments/332853782247374848/351518057622929408/f3a.gif
25	https://cdn.discordapp.com/attachments/332853782247374848/491874555153874944/SYmfjc2.gif
26	https://cdn.discordapp.com/attachments/332853782247374848/351518226082955266/6c228762bf4ae729a64dcbfcd838b898.gif
27	https://cdn.discordapp.com/attachments/332853782247374848/351518252599345152/56fe58e34c614a5d910ddab275320ab239ce9bb3_hq.gif
28	https://cdn.discordapp.com/attachments/332853782247374848/351518305175076864/tumblr_m3pq3bSPK51rp11t6.gif
29	https://cdn.discordapp.com/attachments/332853782247374848/491874976551403542/Tsundere_Aya.gif
30	https://cdn.discordapp.com/attachments/333305071129460746/351127164839788545/ayaya_7.gif
31	https://cdn.discordapp.com/attachments/332853782247374848/351141263006760962/QMTH18U.gif
32	https://cdn.discordapp.com/attachments/332853782247374848/351141290332782592/tumblr_mrv1k5txHw1qzh1tvo1_500.gif
33	https://cdn.discordapp.com/attachments/332853782247374848/491875254206201862/GnKsPCu.gif
34	https://cdn.discordapp.com/attachments/332853782247374848/351144372487585792/08fbb9ef8085d256d04f8faf1301bf862160cf6f_hq.gif
35	https://cdn.discordapp.com/attachments/332853782247374848/491875382031810560/5ULHaG4.gif
36	https://cdn.discordapp.com/attachments/332853782247374848/351144382449188864/tumblr_mpxb4fyAcZ1r3nw4do1_500.gif
37	https://cdn.discordapp.com/attachments/332853782247374848/351506529792294943/aya-scolding-yoko-again.gif
38	https://cdn.discordapp.com/attachments/320906001404395520/357845486092156928/rtndAnq.gif
39	https://cdn.discordapp.com/attachments/332853782247374848/491875679349243914/oxKbqok.gif
40	https://cdn.discordapp.com/attachments/332853782247374848/491875792582868992/bcQ0BHH.gif
41	https://cdn.discordapp.com/attachments/332853782247374848/491876167499120640/Jx8EfHb.gif
42	https://cdn.discordapp.com/attachments/332853782247374848/491876255768248330/dF9oNwM.gif
43	https://cdn.discordapp.com/attachments/332853782247374848/491930767774056448/e6152064ed261df4432d0af1543ea9ba.gif
44	https://cdn.discordapp.com/attachments/332853782247374848/491930889492758528/1121634_1504335552160451.gif
45	https://cdn.discordapp.com/attachments/332853782247374848/491931021118537728/giphy.gif
46	https://cdn.discordapp.com/attachments/332853782247374848/491931137648885786/zGcbq4U.gif
47	https://cdn.discordapp.com/attachments/332853782247374848/491931214844919808/tenor.gif
48	https://cdn.discordapp.com/attachments/332853782247374848/491931274798170113/tumblr_n8zpguPjH91soxa4vo1_r1_500.gif
49	https://cdn.discordapp.com/attachments/332853782247374848/491931330259714063/tumblr_nhbgukUZIU1qda6uso1_r2_500.gif
50	https://cdn.discordapp.com/attachments/332853782247374848/491931408843931649/tumblr_static_filename_640_v2.gif
51	https://cdn.discordapp.com/attachments/332853782247374848/491931482928054272/wh35bvtvbwkx.gif
52	https://cdn.discordapp.com/attachments/332853782247374848/627954566226378752/giphy_2.gif
\.


--
-- Data for Name: wakeup; Type: TABLE DATA; Schema: public; Owner: ayaya
--

COPY public.wakeup (gif_id, link) FROM stdin;
1	https://cdn.discordapp.com/attachments/332853782247374848/350794508344098817/2b2d65dcbf9cf3ba16eb7037f64f7a82bdbb2f6f_hq.gif
2	https://cdn.discordapp.com/attachments/332853782247374848/350794525389619202/6p2Uqgu.gif
3	https://cdn.discordapp.com/attachments/332853782247374848/350794580578402304/7aebb62e5efbb04cdd4be6280cf4691e.gif
4	https://cdn.discordapp.com/attachments/332853782247374848/350794667962531840/97bdf2fc6e043b602153bc282e237ded.gif
5	https://cdn.discordapp.com/attachments/332853782247374848/492323198017208320/anime-wake-up-gif-11.gif
6	https://cdn.discordapp.com/attachments/332853782247374848/350794860615434251/e67c79766fd96cb784b5e3f0ba748d47.gif
7	https://cdn.discordapp.com/attachments/332853782247374848/350794961320673280/EBG5NiX.gif
8	https://cdn.discordapp.com/attachments/332853782247374848/350795088198107136/giphy_1.gif
9	https://cdn.discordapp.com/attachments/332853782247374848/350795375663251456/giphy.gif
10	https://cdn.discordapp.com/attachments/332853782247374848/350795452716941312/large.gif
11	https://cdn.discordapp.com/attachments/332853782247374848/350795611911487498/mayoiga-09-wake-up.gif
12	https://cdn.discordapp.com/attachments/332853782247374848/350795780723834880/tenor.gif
13	https://cdn.discordapp.com/attachments/332853782247374848/350795813376622594/tumblr_lxckd2bgyW1qkukto.gif
14	https://cdn.discordapp.com/attachments/332853782247374848/350795863334846464/tumblr_mbvbwyascL1qma4dd.gif
15	https://cdn.discordapp.com/attachments/332853782247374848/350795989101314048/tumblr_nh04bnIe0c1r37arko1_500.gif
16	https://cdn.discordapp.com/attachments/332853782247374848/350796034114322441/tumblr_o4wsl9BQrd1udouqko1_500.gif
17	https://cdn.discordapp.com/attachments/332853782247374848/350796201446211584/tumblr_o9unhnmWCb1uk9v21o1_500.gif
18	https://cdn.discordapp.com/attachments/332853782247374848/350796202188603402/tumblr_o7cwyacnTt1udcoqno1_500.gif
19	https://cdn.discordapp.com/attachments/332853782247374848/350804444251684874/880364b4fe0cf749f1c7f187b5865967.gif
20	https://cdn.discordapp.com/attachments/332853782247374848/350804493903986698/d0LXD.gif
21	https://cdn.discordapp.com/attachments/332853782247374848/351132312374738945/giphy.gif
22	https://cdn.discordapp.com/attachments/332853782247374848/492324574193647617/CrS71nh.gif
23	https://cdn.discordapp.com/attachments/332853782247374848/492324680846278656/661be121df39b515798055a289787baac2a4eafa_hq.gif
24	https://cdn.discordapp.com/attachments/332853782247374848/492324732809510912/21662e9f004791f7808fe9e787fc5a443e72c2bb_hq.gif
25	https://cdn.discordapp.com/attachments/332853782247374848/492324828481716224/anime-wake-up-gif-anime-gif-1250292.gif
26	https://gifer.com/i/49vy.gif
27	https://cdn.discordapp.com/attachments/332853782247374848/492325620047544321/f380825e3067c670ba624296d37a8f65a6f89c20_hq.gif
28	https://cdn.discordapp.com/attachments/332853782247374848/492325716785102858/fKu2IUk.gif
29	https://cdn.discordapp.com/attachments/332853782247374848/492325799916077060/giphy.gif
30	https://cdn.discordapp.com/attachments/332853782247374848/492325877707833364/GwfhoUr.gif
31	https://cdn.discordapp.com/attachments/332853782247374848/492326020729536522/original1.gif
32	https://cdn.discordapp.com/attachments/332853782247374848/492326109099327488/original.gif
33	https://cdn.discordapp.com/attachments/332853782247374848/492326331867070472/raw.gif
34	https://cdn.discordapp.com/attachments/332853782247374848/492326377866002442/tenor1.gif
35	https://cdn.discordapp.com/attachments/332853782247374848/492326554387480599/tenor2.gif
36	https://cdn.discordapp.com/attachments/332853782247374848/492326443770970122/tenor3.gif
37	https://cdn.discordapp.com/attachments/332853782247374848/492326600637939712/tenor4.gif
38	https://cdn.discordapp.com/attachments/332853782247374848/492326674386518016/tenor.gif
39	https://cdn.discordapp.com/attachments/332853782247374848/492326726731431936/tumblr_mozil14itt1rkmjjzo1_500.gif
40	https://cdn.discordapp.com/attachments/332853782247374848/492326792741519380/tumblr_o403bl3JoI1v6jvo2o1_500.gif
41	https://cdn.discordapp.com/attachments/332853782247374848/492327142659588097/wake-up-tsuna1.gif
42	https://cdn.discordapp.com/attachments/332853782247374848/492327211022549003/WR2ehv6.gif
43	https://cdn.discordapp.com/attachments/332853782247374848/492327736732549123/ef7e075ffe294c9141096e10568fd0c1187d2e0b_hq.gif
44	https://cdn.discordapp.com/attachments/332853782247374848/492327823986655242/giphy1.gif
45	https://cdn.discordapp.com/attachments/332853782247374848/492327905574125568/tumblr_ml2pnkSp1S1s19lb8o1_500.gif
46	https://cdn.discordapp.com/attachments/332853782247374848/495205844842053632/source.gif
47	https://cdn.discordapp.com/attachments/332853782247374848/495720845080002560/c635a4f37e30435727f52c6cc38f8294c37f6885_hq.gif
48	https://cdn.discordapp.com/attachments/332853782247374848/495720888780718103/tumblr_n5k9yeGlU31sq9yswo1_500.gif
49	https://cdn.discordapp.com/attachments/332853782247374848/635408480328482816/SyQzRaFFb.gif
\.


--
-- Name: answers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ayaya
--

SELECT pg_catalog.setval('public.answers_id_seq', 9, true);


--
-- Name: ayaya_gif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ayaya
--

SELECT pg_catalog.setval('public.ayaya_gif_id_seq', 19, true);


--
-- Name: baka_gif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ayaya
--

SELECT pg_catalog.setval('public.baka_gif_id_seq', 12, true);


--
-- Name: bite_gif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ayaya
--

SELECT pg_catalog.setval('public.bite_gif_id_seq', 7, true);


--
-- Name: blush_gif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ayaya
--

SELECT pg_catalog.setval('public.blush_gif_id_seq', 52, true);


--
-- Name: confused_gif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ayaya
--

SELECT pg_catalog.setval('public.confused_gif_id_seq', 19, true);


--
-- Name: converter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ayaya
--

SELECT pg_catalog.setval('public.converter_id_seq', 426, true);


--
-- Name: cry_gif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ayaya
--

SELECT pg_catalog.setval('public.cry_gif_id_seq', 40, true);


--
-- Name: dance_gif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ayaya
--

SELECT pg_catalog.setval('public.dance_gif_id_seq', 9, true);


--
-- Name: emojis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ayaya
--

SELECT pg_catalog.setval('public.emojis_id_seq', 182, true);


--
-- Name: facedesk_gif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ayaya
--

SELECT pg_catalog.setval('public.facedesk_gif_id_seq', 7, true);


--
-- Name: fliptable_gif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ayaya
--

SELECT pg_catalog.setval('public.fliptable_gif_id_seq', 8, true);


--
-- Name: greet_gif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ayaya
--

SELECT pg_catalog.setval('public.greet_gif_id_seq', 23, true);


--
-- Name: highfive_gif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ayaya
--

SELECT pg_catalog.setval('public.highfive_gif_id_seq', 12, true);


--
-- Name: hug_gif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ayaya
--

SELECT pg_catalog.setval('public.hug_gif_id_seq', 77, true);


--
-- Name: kawaii_gif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ayaya
--

SELECT pg_catalog.setval('public.kawaii_gif_id_seq', 24, true);


--
-- Name: kiss_gif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ayaya
--

SELECT pg_catalog.setval('public.kiss_gif_id_seq', 52, true);


--
-- Name: laugh_gif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ayaya
--

SELECT pg_catalog.setval('public.laugh_gif_id_seq', 30, true);


--
-- Name: nom_gif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ayaya
--

SELECT pg_catalog.setval('public.nom_gif_id_seq', 20, true);


--
-- Name: nuzzle_gif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ayaya
--

SELECT pg_catalog.setval('public.nuzzle_gif_id_seq', 29, true);


--
-- Name: pat_gif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ayaya
--

SELECT pg_catalog.setval('public.pat_gif_id_seq', 72, true);


--
-- Name: permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ayaya
--

SELECT pg_catalog.setval('public.permissions_id_seq', 30, true);


--
-- Name: poke_gif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ayaya
--

SELECT pg_catalog.setval('public.poke_gif_id_seq', 34, true);


--
-- Name: pout_gif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ayaya
--

SELECT pg_catalog.setval('public.pout_gif_id_seq', 65, true);


--
-- Name: scared_gif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ayaya
--

SELECT pg_catalog.setval('public.scared_gif_id_seq', 10, true);


--
-- Name: scold_gif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ayaya
--

SELECT pg_catalog.setval('public.scold_gif_id_seq', 10, true);


--
-- Name: shrug_gif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ayaya
--

SELECT pg_catalog.setval('public.shrug_gif_id_seq', 7, true);


--
-- Name: slap_gif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ayaya
--

SELECT pg_catalog.setval('public.slap_gif_id_seq', 52, true);


--
-- Name: sleep_gif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ayaya
--

SELECT pg_catalog.setval('public.sleep_gif_id_seq', 53, true);


--
-- Name: smile_gif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ayaya
--

SELECT pg_catalog.setval('public.smile_gif_id_seq', 61, true);


--
-- Name: snuggle_gif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ayaya
--

SELECT pg_catalog.setval('public.snuggle_gif_id_seq', 5, true);


--
-- Name: stare_gif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ayaya
--

SELECT pg_catalog.setval('public.stare_gif_id_seq', 11, true);


--
-- Name: teehee_gif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ayaya
--

SELECT pg_catalog.setval('public.teehee_gif_id_seq', 28, true);


--
-- Name: throw_gif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ayaya
--

SELECT pg_catalog.setval('public.throw_gif_id_seq', 54, true);


--
-- Name: thumbup_gif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ayaya
--

SELECT pg_catalog.setval('public.thumbup_gif_id_seq', 35, true);


--
-- Name: tickle_gif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ayaya
--

SELECT pg_catalog.setval('public.tickle_gif_id_seq', 16, true);


--
-- Name: tsundere_gif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ayaya
--

SELECT pg_catalog.setval('public.tsundere_gif_id_seq', 52, true);


--
-- Name: wakeup_gif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ayaya
--

SELECT pg_catalog.setval('public.wakeup_gif_id_seq', 49, true);


--
-- Name: answers answers_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_pkey PRIMARY KEY (id);


--
-- Name: ayaya_footer_quotes ayaya_footer_quotes_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.ayaya_footer_quotes
    ADD CONSTRAINT ayaya_footer_quotes_pkey PRIMARY KEY (quote_id);


--
-- Name: ayaya ayaya_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.ayaya
    ADD CONSTRAINT ayaya_pkey PRIMARY KEY (gif_id);


--
-- Name: ayaya_quotes ayaya_quotes_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.ayaya_quotes
    ADD CONSTRAINT ayaya_quotes_pkey PRIMARY KEY (quote_id);


--
-- Name: baka baka_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.baka
    ADD CONSTRAINT baka_pkey PRIMARY KEY (gif_id);


--
-- Name: bite bite_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.bite
    ADD CONSTRAINT bite_pkey PRIMARY KEY (gif_id);


--
-- Name: blacklist blacklist_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.blacklist
    ADD CONSTRAINT blacklist_pkey PRIMARY KEY (user_id);


--
-- Name: blush blush_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.blush
    ADD CONSTRAINT blush_pkey PRIMARY KEY (gif_id);


--
-- Name: botlists botlistsprimarykey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.botlists
    ADD CONSTRAINT botlistsprimarykey PRIMARY KEY (name);


--
-- Name: changelogs changelogs_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.changelogs
    ADD CONSTRAINT changelogs_pkey PRIMARY KEY (version);


--
-- Name: confused confused_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.confused
    ADD CONSTRAINT confused_pkey PRIMARY KEY (gif_id);


--
-- Name: converter converter_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.converter
    ADD CONSTRAINT converter_pkey PRIMARY KEY (id);


--
-- Name: cry cry_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.cry
    ADD CONSTRAINT cry_pkey PRIMARY KEY (gif_id);


--
-- Name: dance dance_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.dance
    ADD CONSTRAINT dance_pkey PRIMARY KEY (gif_id);


--
-- Name: emojis emojis_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.emojis
    ADD CONSTRAINT emojis_pkey PRIMARY KEY (id);


--
-- Name: facedesk facedesk_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.facedesk
    ADD CONSTRAINT facedesk_pkey PRIMARY KEY (gif_id);


--
-- Name: fliptable fliptable_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.fliptable
    ADD CONSTRAINT fliptable_pkey PRIMARY KEY (gif_id);


--
-- Name: greet greet_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.greet
    ADD CONSTRAINT greet_pkey PRIMARY KEY (gif_id);


--
-- Name: highfive highfive_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.highfive
    ADD CONSTRAINT highfive_pkey PRIMARY KEY (gif_id);


--
-- Name: hug hug_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.hug
    ADD CONSTRAINT hug_pkey PRIMARY KEY (gif_id);


--
-- Name: kawaii kawaii_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.kawaii
    ADD CONSTRAINT kawaii_pkey PRIMARY KEY (gif_id);


--
-- Name: kiss kiss_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.kiss
    ADD CONSTRAINT kiss_pkey PRIMARY KEY (gif_id);


--
-- Name: laugh laugh_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.laugh
    ADD CONSTRAINT laugh_pkey PRIMARY KEY (gif_id);


--
-- Name: nom nom_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.nom
    ADD CONSTRAINT nom_pkey PRIMARY KEY (gif_id);


--
-- Name: nuzzle nuzzle_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.nuzzle
    ADD CONSTRAINT nuzzle_pkey PRIMARY KEY (gif_id);


--
-- Name: pat pat_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.pat
    ADD CONSTRAINT pat_pkey PRIMARY KEY (gif_id);


--
-- Name: patreon_keys patreon_keys_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.patreon_keys
    ADD CONSTRAINT patreon_keys_pkey PRIMARY KEY (key);


--
-- Name: patreon_whitelist patreon_whitelist_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.patreon_whitelist
    ADD CONSTRAINT patreon_whitelist_pkey PRIMARY KEY (user_id);


--
-- Name: permissions permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);


--
-- Name: poke poke_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.poke
    ADD CONSTRAINT poke_pkey PRIMARY KEY (gif_id);


--
-- Name: pout pout_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.pout
    ADD CONSTRAINT pout_pkey PRIMARY KEY (gif_id);


--
-- Name: scared scared_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.scared
    ADD CONSTRAINT scared_pkey PRIMARY KEY (gif_id);


--
-- Name: scold scold_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.scold
    ADD CONSTRAINT scold_pkey PRIMARY KEY (gif_id);


--
-- Name: shrug shrug_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.shrug
    ADD CONSTRAINT shrug_pkey PRIMARY KEY (gif_id);


--
-- Name: slap slap_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.slap
    ADD CONSTRAINT slap_pkey PRIMARY KEY (gif_id);


--
-- Name: sleep sleep_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.sleep
    ADD CONSTRAINT sleep_pkey PRIMARY KEY (gif_id);


--
-- Name: smile smile_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.smile
    ADD CONSTRAINT smile_pkey PRIMARY KEY (gif_id);


--
-- Name: snuggle snuggle_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.snuggle
    ADD CONSTRAINT snuggle_pkey PRIMARY KEY (gif_id);


--
-- Name: stare stare_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.stare
    ADD CONSTRAINT stare_pkey PRIMARY KEY (gif_id);


--
-- Name: teehee teehee_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.teehee
    ADD CONSTRAINT teehee_pkey PRIMARY KEY (gif_id);


--
-- Name: throw throw_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.throw
    ADD CONSTRAINT throw_pkey PRIMARY KEY (gif_id);


--
-- Name: thumbup thumbup_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.thumbup
    ADD CONSTRAINT thumbup_pkey PRIMARY KEY (gif_id);


--
-- Name: tickle tickle_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.tickle
    ADD CONSTRAINT tickle_pkey PRIMARY KEY (gif_id);


--
-- Name: tsundere tsundere_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.tsundere
    ADD CONSTRAINT tsundere_pkey PRIMARY KEY (gif_id);


--
-- Name: wakeup wakeup_pkey; Type: CONSTRAINT; Schema: public; Owner: ayaya
--

ALTER TABLE ONLY public.wakeup
    ADD CONSTRAINT wakeup_pkey PRIMARY KEY (gif_id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

