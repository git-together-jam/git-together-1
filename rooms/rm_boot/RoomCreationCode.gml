var stages_json = load_json("stages_config.json");
global.Stages = stages_json[? "stages"];

room_goto_next();