import { useEffect, useState } from "react";
import data from "./data.json";
import Notes from "./components/Notes";
import ViewNote from "./components/ViewNote";
import Aside from "./components/Aside";
import UseWidth from "./UseWidth";
import Nav from "./components/Nav";

let rashwan = { notes: data.notes, unTitledNoteCouter: 0 };

function App() {
  const width = UseWidth();
  const [isArchived, setIsArchived] = useState(false);
  const [note, setNoto] = useState(rashwan.notes);
  const [active, setActive] = useState(false);
  const [chosen, setChosen] = useState(0);
  const [searchQuery, setSearchQuery] = useState("");
  const [tags, setTags] = useState("");
  const [showNote, setShowNote] = useState(true);
  function timeNow() {
    let nd = new Date();
    note.lastEdited = nd.toISOString();
    return nd.toISOString();
  }
  useEffect(() => {
    const savedData = localStorage.getItem("myArray");
    if (savedData) {
      rashwan = JSON.parse(savedData);
    } else {
      localStorage.setItem("myArray", JSON.stringify(rashwan));
    }
  }, []);
  const handleNoteState = (to) => {
    setIsArchived(!to);
  };

  function handleEditNote(title, operation, payload) {
    if (operation === "edit") {
      let nsa = rashwan.notes.filter((note) => {
        if (note.title !== title) return note;
        else {
          console.log(payload.iContent);
          note.content = payload.iContent;
          note.title = payload.ititle;
          note.tags = payload.itags;
          note.naew = false;
          note.lastEdited = timeNow();
          return note;
        }
      });
      rashwan.notes = nsa;
      setActive("edited");
    } else if (operation === "archieve" || operation === "Un-Archive") {
      let eas = rashwan.notes.filter((note) => {
        if (note.title !== title) return note;
        else {
          note.isArchived = !note.isArchived;
          return note;
        }
      });
      rashwan.notes = eas;

      setActive(`${operation}d`);
    } else if (operation === "delete") {
      let rea = rashwan.notes.filter((note, id) => {
        if (note.title !== title) return note;
      });
      rashwan.notes = rea;
      setActive("deleted");
    }

    reloadNotes();
  }
  function hnadleSelectNote(id) {
    setChosen(id);
  }
  const handleTagSelect = (tag) => {
    setTags(tag);
    setChosen(0);
  };
  const reloadNotes = () => {
    let newNotes = rashwan.notes.filter((note) => {
      if (note.isArchived !== isArchived) {
        return null;
      }
      if (tags && !note.tags.includes(tags)) {
        return null;
      }
      return note;
    });
    setNoto(newNotes);
    localStorage.setItem("myArray", JSON.stringify(rashwan));
  };
  const handleCreatNewNote = () => {
    rashwan.notes.unshift({
      title: `untitled note ${++rashwan.unTitledNoteCouter}`,
      tags: [],
      content: "",
      lastEdited: timeNow(),
      isArchived: false,
      naew: true,
    });
    reloadNotes();
  };

  useEffect(() => {
    if (searchQuery.length) {
      let searchResult = [];
      for (let i = 0; i < rashwan.notes.length; i++) {
        const { title, tags: tea, content } = rashwan.notes[i];
        if (title.match(searchQuery)) {
          searchResult.push(rashwan.notes[i]);
          continue;
        }
        for (let i = 0; i < tea.length; i++) {
          if (tea[i].match(searchQuery)) {
            searchResult.push(rashwan.notes[i]);
            continue;
          }
        }
        if (searchResult.length) {
          continue;
        }
        if (content.match(searchQuery)) {
          searchResult.push(rashwan.notes[i]);
        }
      }
      setNoto(searchResult);
    } else {
      reloadNotes();
    }
    setChosen(0);
  }, [tags, isArchived, searchQuery]);
  useEffect(() => {
    setTimeout(() => {
      setActive(false);
    }, 2000);
    return () =>
      clearTimeout(() => {
        setActive(false);
      }, 2000);
  }, [active]);

  return (
    <>
      <main
        className={width < 768 && (showNote ? "activeNote" : "notActiveNote")}
      >
        {active && (
          <div className="tmpMessage">note {active} successfully!</div>
        )}
        {width < 768 ? (
          <>
            <Nav
              showNote={showNote}
              width={width}
              isArchived={isArchived}
              searchQuery={searchQuery}
              setSearchQuery={setSearchQuery}
            ></Nav>
            {showNote ? (
              <ViewNote
                showNote={showNote}
                setShowNote={setShowNote}
                note={rashwan.notes}
                handleEditNote={handleEditNote}
                chosen={note[chosen]}
                chosState={chosen}
              ></ViewNote>
            ) : (
              <>
                <Aside
                  handleTagSelect={handleTagSelect}
                  isArchived={isArchived}
                  handleNoteState={handleNoteState}
                  note={note}
                ></Aside>
                <Notes
                  width={width}
                  setShowNote={setShowNote}
                  handleCreatNewNote={handleCreatNewNote}
                  hnadleSelectNote={hnadleSelectNote}
                  data={note}
                  isArchived={isArchived}
                ></Notes>
              </>
            )}
          </>
        ) : (
          <>
            {" "}
            <Nav
              width={width}
              isArchived={isArchived}
              searchQuery={searchQuery}
              setSearchQuery={setSearchQuery}
            ></Nav>
            <Aside
              handleTagSelect={handleTagSelect}
              isArchived={isArchived}
              handleNoteState={handleNoteState}
              note={note}
            ></Aside>
            <Notes
              handleCreatNewNote={handleCreatNewNote}
              hnadleSelectNote={hnadleSelectNote}
              data={note}
              isArchived={isArchived}
            ></Notes>
            <ViewNote
              note={rashwan.notes}
              handleEditNote={handleEditNote}
              chosen={note[chosen]}
              chosState={chosen}
            ></ViewNote>
          </>
        )}
      </main>
    </>
  );
}

export default App;
