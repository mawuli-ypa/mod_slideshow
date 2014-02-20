%%%-------------------------------------------------------------------
%%% @author Mawuli Adzaku <mawuli@mawuli.me>
%%% @copyright (C) 2014, Mawuli Adzaku
%%% @doc
%%% Slideshow template tag
%%% @end
%%% Created : 20 Feb 2014 by Mawuli Adzaku <mawuli@mawuli.me>
%%%-------------------------------------------------------------------
-module(scomp_slideshow_slideshow).
-behaviour(gen_scomp).
-export([vary/2, render/3]).
-include("zotonic.hrl").
-define(DEFAULT_SLIDESHOW_CATEGORY, "slideshow").
-define(DEFAULT_SLIDESHOW_TAG, "rslides").

vary(_Params, _Context) -> nocache.
render(Params, _Vars, Context) ->
    ImageCategory = case proplists:get_value(category, Params) of 
                        undefined -> ?DEFAULT_SLIDESHOW_CATEGORY;
                        Category -> Category
                    end,
    SlideshowTag = case proplists:get_value(html_tag, Params) of 
                        undefined -> ?DEFAULT_SLIDESHOW_CATEGORY;
                        HtmlTag -> HtmlTag
                    end,
    Html = z_template:render("slideshow.tpl", 
                             [
                              {image_category, ImageCategory},
                              {slideshow_tag, SlideshowTag}
                             ],
                             Context
                            ),
    {ok, Html}.

