import React from "react"
import PropTypes from "prop-types"
import axios from "axios"
import ProgressButton from 'react-progress-button'

class HelloWorld extends React.Component {
  render () {
    return (
      <React.Fragment>
      <div>
        <ProgressButton onClick={this.handleClick}>
          Go!
        </ProgressButton>
      </div>

        Greeting: {this.props.greeting}
      </React.Fragment>
    );
  }
   handleClick() {
    return new Promise(function(resolve, reject) {
      setTimeout(resolve, 3000)
    })
  }
}

HelloWorld.propTypes = {
  greeting: PropTypes.string
};
export default HelloWorld
