/* eslint-disable */

import styled from 'styled-components';

const StyledInput = styled.input(
  ({ disabled }) => `
    background-color: white;
    opacity: ${disabled ? '0.5' : '1'};
    font-size: 20px;
    border-radius: 2px;
    border: none;
    padding: 4px 8px;

    &:focus {
    }

  `);


const Input = ({ onChange, ...props }) => {
  const { disabled } = props;
  const handleChange = (ev) => {
    onChange(ev.target.value);
  };
  return <StyledInput {...props} onChange={handleChange} />;
}

export default Input;