/* eslint-disable */
import styled from 'styled-components';

const StyledText = styled.h2(
    ({}) => `
    color: yellow;
    font-size: 50px;
`)

const text = () => {
    // const { children } = props;
    return <StyledText></StyledText>
}

export default text;