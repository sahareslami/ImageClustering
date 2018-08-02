function [allPhoto] = getimages()
allSubFolders = genpath('/Users/applestore/Desktop/orl_faces');
% Parse into a cell array.
remain = allSubFolders;
listOfFolderNames = {};
allPhoto = {};


while true
    [singleSubFolder, remain] = strtok(remain, ':');
    if isempty(singleSubFolder)
        break;
    end
    listOfFolderNames = [listOfFolderNames singleSubFolder];
end


numberOfFolders = length(listOfFolderNames)

% Process all image files in those folders.
for k = 1 : numberOfFolders
    % Get this folder and print it out.
    thisFolder = listOfFolderNames{k};
    %fprintf('Processing folder %s\n', thisFolder);
    filePattern = sprintf('%s/*.pgm' , thisFolder);
    baseFileNames = dir(filePattern);
    numberOfImageFiles = length(baseFileNames);
    % Now we have a list of all files in this folder.
    if numberOfImageFiles >= 1
        for f = 1 : numberOfImageFiles
            allPhoto = [allPhoto imread(fullfile(thisFolder, baseFileNames(f).name))];

        end
    end
end

end
