var express = require("express");
var router = express.Router();

var database = require("../database.js");
const session = require("express-session");
const { jsPDF } = require("jspdf");

/* GET home page. */
router.get("/", function (req, res, next) {
  res.render("index", { title: "Express", session: req.session });
});

router.post("/login", function (request, response, next) {
  //console.log(request.body);
  var user_email_address = request.body.user_email_address;
  var user_password = request.body.user_password;
  if (user_email_address && user_password) {
    query = `select * from user_login_info where email = "${user_email_address}"`;
    database.query(query, function (error, data) {
      if (data.length > 0) {
        console.log(data);
        for (var count = 0; count < data.length; count++) {
          if (data[count].password === user_password) {
            request.session.first_name = data[count].first_name;
            request.session.user_id = data[count].user_id;
            response.redirect("/form");
          } else {
            request.session.error = "Incorrect Password";
            response.redirect("/");
          }
        }
      } else {
        request.session.error = "Incorrect Email";
        response.redirect("/");
      }
    });
  } else {
    response.send("Enter Details");
    response.end();
  }
});

router.post("/change_password", function (request, response, next) {
  //console.log(request.body);
  var user_email_address = request.body.user_email_address;
  var old_password = request.body.old_password;
  var new_password = request.body.new_password;
  if (user_email_address && old_password && new_password) {
    query = `select * from user_login_info where email = "${user_email_address}"`;
    database.query(query, function (error, data) {
      if (data.length > 0) {
        console.log(data);
        for (var count = 0; count < data.length; count++) {
          if (data[count].password === old_password) {
            const q = `UPDATE user_login_info SET password = ${new_password} WHERE email = ${user_email_address}`;

            database.query(q, function (error, data) {
              if (error) {
                request.session.error = "SOmething went wrong";
                response.redirect("/change_password");
              } else {
                request.session.error = "Password changed successfully";
                response.redirect("/change_password");
              }
            });
          } else {
            request.session.error = "Incorrect Old Password";
            response.redirect("/change_password");
          }
        }
      } else {
        request.session.error = "Incorrect Email";
        response.redirect("/change_password");
      }
    });
  } else {
    response.send("Enter Details");
    response.end();
  }
});

router.post("/signup", function (request, response, next) {
  var fname = request.body.fname;
  var lname = request.body.lname;
  var email = request.body.email;
  console.log(request.body);
  var category = request.body.category;
  var password = request.body.password;
  if (password[0] != password[1]) {
    request.session.error = "Passwords do not match";
    response.redirect("/signup");
  }
  if (fname && lname && email && category && password) {
    check_dup = `select * from user_login_info where email = "${email}"`;
    database.query(check_dup, function (error, data) {
      if (data.length > 0) {
        console.log(data);
        request.session.error = "Email Already Registered";
        response.redirect("/signup");
      } else {
        const query = `INSERT INTO user_login_info (first_name, last_name, email, password, category) VALUES (?, ?, ?, ?, ?)`;
        database.query(
          query,
          [fname, lname, email, password[0], category],
          function (error, result) {
            if (error) {
              console.error("Error inserting data:", error);
              request.session.error = error;
              // Handle error appropriately
            } else {
              console.log("Data inserted successfully");
              // Handle successful insertion
              response.redirect("/");
            }
          }
        );
      }
    });
  } else {
    request.session.error = "Fill all details";
    response.redirect("/signup");
    response.end();
  }
});

