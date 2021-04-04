/* eslint-disable */

import React, { useEffect, useState } from 'react';
import Button from '../../atoms/button';
import ToDoForm from '../../molecules/ToDoForm'
import ToDoList from '../../molecules/ToDoList'

let originalList = [
  { text: 'AAA' },
  { text: 'AAAAAA' },
  { text: 'AAAAAAAAAA' }
]
const defaultChangedValue = false;


const ToDoPage = () => {
  const [list, setList] = useState(originalList);
  const [isChanged, setChanged] = useState(defaultChangedValue);
  const onAddNewItem = (value) => {
    setList([...list, { text:value }]);
  }

  useEffect(() => {
    if (JSON.stringify(list) === JSON.stringify(originalList)) {
      setChanged(false);
    } else {
      setChanged(true);
    }
  });

  const resetList = () => {
    setList(originalList);
  }
   
  const onSaveList = () => {
    originalList = list;
    setChanged(false);
  }

  const onRemove = (i) => {
    setList(list.filter((elem, index) => i !== index));
  }
  return (
    <>
      <ToDoList list={list} onRemove={onRemove} isChanged={isChanged} />
      <ToDoForm onSubmit={onAddNewItem}/>
      <Button onClick={resetList}>Reset</Button>
      <Button onClick={onSaveList}>Save</Button>
    </>
  );
}

export default ToDoPage;
