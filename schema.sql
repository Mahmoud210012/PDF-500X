-- Add this table in Supabase SQL editor
CREATE TABLE users (
  id uuid PRIMARY KEY,
  email text UNIQUE NOT NULL,
  plan text NOT NULL DEFAULT 'free',
  plan_status text NOT NULL DEFAULT 'active',
  plan_expiration timestamptz,
  stripe_customer_id text,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);