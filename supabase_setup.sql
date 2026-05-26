-- ============================================================
-- 토론 의견 수집 앱 — Supabase 초기 설정 SQL
-- Supabase SQL Editor에 붙여넣고 실행하세요
-- ============================================================

-- 1. 테이블 생성
CREATE TABLE IF NOT EXISTS debate_records (
  id           uuid        PRIMARY KEY DEFAULT gen_random_uuid(),
  created_at   timestamptz NOT NULL    DEFAULT now(),
  topic        text        NOT NULL,
  school_level text        NOT NULL,
  student_name text        NOT NULL,
  stance       text        NOT NULL CHECK (stance IN ('찬성', '반대', '중립')),
  reason       text,
  evidence     text,
  counter      text,
  learned      text
);

-- 2. RLS 활성화
ALTER TABLE debate_records ENABLE ROW LEVEL SECURITY;

-- 3. anon 사용자 insert 허용 (학생 제출)
CREATE POLICY "anon_insert" ON debate_records
  FOR INSERT TO anon
  WITH CHECK (true);

-- 4. anon 사용자 select 허용 (교사 조회)
CREATE POLICY "anon_select" ON debate_records
  FOR SELECT TO anon
  USING (true);
