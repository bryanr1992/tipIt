#  iOS CodePath Pre-work - *Tip Calculator*

**tipIt** This is a demo application required as part of a prework selection to [CodePath](https://codepath.org/#).

Submitted by: **Bryan Rivas**

Time spent: **11** hours spent in total. **6** hours spent familiarizing myself with swift through the use of playground 
            and **5** hours of actual coding plus looking up documentation.

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:
* [x] Settings page to change the default tip percentage.
* [x] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [x] Added an app icon and a launch image
- [ ] Allow user to switch between a light and dark theme

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='http://g.recordit.co/B3be4TyTrs.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [RcordIt](https://recordit.co/#).

## Notes

* Setting a custom range for the user input was a bit confusing at first.
* Trying to use a Text View instead of a Text Field was a bit tricky at first since we have to conform to a delegate in order to
  handle events. In the end decided to stick to the Text Field instead of the Text View.
* Currently still trying to figure out how to remember the bill amount across app restarts.

## License

    Copyright [2019] [Bryan Rivas]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