router.post("/page1", function (request, response, next) {
  const id = request.session.user_id;
  query = `select * from page1 where user_id = "${id}"`;
  database.query(query, function (error, data) {
    if (data.length > 0) {
      const del_query = `delete from page1 where user_id = ${id}`;
      database.query(del_query, function (error, result) {
        if (error) {
          console.error("Error deleting data:", error);
          request.session.error = error;
          // Handle error appropriately
        } else {
          console.log("Data deleted successfully");
        }
      });

      let info = [];
      info.push(id);

      for (let it in request.body) {
        info.push(request.body[it]);
      }
      const query = `INSERT INTO page1 (user_id, advert_number, application_number, department, date_of_application, post_applied_for, First_name, Last_name, DOB, Marital_Status, Fathers_Name, Middle_name, Nationality, Gender, category, ID_Proof, Correspondence_Address, Permanent_Address, Mobile, Alternate_Mobile, Landline_Number, email, alt_email) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);`;
      database.query(query, info, function (error, result) {
        if (error) {
          console.error("Error inserting data:", error);
          request.session.error = error;
          // Handle error appropriately
        } else {
          console.log("Data inserted successfully");
          // Handle successful insertion
          response.redirect("/page2");
        }
      });
    } else {
      let info = [];
      info.push(id);

      for (let it in request.body) {
        info.push(request.body[it]);
      }
      const query = `INSERT INTO page1 (user_id, advert_number, application_number, department, date_of_application, post_applied_for, First_name, Last_name, DOB, Marital_Status, Fathers_Name, Middle_name, Nationality, Gender, category, ID_Proof, Correspondence_Address, Permanent_Address, Mobile, Alternate_Mobile, Landline_Number, email, alt_email) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);`;
      database.query(query, info, function (error, result) {
        if (error) {
          console.error("Error inserting data:", error);
          request.session.error = error;
          // Handle error appropriately
        } else {
          console.log("Data inserted successfully");
          // Handle successful insertion
          response.redirect("/page2");
        }
      });
    }
  });
  // console.log(request.body);
});

router.post("/page2", function (request, response, next) {
  const id = request.session.user_id;
  const query = `INSERT INTO page2 (user_id, PhD_university, PhD_supervisor, PhD_thesis_defence, PhD_Department, PhD_year_of_joining, PhD_Award_date, PhD_thesis_title, MTech_degree, MTech_branch, MTech_year_of_completion, MTech_CGPA, MTech_university, MTech_year_of_joining, MTech_duration, MTech_division, BTech_degree, BTech_branch, BTech_year_of_completion, BTech_cgpa, BTech_university, BTech_year_of_joining, BTech_duration, BTech_division, diploma_12th, diploma_10th, additional_qualification) 
  VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`;

  const formData = [
    id,
    request.body.PhD_university,
    request.body.PhD_supervisor,
    request.body.PhD_thesis_defence,
    request.body.PhD_Department,
    request.body.PhD_year_of_joining,
    request.body.PhD_Award_date,
    request.body.PhD_thesis_title,
    request.body.MTech_degree,
    request.body.MTech_branch,
    request.body.MTech_year_of_completion,
    request.body.MTech_CGPA,
    request.body.MTech_university,
    request.body.MTech_year_of_joining,
    request.body.MTech_duration,
    request.body.MTech_division,
    request.body.BTech_degree,
    request.body.BTech_branch,
    request.body.BTech_year_of_completion,
    request.body.BTech_cgpa,
    request.body.BTech_university,
    request.body.BTech_year_of_joining,
    request.body.BTech_duration,
    request.body.BTech_division,
    JSON.stringify(request.body["12th"]),
    JSON.stringify(request.body["10th"]),
    JSON.stringify(request.body["add_degree1"]),
  ];

  const selectQuery = `SELECT * FROM page2 WHERE user_id = ?`;

  database.query(selectQuery, id, function (error, data) {
    if (error) {
      console.error("Error selecting data:", error);
      request.session.error = error;
      // Handle error appropriately
    } else {
      if (data.length > 0) {
        const deleteQuery = `DELETE FROM page2 WHERE user_id = ?`;
        database.query(deleteQuery, id, function (error, result) {
          if (error) {
            console.error("Error deleting data:", error);
            request.session.error = error;
            // Handle error appropriately
          } else {
            console.log("Data deleted successfully");
          }
        });
      }

      database.query(query, formData, function (error, result) {
        if (error) {
          console.error("Error inserting data:", error);
          request.session.error = error;
          // Handle error appropriately
        } else {
          console.log("Data inserted successfully");
          // Handle successful insertion
          response.redirect("/page3");
        }
      });
    }
  });
});

