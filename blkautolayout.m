function blkautolayout()

model = gcs;

fprintf('******************** blkautolayout Begin ********************\n')
fprintf('ModelName:[%s]\n', model);

% 現在階層のブロックを取得(現在の階層パスは除く)
blocks = find_system(gcs, 'SearchDepth',1, 'IncludeCommented','on', 'LookUnderMasks','none');
blocks = blocks(2:end);

soucesBlockPathList = FindSoucesBlockPath(model);

fprintf('********************* blkautolayout End *********************\n')


end


function soucesBlockPathList = FindSoucesBlockPath(model)

inportBlocks = find_system(model, 'SearchDepth',1, 'BlockType','Inport');

soucesBlockPathList = inportBlocks;

end