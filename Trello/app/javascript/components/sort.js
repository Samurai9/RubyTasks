import orderBy from 'lodash/orderBy';

class Sorter {
  constructor($el) {
    this.$el = $el;
    this.items = this.$el.querySelectorAll('.js-item');
    this.list = this.$el.querySelector('.js-cards-list');

    this.sortButtonASC = this.$el.querySelector('.js-sort-asc');
    this.sortButtonDESC = this.$el.querySelector('.js-sort-desc');
    
    this.dataAttributes = Array.from(this.items).map(
      item => {
        return {
          node: item,
          ...JSON.parse(item.getAttribute('data-card')),
        }
      }
    );

    this.bindEvens();
  }

  bindEvens() {
    this.sortButtonASC.addEventListener('click', this.sortByTitleASC);
    this.sortButtonDESC.addEventListener('click', this.sortByTitleDESC);
  }

  sortByTitleASC = () => {
    this.sortButtonASC.classList.add('hidden');
    this.sortButtonDESC.classList.remove('hidden');

    const sortedItemByTitle = orderBy(this.dataAttributes, ['id'], ['asc']);
    sortedItemByTitle.forEach((item) => this.list.appendChild(item.node));
  }

  sortByTitleDESC = () => {
    this.sortButtonASC.classList.remove('hidden');
    this.sortButtonDESC.classList.add('hidden');

    const sortedItemByTitleDesc = orderBy(this.dataAttributes, ['id'], ['desc']);
    sortedItemByTitleDesc.forEach((item) => this.list.appendChild(item.node));
  }
}

export default Sorter;