router.post("/page3", function (request, response, next) {
  const id = request.session.user_id;
  console.log("user: " + id);
  const query = `INSERT INTO page3 (user_id, present_emp_position, present_emp_org, present_emp_status, present_emp_date_of_joining, present_emp_date_of_leaving, present_emp_duration, employment_history, experience_3yrs, teaching_experience, research_experience, industrial_experience, area_of_speacialization, current_area_of_research)
  VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`;

  const formData = [
    id,
    request.body.present_emp_position,
    request.body.present_emp_org,
    request.body.present_emp_status,
    request.body.present_emp_date_of_joining,
    request.body.present_emp_date_of_leaving,
    request.body.present_emp_duration,
    JSON.stringify(request.body.employment_history),
    request.body.experience_3yrs,
    JSON.stringify(request.body.teaching_experience),
    JSON.stringify(request.body.research_experience),
    JSON.stringify(request.body.industrial_experience),
    request.body.area_of_speacialization,
    request.body.current_area_of_research,
  ];

  const selectQuery = `SELECT * FROM page3 WHERE user_id = ?`;

  database.query(selectQuery, id, function (error, data) {
    if (error) {
      console.error("Error selecting data:", error);
      request.session.error = error;
      // Handle error appropriately
    } else {
      if (data.length > 0) {
        const deleteQuery = `DELETE FROM page3 WHERE user_id = ?`;
        database.query(deleteQuery, id, function (error, result) {
          if (error) {
            console.error("Error deleting data:", error);
            request.session.error = error;
            // Handle error appropriately
          } else {
            console.log("Data deleted successfully");
          }
        });
      }

      database.query(query, formData, function (error, result) {
        if (error) {
          console.error("Error inserting data:", error);
          request.session.error = error;
          // Handle error appropriately
        } else {
          console.log("Data inserted successfully");
          // Handle successful insertion
          response.redirect("/page4");
        }
      });
    }
  });
});

router.post("/page4", function (request, response, next) {
  const id = request.session.user_id;
  console.log("page 4 added");
  const query = `INSERT INTO page4 (user_id, international_journal_papers, national_journal_papers, international_conference_papers, national_conference_papers, patents, books, book_chapters, publications, list_of_patents, list_of_books, list_of_book_chapters, google_scholar_link) 
  VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`;

  const formData = [
    id,
    request.body.international_journal_papers,
    request.body.national_journal_papers,
    request.body.international_conference_papers,
    request.body.national_conference_papers,
    request.body.patents,
    request.body.books,
    request.body.book_chapters,
    JSON.stringify(request.body.publications),
    JSON.stringify(request.body.list_of_patents),
    JSON.stringify(request.body.list_of_books),
    JSON.stringify(request.body.list_of_book_chapters),
    request.body.google_scholar_link,
  ];

  const selectQuery = `SELECT * FROM page4 WHERE user_id = ?`;

  database.query(selectQuery, id, function (error, data) {
    if (error) {
      console.error("Error selecting data:", error);
      request.session.error = error;
      // Handle error appropriately
    } else {
      if (data.length > 0) {
        const deleteQuery = `DELETE FROM page4 WHERE user_id = ?`;
        database.query(deleteQuery, id, function (error, result) {
          if (error) {
            console.error("Error deleting data:", error);
            request.session.error = error;
            // Handle error appropriately
          } else {
            console.log("Data deleted successfully");
          }
        });
      }

      database.query(query, formData, function (error, result) {
        if (error) {
          console.error("Error inserting data:", error);
          request.session.error = error;
          // Handle error appropriately
        } else {
          console.log("Data inserted successfully");
          // Handle successful insertion
          response.redirect("/page5");
        }
      });
    }
  });
});

