USE kyobobook;

-- 회원 테이블에 포인트 컬럼 추가
ALTER TABLE member
ADD COLUMN point INT DEFAULT 0;

-- 마지막 출석일 컬럼 추가
ALTER TABLE member
ADD COLUMN last_attendance_date DATE NULL;

-- 연속 출석일 컬럼 추가
ALTER TABLE member
ADD COLUMN attendance_streak INT DEFAULT 0;

-- 출석 기록 테이블 생성
CREATE TABLE attendance_log (
    attendance_id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT NOT NULL,
    attendance_date DATE NOT NULL,
    base_point INT DEFAULT 100,
    bonus_point INT DEFAULT 0,
    total_point INT DEFAULT 0,
    streak_count INT DEFAULT 1,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    UNIQUE KEY unique_member_attendance (member_id, attendance_date)
);