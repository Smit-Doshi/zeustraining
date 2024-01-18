// Body Card logic 
const cardContainer = document.getElementById('body__card');

fetch('./data.json')
    .then((res) => res.json())
    .then((data) => {

        data.forEach(card => {

            const markup = `<div class="card">
                    ${card.subjectExpired ? `<p class="card__expired">Expired</p>` : ''}
                    ${card.isFavourite ? ` <img src="/images/favourite.svg" alt="favourite logo" class="card__favourite">` : ''}
                   
                    <div class="card__body">
                        <img src="/images/${card.image}" alt="card image">
                        <div class="card__content">
                            <h3 class="card__title">${card.courseName}</h3>
                            <p class="card__subtitle-one">${card.subjectName} | Grade ${card.subjectGrade} <span class="increment">+${card.subjectIncrement}</span></p>
                            <p class="card__subtitle-two"><b>${card.subjectUnits}</b>Units <b>${card.subjectLessons}</b>Lessons <b>${card.subjectTopics}</b>Topics</p>

                            <select name="selector" id="selector">
                            ${card.subjectTeacher.map((teacher) => {
                return (
                    `<option>${teacher}</option>`
                )
            })}
                            </select>

                            <p class="other_details">${card.NoOfStudent} ${card.CourseDuration}</p>
                        </div>
                    </div>
                    <hr>
                    <div class="card__footer">
                        <img src="/images/preview.svg" alt="Preview logo" class="${card.subjectPreview ? "" : "disabled__logo"}">
                        <img src="/images/manage_course.svg" alt="Reports logo" class="${card.subjectReports ? "" : "disabled__logo"}">
                        <img src="/images/grade_submissions.svg" alt="Grade Submission logo" class="${card.subjectSubmission ? "" : "disabled__logo"}">
                        <img src="/images/reports.svg" alt="Manage Course logo" class="${card.subjectManage ? "" : "disabled__logo"}">
                    </div>
                </div>`
            cardContainer.insertAdjacentHTML('beforeend', markup);
        });
    });


const announcementContainer = document.getElementById('announcements_notification');

fetch('./announcement.json')
    .then((res) => res.json())
    .then((notifications) => {

        notifications.forEach(notification => {

            const markup = `<li>
                <div>
                    <div class="notification_header">
                        <p>PA: ${notification.name}</p>
                        ${notification.isSeen ? `<i class="ri-indeterminate-circle-line"></i>` : `<i class="ri-checkbox-circle-fill"></i>`}
                    </div>
                    <div class="notification_body">
                        <p>${notification.message}</p>
                    </div>
                    <div class="notification_footer">
                        <p><span><i class="ri-attachment-line"></i></span>${notification.attachments}</p>
                        <p>${notification.time}</p>
                    </div>
                </div>
            </li>
            <hr class="notification_line">`

            announcementContainer.insertAdjacentHTML('beforeend', markup);
        });
    })




const alertContainer = document.getElementById('alert_notification');

fetch('./alert.json')
    .then((res) => res.json())
    .then((alerts) => {

        alerts.forEach(alert => {

            const markup = `<li>
                <div>
                    <div class="notification_header">
                        <p>${alert.message}</p>
                        ${alert.isSeen ? `<i class="ri-indeterminate-circle-line"></i>` : `<i class="ri-checkbox-circle-fill"></i>`}
                    </div>
                    <div class="notification_footer">
                        <p>${alert.attachments}</p>
                        <p>${alert.time}</p>
                    </div>
                </div>
            </li>
            <hr class="notification_line">`

            alertContainer.insertAdjacentHTML('beforeend', markup);
        });
    })
