%
% Copyright 2024-2025 Maxim Penner
%
% This file is part of DECTNRP.
%
% DECTNRP is free software: you can redistribute it and/or modify
% it under the terms of the GNU Affero General Public License as
% published by the Free Software Foundation, either version 3 of
% the License, or (at your option) any later version.
%
% DECTNRP is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
% GNU Affero General Public License for more details.
% A copy of the GNU Affero General Public License can be found in
% the LICENSE file in the top-level directory of this distribution
% and at http://www.gnu.org/licenses/.

function [filenames] = ignore_keep_start(filenames, n_ignore, n_keep)

    if n_ignore > 0
        assert(numel(filenames) > n_ignore);
        filenames = filenames(n_ignore+1 : end);
    end

    if n_keep > 0
        assert(numel(filenames) >= n_keep);
        filenames = filenames(1:n_keep);
    end
end