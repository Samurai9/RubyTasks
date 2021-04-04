/* eslint-disable */

import ToDoListItem from '../../atoms/toDoListItem';
import H2Text from '../../atoms/h2Text';
import Button from '../../atoms/button'

const ToDoList = (props) => {
  const { list, onRemove, isChanged } = props;
  return (
    <>
      <H2Text isChanged={isChanged}>AAAAAAA list</H2Text>
      <ul>
        {list.map((listItem, i) => (
          <ToDoListItem>
            {listItem.text}
            <Button onClick={() => onRemove(i)}>
              [X]
            </Button>
          </ToDoListItem>
        ))}
      </ul>
    </>
  );
}

export default ToDoList;