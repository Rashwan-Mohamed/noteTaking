import React from "react";

function Notes({ data, hnadleSelectNote, handleCreatNewNote, setShowNote }) {
  const formatDate = (date) => {
    const fDate = new Date(date);
    return new Intl.DateTimeFormat("en-US", {
      day: "2-digit",
      month: "short",
      year: "numeric",
    }).format(fDate);
  };
  return (
    <section className="sectionNotee">
      <button onClick={() => handleCreatNewNote()} className="createNew">
        + create new note
      </button>
      <article className="ticles">
        <ul>
          {data.map((note, index) => {
            const { title, tags, content, lastEdited, isArchived } = note;
            return (
              <li
                onClick={() => {
                  setShowNote(true);
                  hnadleSelectNote(index);
                }}
                key={title}
                className="clickNote"
              >
                <h4>{title}</h4>
                <div className="tNoteTag">
                  {tags.map((tea, index) => {
                    return <span key={index}>{tea}</span>;
                  })}
                </div>
                <p className="lastEditied">{formatDate(lastEdited)}</p>
              </li>
            );
          })}
        </ul>
      </article>
    </section>
  );
}

export default Notes;
