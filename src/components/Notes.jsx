import React from "react";

function Notes({ data }) {
  return (
    <section>
      <button>+ create new note</button>
      <article>
        <ul>
          {data.map((note) => {
            const { title, tags, content, lastEdited, isArchived } = note;
            return (
              <li key={title} className="clickNote">
                <h4>{title}</h4>
                <div className="tNoteTag">
                  {tags.map((tea, index) => {
                    return <span key={index}>{tea}</span>;
                  })}
                </div>
                <p className="lastEditied">{lastEdited}</p>
              </li>
            );
          })}
        </ul>
      </article>
    </section>
  );
}

export default Notes;
