ALTER TABLE UnitPromotions
  ADD ReconChange INTEGER DEFAULT 0;
INSERT INTO UnitPromotions(Type, Description, Help, Sound, ReconChange, LostWithUpgrade, PortraitIndex, IconAtlas, PediaType, PediaEntry)
  VALUES('PROMOTION_RECON_SHORT_RANGE', 'TXT_KEY_PROMOTION_RECON_SHORT_RANGE', 'TXT_KEY_PROMOTION_RECON_SHORT_RANGE_HELP', 'AS2D_IF_LEVELUP', -2, 1, 59, 'ABILITY_ATLAS', 'PEDIA_ATTRIBUTES', 'TXT_KEY_PEDIA_PROMOTION_RECON_SHORT_RANGE');
INSERT INTO UnitPromotions(Type, Description, Help, Sound, ReconChange, LostWithUpgrade, PortraitIndex, IconAtlas, PediaType, PediaEntry)
  VALUES('PROMOTION_RECON_LONG_RANGE', 'TXT_KEY_PROMOTION_RECON_LONG_RANGE', 'TXT_KEY_PROMOTION_RECON_LONG_RANGE_HELP', 'AS2D_IF_LEVELUP', 2, 1, 59, 'ABILITY_ATLAS', 'PEDIA_ATTRIBUTES', 'TXT_KEY_PEDIA_PROMOTION_RECON_LONG_RANGE');

INSERT INTO CustomModDbUpdates(Name, Value) VALUES('PROMOTIONS_VARIABLE_RECON_SQL', 1);
