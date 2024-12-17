import React from "react";

function ViewNote({ chosen }) {
  const { title, tags, content, lastEdited, isArchived } = chosen;

  return (
    <section className="mino">
      <h2>{title}</h2>
      <div className="noteInfo">
        <div className="oneEd">
          <p>
            <img src="src\assets\images\icon-tag.svg" alt="" />
            <span>Tags</span>
          </p>
          <p>{tags.join(",")}</p>
        </div>
        <div className="oneEd">
          <p>
            <img src="src\assets\images\icon-clock.svg" alt="" />
            <span>Last Edited</span>
          </p>
          <p>{lastEdited}</p>
        </div>
      </div>
      <article className="mainContent">{content}</article>
      <aside className="noteAside">
        <button>
          <img src="src\assets\images\icon-home.svg" alt="" />
          <span> Archive Note</span>
        </button>
        <button>
          <img src="src\assets\images\icon-delete.svg" alt="" />
          <span> Delete Note</span>
        </button>
      </aside>
      <footer>
        <button>Save Note</button>
        <button>Cancel</button>
      </footer>
    </section>
  );
}

export default ViewNote;
