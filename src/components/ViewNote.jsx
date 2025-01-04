import React from "react";

function ViewNote({ chosen }) {
  const { title, tags, content, lastEdited, isArchived } = chosen;
  const formatDate = (date) => {
    const fDate = new Date(date);
    return new Intl.DateTimeFormat("en-US", {
      day: "2-digit",
      month: "short",
      year: "numeric",
    }).format(fDate);
  };
  console.log(content);
  return (
    <section className="mino">
      <div className="noteInfo">
        <h2>{title}</h2>
        <div className="oneEd">
          <p className="ponEn">
            <svg
              xmlns="http://www.w3.org/2000/svg"
              width="24"
              height="24"
              fill="none"
              viewBox="0 0 24 24"
            >
              <path
                stroke="#2b303b"
                strokeLinecap="round"
                strokeLinejoin="round"
                strokeWidth="1.8"
                d="M3.016 5.966c.003-1.411 1.07-2.677 2.456-2.916.284-.05 3.616-.042 4.995-.041 1.364 0 2.527.491 3.49 1.452 2.045 2.042 4.088 4.085 6.128 6.13 1.208 1.21 1.224 3.066.022 4.28a805.496 805.496 0 0 1-5.229 5.228c-1.212 1.201-3.069 1.186-4.279-.022-2.064-2.058-4.127-4.115-6.182-6.182-.795-.8-1.264-1.766-1.368-2.895-.084-.903-.035-4.26-.033-5.034Z"
                clipRule="evenodd"
              />
              <path
                stroke="#2b303b"
                strokeLinecap="round"
                strokeLinejoin="round"
                strokeWidth="1.8"
                d="M9.907 8.315a1.607 1.607 0 0 1-1.61 1.583c-.872-.002-1.599-.73-1.594-1.596a1.604 1.604 0 0 1 1.633-1.607c.864.003 1.575.736 1.571 1.62Z"
                clipRule="evenodd"
              />
            </svg>
            <span>Tags</span>
          </p>
          <p>{tags.join(",")}</p>
        </div>
        <div className="oneEd">
          <p className="ponEn">
            <img src="src\assets\images\icon-clock.svg" alt="" />
            <span>Last Edited</span>
          </p>
          <p>{formatDate(lastEdited)}</p>
        </div>
      </div>
      <article
        style={{ whiteSpace: "pre-line" }}
        className="mainContent"
      >{`${content}`}</article>
      <aside className="noteAside">
        <button className="asideBtns" >
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="24"
            height="24"
            fill="none"
            viewBox="0 0 24 24"
          >
            <path
              stroke="#e0e4ea"
              stroke-linecap="round"
              stroke-linejoin="round"
              stroke-width="1.5"
              d="M21 7.782v8.435C21 19.165 18.919 21 15.974 21H8.026C5.081 21 3 19.165 3 16.216V7.782C3 4.834 5.081 3 8.026 3h7.948C18.919 3 21 4.843 21 7.782Z"
            />
            <path
              stroke="#e0e4ea"
              stroke-linecap="round"
              stroke-linejoin="round"
              stroke-width="1.5"
              d="m15 14-3.002 3L9 14M11.998 17v-7M20.934 7H3.059"
            />
          </svg>
          <span> Archive Note</span>
        </button>
        <button className="asideBtns">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="24"
            height="25"
            fill="none"
            viewBox="0 0 24 25"
          >
            <path
              stroke="#e0e4ea"
              stroke-Linecap="round"
              strokeLinejoin="round"
              strokeWidth="1.5"
              d="m14.852 3.879.818 1.785h2.64c.811 0 1.47.658 1.47 1.47V8.22c0 .555-.45 1.005-1.006 1.005H5.005C4.45 9.226 4 8.776 4 8.221V7.133c0-.811.658-1.47 1.47-1.47h2.639l.818-1.784c.246-.536.78-.879 1.37-.879h3.185c.59 0 1.125.343 1.37.879ZM18.24 9.3v8.686c0 1.665-1.333 3.014-2.977 3.014H8.517c-1.644 0-2.977-1.349-2.977-3.014V9.301M10.2 12.816v4.509m3.38-4.509v4.509"
            />
          </svg>
          <span> Delete Note</span>
        </button>
      </aside>
      <footer>
        <button className="ftbtn fotbtnsv">Save Note</button>
        <button className="ftbtn fotbtncn">Cancel</button>
      </footer>
    </section>
  );
}

export default ViewNote;