router.post("/page5", function (request, response, next) {
  const id = request.session.user_id;
  const query = `INSERT INTO page5 (user_id, professional_societies, professional_training, awards, sponsered_projects, consultancy_projects, page5col) 
  VALUES (?, ?, ?, ?, ?, ?, ?)`;

  const formData = [
    id,
    JSON.stringify(request.body.professional_societies),
    JSON.stringify(request.body.professional_training),
    JSON.stringify(request.body.awards),
    JSON.stringify(request.body.sponsered_projects),
    JSON.stringify(request.body.consultancy_projects),
    request.body.page5col,
  ];

  const selectQuery = `SELECT * FROM page5 WHERE user_id = ?`;

  database.query(selectQuery, id, function (error, data) {
    if (error) {
      console.error("Error selecting data:", error);
      request.session.error = error;
      // Handle error appropriately
    } else {
      if (data.length > 0) {
        const deleteQuery = `DELETE FROM page5 WHERE user_id = ?`;
        database.query(deleteQuery, id, function (error, result) {
          if (error) {
            console.error("Error deleting data:", error);
            request.session.error = error;
            // Handle error appropriately
          } else {
            console.log("Data deleted successfully");
          }
        });
      }

      database.query(query, formData, function (error, result) {
        if (error) {
          console.error("Error inserting data:", error);
          request.session.error = error;
          // Handle error appropriately
        } else {
          console.log("Data inserted successfully");
          // Handle successful insertion
          response.redirect("/page6");
        }
      });
    }
  });
});

router.post("/page6", function (request, response, next) {
  const id = request.session.user_id;
  const query = `INSERT INTO page6 (user_id, PhD_supervision, MTech_supervision, BTech_supervision, page6col) 
  VALUES (?, ?, ?, ?, ?)`;

  const formData = [
    id,
    JSON.stringify(request.body.PhD_supervision),
    JSON.stringify(request.body.MTech_supervision),
    JSON.stringify(request.body.BTech_supervision),
    request.body.page6col,
  ];

  const selectQuery = `SELECT * FROM page6 WHERE user_id = ?`;

  database.query(selectQuery, id, function (error, data) {
    if (error) {
      console.error("Error selecting data:", error);
      request.session.error = error;
      // Handle error appropriately
    } else {
      if (data.length > 0) {
        const deleteQuery = `DELETE FROM page6 WHERE user_id = ?`;
        database.query(deleteQuery, id, function (error, result) {
          if (error) {
            console.error("Error deleting data:", error);
            request.session.error = error;
            // Handle error appropriately
          } else {
            console.log("Data deleted successfully");
          }
        });
      }

      database.query(query, formData, function (error, result) {
        if (error) {
          console.error("Error inserting data:", error);
          request.session.error = error;
          // Handle error appropriately
        } else {
          console.log("Data inserted successfully");
          // Handle successful insertion
          response.redirect("/page7");
        }
      });
    }
  });
});

router.post("/page7", function (request, response, next) {
  const id = request.session.user_id;
  console.log(request.body);
  const query = `INSERT INTO page7 (user_id, research_contribution, teaching_contributuion, relavent_information, professional_service, journal_publications, conference_publications, new_tablecol) 
  VALUES (?, ?, ?, ?, ?, ?, ?, ?)`;

  const formData = [
    id,
    request.body.research_contribution,
    request.body.teaching_contributuion,
    request.body.relavent_information,
    request.body.professional_service,
    request.body.journal_publications,
    request.body.conference_publications,
    request.body.new_tablecol,
  ];

  const selectQuery = `SELECT * FROM page7 WHERE user_id = ?`;

  database.query(selectQuery, id, function (error, data) {
    if (error) {
      console.error("Error selecting data:", error);
      request.session.error = error;
      // Handle error appropriately
    } else {
      if (data.length > 0) {
        const deleteQuery = `DELETE FROM page7 WHERE user_id = ?`;
        database.query(deleteQuery, id, function (error, result) {
          if (error) {
            console.error("Error deleting data:", error);
            request.session.error = error;
            // Handle error appropriately
          } else {
            console.log("Data deleted successfully");
          }
        });
      }

      database.query(query, formData, function (error, result) {
        if (error) {
          console.error("Error inserting data:", error);
          request.session.error = error;
          // Handle error appropriately
        } else {
          console.log("Data inserted successfully");
          // Handle successful insertion
          response.redirect("/page8");
        }
      });
    }
  });
});

