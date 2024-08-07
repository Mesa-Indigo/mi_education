-- Insert these into your DB. Feel free to create more if you want to:
--      ('cert_name', 'Certification of OogaBooga'),
--      ('scrt_name', 'Certification of OogaBooga'),
--      ('aadg_name', 'Associates Degree in OogaBooga'),
--      ('bcdg_name', 'Bachelors Degree in OogaBooga'),
--      ('msdg_name', 'Masters Degree in OogaBooga'),
--      ('doct_name', 'Doctorial Degree in OogaBooga'),

CREATE TABLE IF NOT EXISTS `mi_education` (
  `stateid` TEXT DEFAULT NULL,
  `currentclassid` TEXT DEFAULT NULL,
  `completedclasses` JSON DEFAULT '[]'
);

INSERT INTO `mi_education` (stateid, currentclassid, completedclasses) 
VALUES ('ExampleStateID', 'XA1234', '[54321,234512,123142]');

INSERT INTO `ox_licenses` (`name`, `label`) VALUES
  -- General Certifications
  ('cert_const', 'Cert: Gen. Construction'),
  ('cert_autom', 'Cert: Automotive Technology'),
  ('cert_boatm', 'Cert: Marine Technology'),
  ('cert_airfm', 'Cert: Airframe Technology'),
  ('cert_elect', 'Cert: Electrical Systems'),
  ('cert_medic', 'Cert: Medical Technology'),
  ('cert_pvtsc', 'Cert: Private Security'),

  -- Special Certifications - Fire / Police / Ems / Mil
  ('scrt_name', 'Cert: '),
  
  -- Associates Degrees - aadg_name
  ('aadg_aarts', 'AA in Fine Arts'),
  ('aadg_bsadm', 'AA in Business'),
  ('aadg_crmjs', 'AA in Criminal Justice'),
  ('aadg_comps', 'AA in Computer Science'),
  ('aadg_nurse', 'AA in Nursing'),
  ('aadg_engrs', 'AA in Engineering'),
  ('aadg_biogl', 'AA in Biology'),
  ('aadg_chems', 'AA in Chemistry'),
  ('aadg_journ', 'AA in Journalism'),
  
  -- Bachelors Degrees - bcdg_name
  ('bcdg_aarts', 'BA in Fine Arts'),
  ('bcdg_bsadm', 'BA in Business'),
  ('bcdg_crmjs', 'BA in Criminal Justice'),
  ('bcdg_comps', 'BA in Computer Science'),
  ('bcdg_nurse', 'BA in Nursing'),
  ('bcdg_engrs', 'BA in Engineering'),
  ('bcdg_biogl', 'BA in Biology'),
  ('bcdg_chems', 'BA in Chemistry'),
  ('bcdg_journ', 'BA in Journalism'),
  
  -- Masters Degrees - msdg_name
  ('msdg_aarts', 'MA in Fine Arts'),
  ('msdg_bsadm', 'MA in Business'),
  ('msdg_crmjs', 'MA in Criminal Justice'),
  ('msdg_comps', 'MA in Computer Science'),
  ('msdg_nurse', 'MA in Nursing'),
  ('msdg_engrs', 'MA in Engineering'),
  ('msdg_biogl', 'MA in Biology'),
  ('msdg_chems', 'MA in Chemistry'),
  ('msdg_journ', 'MA in Journalism'),
  
  -- Doctorial Degreess - doct_name
  ('doct_aarts', 'PhD in Fine Arts'),
  ('doct_bsadm', 'PhD in Business'),
  ('doct_crmjs', 'PhD in Criminal Justice'),
  ('doct_comps', 'PhD in Computer Science'),
  ('doct_nurse', 'PhD in Nursing'),
  ('doct_engrs', 'PhD in Engineering'),
  ('doct_biogl', 'PhD in Biology'),
  ('doct_chems', 'PhD in Chemistry'),
  ('doct_journ', 'PhD in Journalism');
