pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
--setup
function _init()
    deck=shuffle(init_deck())
    tableau={}
    resources={
        coins=0,
        heat=0,
        points=0
    }
    cls(0)
end

function _update()

end

function _draw()

end
-->8
--game
function update_resources(tbl)
    for k,v in pairs(tbl) do
        resources[k] += v
    end
end
-->8
--card
function trigger(card)
    for suit in all(card.external_triggers) do
        for i,c in pairs(tableau) do
            if i != #tableau and c.trigger == suit then
                update_resources(c.triggered_resources)
            end
        end
    end
end
-->8
--deck
function init_deck()
    return {}
end

function shuffle(deck)
    local result = {}
    while #deck > 0 do
        local i = flr(rnd(#deck)) + 1
        add(result, deck[i])
        deli(deck, i)
    end
    return result
end
-->8
--utils
function contains(tbl, el)
    for itm in all(tbl) do
        if itm == el then
            return true
        end
    end
    return false
end
-->8
--cards
cards = {
    jack={
        name="jack",
        cost="2",
        base_resources={
            coins=2
        },
        triggered_resources={
            heat=1
        },
        trigger="blue",
        external_triggers={"red", "green"}
    },
    queen={
        name="queen",
        cost="4",
        base_resources={
            coins=1,
            points=1,
            heat=1
        },
        triggered_resources={
            points=1
        },
        trigger="red",
        external_triggers={"blue"}
    },
    king={
        name="king",
        cost="5",
        base_resources={
            coins=3
        },
        triggered_resources={
            heat=3
        },
        trigger="black",
        external_triggers={"red", "green", "blue"}
    },
    ace={
        name="ace",
        cost="4",
        base_resources={
            heat=-3
        },
        triggered_resources={
            points=1,
            heat=1
        },
        trigger="blue",
        external_triggers={"blue"}
    },
}
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
