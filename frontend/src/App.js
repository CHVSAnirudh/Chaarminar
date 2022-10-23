import logo from './logo.svg';
import './App.css';
import { BrowserRouter as Router, Switch, Route } from "react-router-dom";
// import { AnimatePresence } from "framer-motion";
// import NavBar from './components/pages/NavBar';
import Emotion from './components/pages/Emotion';
import Home from './components/pages/Home';
import Location from './components/pages/Location';
import Music from './components/pages/Music';
import Random from './components/pages/Random';
import Video from './components/pages/Video';

function App() {
  return (
    <>
      <Router>
        {/* <NavBar /> */}
        <Route
          render={({ location }) => (
            // <AnimatePresence exitBeforeEnter>
              <Switch>
                <Route path="/" exact component={Home} />
                <Route path="/video" exact component={Video} />

                <Route path="/location" exact component={Location} />
                <Route path="/emotions" exact component={Emotion} />
                <Route path="/music" exact component={Music} />
                <Route path="/random" exact component={Random} />
              </Switch>
            // </AnimatePresence>
          )}
        />
      </Router>
    </>
  );
}

export default App;
