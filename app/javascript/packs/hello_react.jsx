import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'

const Hello = props => {
  // let url = "http://goo.gl/vyAs27"
  // if (props.name.image.url != null) {
  //   url = props.name.image.url
  // }

  return(
  <div>
    <ul>
      <li>Name: 
          { props.name.name }
      </li>
      <li>Description: 
          { props.name.description }
      </li>
      <li>There are 
          { props.name.count } items in stock.
      </li>
      <li>The weight of the product is 
          { props.name.weight } grams.
      </li>
      <li>The product costs $
          { props.name.price }
      </li>
      {/* <img src={require(url)}/> */}
    </ul>
  </div>)

}

Hello.defaultProps = {
  name: 'David'
}

Hello.propTypes = {
  name: PropTypes.object
}

function showImage(props) {
  return 
}


document.addEventListener('DOMContentLoaded', () => {
  const node = document.getElementById('productData')
  const data = JSON.parse(node.getAttribute('data'))
  ReactDOM.render(
    <Hello name={data} />,
    document.body.appendChild(document.createElement('div')),
  )
})