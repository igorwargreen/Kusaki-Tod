data.raw["unit-spawner"]["biter-spawner"].result_units = (function()
                     local res = {}
                     res[1] = {"small-biter", {{0.0, 0.3}, {0.4, 0.0}}}
                     if not data.is_demo then
                       -- from evolution_factor 0.3 the weight for medium-biter is linearly rising from 0 to 0.3
                       -- this means for example that when the evolution_factor is 0.45 the probability of spawning
                       -- a small biter is 66% while probability for medium biter is 33%.
                       res[2] = {"medium-biter", {{0.25, 0.0}, {0.5, 0.3}, {0.75, 0.0}}}
                       -- for evolution factor of 1 the spawning probabilities are: small-biter 0%, medium-biter 1/8, big-biter 4/8, behemoth biter 3/8
                       res[3] = {"big-biter", {{0.5, 0.0}, {0.75, 0.3}, {0.95, 0.0}}}
                       res[4] = {"behemoth-biter", {{0.9, 0.0}, {1.0, 0.3}}}
                     end
                     return res
                   end)()
data.raw["unit-spawner"]["biter-spawner"].result_units =
    {
      {"small-biter", {{0.0, 0.3}, {0.25, 0}}},
      {"small-spitter", {{0.25, 0.0}, {0.33, 0.3}, {0.5, 0.0}}},
      {"medium-spitter", {{0.4, 0.0}, {0.5, 0.3}, {0.75, 0.0}}},
      {"big-spitter", {{0.5, 0.0}, {0.75, 0.3}, {0.95, 0.0}}},
      {"behemoth-spitter", {{0.9, 0.0}, {1.0, 0.3}}},
    }

data.raw["unit"]["behemoth-biter"].max_health = 6000
data.raw["unit"]["behemoth-spitter"].max_health = 3000


