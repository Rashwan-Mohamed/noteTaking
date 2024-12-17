import { useState } from "react";
import data from "./data.json";
import Notes from "./components/Notes";
import Tags from "./components/Tags";
import ViewNote from "./components/ViewNote";
import Aside from "./components/Aside";

function App() {
  const [notes, setNotes] = useState(true);
  const [note, setNoto] = useState(data.notes);
  const [chosen, setChosen] = useState(0);
  const handleNoteState = (to) => {
    setNotes(to);
  };
  function handleEditNote(index, note) {}
  return (
    <>
      <main>
        <nav>
          <h3>{notes ? "All" : "Archived"} Notes</h3>
          <div className="rightNav">
            <div className="searck">
              <input type="text" />
            </div>
            <button className="settings">
              <img src="src\assets\images\icon-settings.svg" alt="" />
            </button>
          </div>
        </nav>
        <Aside
          state={notes}
          handleNoteState={handleNoteState}
          note={note}
        ></Aside>
        <Notes data={note}></Notes>
        <ViewNote chosen={note[chosen]}></ViewNote>
      </main>
    </>
  );
}

export default App;
