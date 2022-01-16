Smart Keyboard
========================================================
author: by Kamal Dobriyal
date: 09-01-2022
autosize: true

Quick Overview
========================================================

<strong>Smart Keyboard</strong> &nbsp; is &nbsp; a &nbsp; web &nbsp; app &nbsp; working &nbsp; on &nbsp; NLP &nbsp; n_grams &nbsp; models.

It's &nbsp; interface &nbsp; is &nbsp; very &nbsp; simple, &nbsp; there &nbsp; a &nbsp; sidebar &nbsp; which &nbsp; have &nbsp; all &nbsp; instructions &nbsp; for &nbsp; any &nbsp; new &nbsp; user.

The &nbsp; user &nbsp; just &nbsp; have &nbsp; to &nbsp; enter &nbsp; text &nbsp; on &nbsp; given &nbsp; text &nbsp; field &nbsp; and &nbsp; as &nbsp; soon &nbsp; as &nbsp; space &nbsp; is &nbsp; entered &nbsp; a &nbsp; call &nbsp; goes &nbsp; to &nbsp; backend &nbsp; with &nbsp; the &nbsp; entered &nbsp; text &nbsp; as &nbsp; input.

Eventually &nbsp; user &nbsp; sees &nbsp; atmost &nbsp; three &nbsp; words &nbsp; in &nbsp; green &nbsp; color &nbsp; which &nbsp; are &nbsp; predicted &nbsp; by &nbsp; the &nbsp; app.

Data Usage
========================================================

We &nbsp; have &nbsp; use &nbsp; US_News, &nbsp; Us_Blogs, &nbsp; and &nbsp; US_Twitter &nbsp; comments &nbsp; for &nbsp; generating &nbsp; corpus. &nbsp; Dataset &nbsp; Link: &nbsp; [Data](https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/Coursera-SwiftKey.zip)<br>
Then &nbsp; we &nbsp; have &nbsp; preprocessed &nbsp; all &nbsp; the &nbsp; data &nbsp; and &nbsp; combined &nbsp; it &nbsp; to &nbsp; form &nbsp; a &nbsp; single &nbsp; corpus.<br>
Library &nbsp; and &nbsp; techniques &nbsp; used:
- <strong>tokenizers</strong>
- <strong>tm</strong>

We &nbsp; removed &nbsp; all &nbsp; the &nbsp; punctuations &nbsp; except &nbsp; apostrophe &nbsp; sign &nbsp; as &nbsp; it &nbsp; was &nbsp; very &nbsp; prevalent, &nbsp; also &nbsp; removed &nbsp; the &nbsp; hash-tags &nbsp; because &nbsp; they &nbsp; were &nbsp; without &nbsp; space.


Backend & Predictive Model
========================================================

In &nbsp; the &nbsp; backend, &nbsp; we &nbsp; have &nbsp; already &nbsp; loaded &nbsp; three &nbsp; n_grams &nbsp; i.e., &nbsp; <strong>biGrams</strong>, &nbsp; <strong>triGrams</strong> &nbsp; and &nbsp; <strong>quadGrams</strong>.

When &nbsp; input &nbsp; comes &nbsp; in &nbsp; the &nbsp; backend &nbsp; it &nbsp; is &nbsp; first &nbsp; pre-processed, &nbsp; like &nbsp; removal &nbsp; of &nbsp; numerics, &nbsp; punctuation, &nbsp; hash-tags.

Then &nbsp; based &nbsp; on &nbsp; the &nbsp; tokens &nbsp; generated &nbsp; from &nbsp; the &nbsp; input &nbsp; text, &nbsp; subsequent &nbsp; n_grams &nbsp; dataset &nbsp; is &nbsp; being &nbsp; looked up.

And &nbsp; top &nbsp; three &nbsp; n_gram &nbsp; with &nbsp; highest &nbsp; probability &nbsp; is spit &nbsp; out &nbsp; by &nbsp; the &nbsp; repective &nbsp; n_gram &nbsp; function &nbsp; and &nbsp; passed to the UI.

App Link
========================================================

Hope &nbsp; you &nbsp; like &nbsp; the &nbsp; app &nbsp; overview &nbsp; if &nbsp; you &nbsp; are &nbsp; really &nbsp; interested &nbsp; please &nbsp; check &nbsp; out &nbsp; the &nbsp; app.

As &nbsp; the &nbsp; app &nbsp; is &nbsp; fully &nbsp; based &nbsp; on &nbsp; <strong>shiny</strong> &nbsp; framework &nbsp; eventually &nbsp; it &nbsp; is &nbsp; being &nbsp; deployed &nbsp; on &nbsp; shinyapp.io &nbsp; servers &nbsp; for &nbsp; free.

App &nbsp; link: &nbsp; [Smart Keyboard](https://kamaldobriyal.shinyapps.io/Smart-Keyboard/)

