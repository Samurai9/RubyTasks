/* eslint-disable */
import styled from 'styled-components';

const StyledButton = styled.button(
    ({ disabled }) => `
    color: black;
    cursor: ${disabled ? 'default' : 'pointer'};
    opacity: ${disabled ? '0.5': '1'};
    font-size: 20px;
    border-radius: 2px;
    border: none;
    padding: 4px 8px;
    margin: 0px 10px;

    &:hover {
        border: none;
        background-color: white;
    }
`);

const Button = (props) => {
    const { children, ...otherProps } = props;
    return <StyledButton {...otherProps}>{children}</StyledButton>
}

export default Button;

