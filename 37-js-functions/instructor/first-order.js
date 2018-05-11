// First-order functions

function buildMailSender(sender) {

  function sendMail(sendTo) {
    console.log("Mail sent by " + sender + " to " + sendTo + ".");
  }
  return sendMail;
}

buildMailSender("Laura")("Santa");
// var sendDansMail = buildMailSender("Daniel");
//
// sendDansMail("the North Pole");
// sendDansMail("his mother");
//
// var sendAprilsMail = buildMailSender("April");
//
// sendAprilsMail("North Carolina");
// sendAprilsMail("her mom");
//
// sendDansMail("Argentina");
