local WORM = {}

WORM.Radius = 200

function WORM:SetRadius(radius)
    self.Radius = radius
end

function WORM:CalculateDistance(x, y, cx, cy)
    return math.sqrt((x-cx)^2 + (y-cy)^2)
end

function WORM:IsWithinRadius(x, y, cx, cy)
    return self:CalculateDistance(x, y, cx, cy) <= self.Radius
end

return WORM
