# lt-startergift

MADE BY LENOX

# Preview

[lt-startergift](https://streamable.com/r1z30u)

# Dependencies

- [qb-core](https://github.com/qbcore-framework/qb-core)
- [qb-inventory](https://github.com/qbcore-framework/qb-inventory) ([lj-inventory](https://github.com/loljoshie/lj-inventory) recommended)
- [progressbar](https://github.com/qbcore-framework/progressbar)

# Installation

# Step One:
Go to `qb-core > shared > main.lua` and search `QBCore.StarterItems` And change it to:

```lua
QBhared.StarterItems = {
    ['giftbox'] = { amount = 1, item = 'giftbox' },
}
```

# Step Two:
Go to `ls-startergift > image` and copy the image inside and then go to `qb-inventory > html > images` and paste it there

# Step Three:
Go to `qb-core > shared > items.lua` and paste the next code there:
```lua
["giftbox"] = {["name"] = "giftbox", ["label"] = "Welcome Gift Box", ["weight"] = 3700, ["type"] = "item", ["image"] = "giftbox.png", ["unique"] = true, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Welcome to the server!"},
```