router.post("/page8", function (request, response, next) {
  const id = request.session.user_id;
  const query = `INSERT INTO page8 (user_id, research_papers, phd_certificate, pg_marksheet, ug_marksheet, diploma_12th_marksheet, diploma_10th_marksheet, pay_slip, NOC, post_phd_experience, relavent_document, signature, referees) 
  VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`;

  const formData = [
    id,
    request.body.research_papers,
    request.body.phd_certificate,
    request.body.pg_marksheet,
    request.body.ug_marksheet,
    request.body.diploma_12th_marksheet,
    request.body.diploma_10th_marksheet,
    request.body.pay_slip,
    request.body.NOC,
    request.body.post_phd_experience,
    request.body.relavent_document,
    request.body.signature,
    JSON.stringify(request.body.referees),
  ];

  const selectQuery = `SELECT * FROM page8 WHERE user_id = ?`;

  database.query(selectQuery, id, function (error, data) {
    if (error) {
      console.error("Error selecting data:", error);
      request.session.error = error;
      // Handle error appropriately
    } else {
      if (data.length > 0) {
        const deleteQuery = `DELETE FROM page8 WHERE user_id = ?`;
        database.query(deleteQuery, id, function (error, result) {
          if (error) {
            console.error("Error deleting data:", error);
            request.session.error = error;
            // Handle error appropriately
          } else {
            console.log("Data deleted successfully");
          }
        });
      }

      database.query(query, formData, function (error, result) {
        if (error) {
          console.error("Error inserting data:", error);
          request.session.error = error;
          // Handle error appropriately
        } else {
          console.log("Data inserted successfully");
          // Handle successful insertion
          response.redirect("/declaration");
        }
      });
    }
  });
});

router.post("/declaration", function (request, response, next) {
  const id = request.session.user_id;

  // Create a new jsPDF instance
  const pdf = new jsPDF();

  // Fetch data from all the required tables
  const tables = [
    "page1",
    "page2",
    "page3",
    "page4",
    "page5",
    "page6",
    "page7",
    "page8",
  ];
  const promises = tables.map((table) => {
    return new Promise((resolve, reject) => {
      const query = `SELECT * FROM ${table} WHERE user_id = ?`;
      database.query(query, id, function (error, data) {
        if (error) {
          console.error(`Error fetching data from ${table}:`, error);
          reject(error);
        } else {
          resolve({ table, data });
        }
      });
    });
  });

  // Wait for all promises to resolve
  Promise.all(promises)
    .then((results) => {
      // Add data from each table to a new page
      results.forEach((result, index) => {
        const { table, data } = result;
        if (index !== 0) {
          pdf.addPage(); // Add a new page for each table except the first one
        }
        pdf.text(`Table ${index + 1} (${table}) Data:`, 10, 10);
        let yOffset = 20;
        // Format and append data to pdf
        data.forEach((row) => {
          Object.entries(row).forEach(([key, value]) => {
            const text = `${key}: ${value}`;
            pdf.text(text, 10, yOffset);
            yOffset += 7; // Adjust line spacing
          });
          yOffset += 5; // Add extra space between rows
        });
      });

      // Save or download the PDF
      pdf.save("combined_data.pdf");

      // Redirect or send the PDF as a response
      response.redirect("/");
    })
    .catch((error) => {
      // Handle error appropriately
      console.error("Error fetching data:", error);
      // Redirect or send an error response
      response.status(500).send("Internal Server Error");
    });
});

router.post("/confir_page", function (request, response, next) {
  console.log(request.body);

  response.redirect("/login");
});
router.get("/logout", function (request, response, next) {
  request.session.destroy();
  response.redirect("/");
});

module.exports = router;
