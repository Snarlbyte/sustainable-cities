{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_enemy2",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":{"name":"obj_floor_full","path":"objects/obj_floor_full/obj_floor_full.yy",},"eventNum":0,"eventType":4,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":3,"eventType":2,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":null,"propertyId":{"name":"extraSpeed","path":"objects/obj_enemy1_1/obj_enemy1_1.yy",},"value":"32",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":null,"propertyId":{"name":"hp","path":"objects/obj_enemy1_1/obj_enemy1_1.yy",},"value":"100",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":null,"propertyId":{"name":"score_amount","path":"objects/obj_enemy1_1/obj_enemy1_1.yy",},"value":"3",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy1","path":"objects/obj_enemy1/obj_enemy1.yy",},"propertyId":{"name":"score_amount","path":"objects/obj_enemy1/obj_enemy1.yy",},"value":"3",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy1","path":"objects/obj_enemy1/obj_enemy1.yy",},"propertyId":{"name":"extraSpeed","path":"objects/obj_enemy1/obj_enemy1.yy",},"value":"4",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy1","path":"objects/obj_enemy1/obj_enemy1.yy",},"propertyId":{"name":"hp","path":"objects/obj_enemy1/obj_enemy1.yy",},"value":"75",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy1","path":"objects/obj_enemy1/obj_enemy1.yy",},"propertyId":{"name":"score_direction","path":"objects/obj_enemy1/obj_enemy1.yy",},"value":"45, 135",},
  ],
  "parent": {
    "name": "Objects",
    "path": "folders/Objects.yy",
  },
  "parentObjectId": {
    "name": "obj_enemy1",
    "path": "objects/obj_enemy1/obj_enemy1.yy",
  },
  "persistent": false,
  "physicsAngularDamping": 0.1,
  "physicsDensity": 0.5,
  "physicsFriction": 0.2,
  "physicsGroup": 1,
  "physicsKinematic": false,
  "physicsLinearDamping": 0.1,
  "physicsObject": false,
  "physicsRestitution": 0.1,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsShapePoints": [],
  "physicsStartAwake": true,
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"jump_height","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"16","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"jump_time","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"60","varType":0,},
  ],
  "solid": false,
  "spriteId": {
    "name": "spr_enemy2",
    "path": "sprites/spr_enemy2/spr_enemy2.yy",
  },
  "spriteMaskId": {
    "name": "spr_enemy2",
    "path": "sprites/spr_enemy2/spr_enemy2.yy",
  },
  "visible": true,
}