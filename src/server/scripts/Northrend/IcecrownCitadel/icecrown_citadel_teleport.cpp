/*
 * Copyright (C) 2008-2014 TrinityCore <http://www.trinitycore.org/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "InstanceScript.h"
#include "Player.h"
#include "ScriptedGossip.h"
#include "ScriptMgr.h"
#include "Spell.h"
#include "icecrown_citadel.h"

#define GOSSIP_SENDER_ICC_PORT 631

class icecrown_citadel_teleport : public GameObjectScript
{
    public:
        icecrown_citadel_teleport() : GameObjectScript("icecrown_citadel_teleport") { }

        bool OnGossipHello(Player* player, GameObject* go) override
        {
            if (InstanceScript* instance = go->GetInstanceScript())
            {
                if (instance->GetBossState(DATA_LORD_MARROWGAR) == DONE)
                {
                    if (go->GetEntry() != GO_SCOURGE_TRANSPORTER_LIGHTSHAMMER)
                        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Телепортация в Молот света.", GOSSIP_SENDER_ICC_PORT, LIGHT_S_HAMMER_TELEPORT);
                    if (go->GetEntry() != GO_SCOURGE_TRANSPORTER_ORATORY)
                        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Телепортация в Молельню проклятых.", GOSSIP_SENDER_ICC_PORT, ORATORY_OF_THE_DAMNED_TELEPORT);
                }
                if (instance->GetBossState(DATA_LADY_DEATHWHISPER) == DONE && go->GetEntry() != GO_SCOURGE_TRANSPORTER_RAMPART)
                    player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Телепортация в Черепной вал.", GOSSIP_SENDER_ICC_PORT, RAMPART_OF_SKULLS_TELEPORT);
                if (instance->GetBossState(DATA_ICECROWN_GUNSHIP_BATTLE) == DONE && go->GetEntry() != GO_SCOURGE_TRANSPORTER_DEATHBRINGER)
                    player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Телепортация к Подъему смертоносного.", GOSSIP_SENDER_ICC_PORT, DEATHBRINGER_S_RISE_TELEPORT);
                if (instance->GetData(DATA_UPPERSPIRE_TELE_ACT) == DONE && go->GetEntry() != GO_SCOURGE_TRANSPORTER_UPPERSPIRE)
                    player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Телепортация в Шпиль.", GOSSIP_SENDER_ICC_PORT, UPPER_SPIRE_TELEPORT);
                /// @todo Gauntlet event before Sindragosa
                if (instance->GetBossState(DATA_VALITHRIA_DREAMWALKER) == DONE && go->GetEntry() != GO_SCOURGE_TRANSPORTER_SINDRAGOSA)
                    player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Телепортация в Логово Королевы Льда.", GOSSIP_SENDER_ICC_PORT, SINDRAGOSA_S_LAIR_TELEPORT);
            }

            player->SEND_GOSSIP_MENU(player->GetGossipTextId(go), go->GetGUID());
            return true;
        }

        bool OnGossipSelect(Player* player, GameObject* /*go*/, uint32 sender, uint32 action) override
        {
            player->PlayerTalkClass->ClearMenus();
            player->CLOSE_GOSSIP_MENU();
            SpellInfo const* spell = sSpellMgr->GetSpellInfo(action);
            if (!spell)
                return false;

            if (player->IsInCombat())
            {
                Spell::SendCastResult(player, spell, 0, SPELL_FAILED_AFFECTING_COMBAT);
                return true;
            }

            if (sender == GOSSIP_SENDER_ICC_PORT)
                player->CastSpell(player, spell, true);

            return true;
        }
};

class at_frozen_throne_teleport : public AreaTriggerScript
{
    public:
        at_frozen_throne_teleport() : AreaTriggerScript("at_frozen_throne_teleport") { }

        bool OnTrigger(Player* player, AreaTriggerEntry const* /*areaTrigger*/) override
        {
            if (player->IsInCombat())
            {
                if (SpellInfo const* spell = sSpellMgr->GetSpellInfo(FROZEN_THRONE_TELEPORT))
                    Spell::SendCastResult(player, spell, 0, SPELL_FAILED_AFFECTING_COMBAT);
                return true;
            }

            if (InstanceScript* instance = player->GetInstanceScript())
                if (instance->GetBossState(DATA_PROFESSOR_PUTRICIDE) == DONE &&
                    instance->GetBossState(DATA_BLOOD_QUEEN_LANA_THEL) == DONE &&
                    instance->GetBossState(DATA_SINDRAGOSA) == DONE &&
                    instance->GetBossState(DATA_THE_LICH_KING) != IN_PROGRESS)
                    player->CastSpell(player, FROZEN_THRONE_TELEPORT, true);

            return true;
        }
};

void AddSC_icecrown_citadel_teleport()
{
    new icecrown_citadel_teleport();
    new at_frozen_throne_teleport();
}
