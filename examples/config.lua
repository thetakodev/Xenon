return {
  title         = "Finn's Materials",   -- Name of the shop, for logging purposes only
--  slackURL    = "<url>",     -- The slack webhook url for logging to a slack channel
--  slackName   = "myUsername" -- Your username in slack for mentions
  discordURL  = "https://discordapp.com/api/webhooks/617426374638043288/Eu3PosbNOXC3N_7MlAzBSRHFjqEWvZVbqcEoGMMQ8SdPu7Is0buNBP-cp-3_Gv2JXN-5",     -- The discord webhook url for logging to a discord channel
  discordName = "Finn_Dane#0001", -- Your discord user id for mentions (Find this by typing '\@yourUsernameHere' in Discord)
  logger = { -- Which events are worthy of a message/mention in slack / discord
    -- Valid values are false = no message, true = message, "important" = mention
    purchase = true,          -- When someone purchases anything
    outOfStock = "important", -- When someone purchases all remaining items of a certain type(
    crash = true             -- When Xenon crashes
  },

  layout = "layout.html", -- The file from which xenon should load the layout
  styles = "styles.css",  -- The file from which xenon should load the stylesheet

  host  = "kkdqwu4uo4", -- * The Krist Address to listen to (*Required)
  name  = "finndane",     -- * The Krist Name to use for purchases (*Required)
  pkey  = "privatekey",         -- * The private key to use for refunds (*Required)
  pkeyFormat = "kwallet", -- Either 'raw' or 'kwallet', defaults to 'raw'
  -- NOTE: It is not recommended to use kwallet, the best practice is to convert your pkey (using
  -- kwallet format) to raw pkey yourself first, and then use that here. Thus improving security.

  -- If you want to run Xenon on a computer instead of a turtle, and spit the items out of a chest, specify the name of the chest below.
  -- outChest = "chest_1",
  outChestDir = "up", -- The direction, relative to outChest, that items should be spit out.
  
  self    = "turtle_27",  -- * The network name of the turtle running Xenon (e.g. 'turtle_64')
  -- NOTE: If the chest and turtle are connected by adjacency and not by a wired modem/cabling
  -- then 'self' MUST be defined as the position of the turtle relative to the chest, for example:
  -- If the turtle is east of the chest, then self should be 'east', NOT 'right' or 'left' etc.
  textScale = 0.5,   --   The text scale to draw the monitor with
  monitor = "monitor_21", --   The network name of the monitor to use (If not present, peripheral.find is used)
--  chest   = "left",  -- * The direction/name of the storage chest (*Required if 'chests' is not present)
  chests = {    -- * An array of the directions/names of the storage chests (*Required if 'chest' is not present)
    "minecraft:chest_11",
    "minecraft:chest_12",
  },
  updateInterval = 30,   --   The time in seconds between stock updates, defaults to 30 seconds

--  redstoneSide     = "top", -- The side for redstone heartbeat, if not present, heartbeat is disabled
--  redstoneIntegrator = {"redstone_integrator_2", "top"}, -- Redstone integrator net name, and side to actuate on
--  redstoneInterval = 5,     -- The time in seconds between redstone heartbeats, defaults to 5 seconds

  messages = { -- Message templates for refunding scenarios, what you see here are the defaults
    overpaid    = "message=You paid {amount} KST more than you should have, here is your change, {buyer}.",
    underpaid   = "error=You must pay at least {price} KST for {item}(s), you have been refunded, {buyer}.",
    outOfStock  = "error=We do not have any {item}(s) at the moment, sorry for any inconvenience, {buyer}.",
    unknownItem = "error=We do not currently sell {item}(s), sorry for any inconvenience, {buyer}."
  },

  showBlanks = false, -- Whether or not to show items that are not in stock on the list, defaults to false
  items = { -- An array object of all the items you wish to sell
    {
      modid  = "minecraft:iron_ingot",-- * The modid of the item you wish to sell (*Required)
      price  = 0.9,             -- * The price in kst each unit of this item should cost (*Required)
      disp   = "Iron Ingot",    --   The name to display in the table, not technically required, but highly recommended
      addy   = "irn",           -- * The krist metaname to assign to this item, e.g. this one points 'llz@name.kst' to lapis (*Required)
                                --   will be the first item, 2 would be the second, and so on.. (if not
                                --   present items will be sorted alphabetically)
    },
    {
      modid  = "minecraft:diamond",-- * The modid of the item you wish to sell (*Required)
      price  = 2,              -- * The price in kst each unit of this item should cost (*Required)
      disp   = "Diamonds",     --   The name to display in the table, not technically required, but highly recommended
      addy   = "dia",          -- * The krist metaname to assign to this item, e.g. this one points 'llz@name.kst' to lapis (*Required)
                               --   will be the first item, 2 would be the second, and so on.. (if not
                               --   present items will be sorted alphabetically)
    },
	{
     modid  = "minecraft:gold_ingot",-- * The modid of the item you wish to sell (*Required)
     price  = 0.15,            -- * The price in kst each unit of this item should cost (*Required)
     disp   = "Gold Ingot",    --   The name to display in the table, not technically required, but highly recommended
     addy   = "gld",           -- * The krist metaname to assign to this item, e.g. this one points 'llz@name.kst' to lapis (*Required)
                               --   will be the first item, 2 would be the second, and so on.. (if not
                               --   present items will be sorted alphabetically)
    },
	{
     modid  = "thermalfoundation:material",-- * The modid of the item you wish to sell (*Required)
     damage = 128,
	 price  = 0.1,             -- * The price in kst each unit of this item should cost (*Required)
     disp   = "Copper Ingot",  --   The name to display in the table, not technically required, but highly recommended
     addy   = "cpr",           -- * The krist metaname to assign to this item, e.g. this one points 'llz@name.kst' to lapis (*Required)
                               --   will be the first item, 2 would be the second, and so on.. (if not
                               --   present items will be sorted alphabetically)
    },
	{
     modid  = "minecraft:redstone_block",-- * The modid of the item you wish to sell (*Required)
     price  = 0.1,             -- * The price in kst each unit of this item should cost (*Required)
     disp   = "Redstone Block",--   The name to display in the table, not technically required, but highly recommended
     addy   = "rsb",           -- * The krist metaname to assign to this item, e.g. this one points 'llz@name.kst' to lapis (*Required)
                               --   will be the first item, 2 would be the second, and so on.. (if not
                               --   present items will be sorted alphabetically)
    },
  },

  example = { -- Example chest data to be used with layoutMode (xenon --layout)
    ["minecraft:gold_ingot::0::0"] = 212, -- Key is modname:itemname::damage::predicateID
    ["minecraft:iron_ingot::0::0"] = 8,   -- Value is amount in stock
    ["minecraft:diamond::0::0"] = 27,
    ["minecraft:diamond_pickaxe::0::1"] = 2,
    ["minecraft:dye::4::0"] = 13,
  }
}