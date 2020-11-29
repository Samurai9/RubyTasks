import 'jquery';
import 'popper.js';
import 'bootstrap';

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import Sorter from 'components/sort.js';

window.onload = function() {
    Array.from(document.querySelectorAll('.js-cards')).forEach(($el) => {
        new Sorter($el)
    });
}
