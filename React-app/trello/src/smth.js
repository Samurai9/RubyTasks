/* eslint-disable */

import React from 'react';

const Smth = ({list}) => {
    return (
    <>
        <ul>
            {list.map((listItem, index) =>
            <li key={index}>{listItem.name}</li>
            )}
        </ul>
    </>)
}

export default Smth;