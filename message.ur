
table messages : { Id : int, Username : string, Content : string }

fun main () : transaction page =
    msgs <- queryX (SELECT * FROM messages);

    return <html>
      <body>
        <h1>Message Board</h1>

        <form>
          <textbox{#Username}/>
          <br/>
          <textbox{#Content}/>
          <br/>
          <submit value="Post"/>
        </form>

        <hr/>

        <h2>Messages</h2>
        <ul>
          {List.mapX (fn m =>
            <li>{[m.Username]}: {[m.Content]}</li>
          ) msgs}
        </ul>
      </body>
    </html>
