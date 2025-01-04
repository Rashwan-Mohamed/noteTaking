import React from "react";

function Notes({ data }) {
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
      <button className="createNew">+ create new note</button>
      <article className="ticles">
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
