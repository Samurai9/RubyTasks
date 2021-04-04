/* eslint-disable */
import styled from 'styled-components';

const StyledH2Text = styled.h2(
    ({isChanged}) => `
    color: ${isChanged ? 'yellow' : 'white'};
`)

const H2Text = (props) => {
    const { children, isChanged} = props;
    return <StyledH2Text isChanged={isChanged}>{children}</StyledH2Text>
}

export default H2Text;