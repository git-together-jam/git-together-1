var num_of_completed = ds_list_size(global.progress[?"completed"]);
txt = string(num_of_completed) + "/" + string(NUM_OF_STAGES) + " completed";
percentage = floor((num_of_completed / NUM_OF_STAGES) * 100);
bar_width = 0;