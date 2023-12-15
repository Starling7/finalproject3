import streamlit as st
from sqlalchemy import text

list_tribune = ['', 'Economy', 'Regular', 'VIP', 'VVIP']
list_gender = ['', 'male', 'female']
list_match = ['', 'Indonesia vs Argentina', 'Indonesia vs Thailand', 'Indonesia vs Malaysia']
list_stadium = ['', 'Jakarta International Stadium', 'Jatidiri Stadium', 'Maguwoharjo Stadium']
list_price = ['', '150000', '250000', '350000', '500000']

conn = st.create_connection("postgresql://radityacr740:o8KrhDcWj4wN@ep-super-smoke-81752083.us-east-2.aws.neon.tech/fpmbddb")
query_create_table = text('CREATE TABLE IF NOT EXISTS TICKETS (id serial, tribune_name varchar, supporter_name varchar, gender char(25), \
                         stadium_name varchar, ticket_price varchar, match_name varchar, date_info date);')
conn.execute(query_create_table)

st.header('FOOTBALL TICKETS DATABASES')
page = st.sidebar.selectbox("Pilih Menu", ["View Data", "Edit Data"])

if page == "View Data":
    data = conn.execute('SELECT * FROM tickets ORDER By id;').fetchall()
    st.dataframe(data)

if page == "Edit Data":
    if st.button('Tambah Data'):
        tribune_name_baru = st.selectbox("tribune_name", list_tribune)
        supporter_name_baru = st.text_input("supporter_name")
        gender_baru = st.selectbox("gender", list_gender)
        stadium_name_baru = st.selectbox("stadium_name", list_stadium)
        ticket_price_baru = st.selectbox("ticket_price", list_price)
        match_name_baru = st.selectbox("match_name", list_match)
        date_info_baru = st.date_input("date_info")

        if st.button('Tambah'):
            query_insert = text('INSERT INTO tickets (tribune_name, supporter_name, gender, stadium_name, ticket_price, match_name, date_info) \
                                VALUES (:1, :2, :3, :4, :5, :6, :7);')
            conn.execute(query_insert, {'1': tribune_name_baru, '2': supporter_name_baru, '3': gender_baru, '4': str(stadium_name_baru),
                                        '5': ticket_price_baru, '6': match_name_baru, '7': date_info_baru})
if page == "Grafik":
    st.subheader("Grafik Data Tiket Pertandingan Sepatu")

    # Ambil data dari database
    data = conn.execute('SELECT * FROM tickets;').fetchall()
    df = pd.DataFrame(data, columns=['id', 'tribune_name', 'supporter_name', 'gender', 'stadium_name', 'ticket_price', 'match_name', 'date_info'])
  
    st.bar_chart(df['tribune_name'].value_counts())
    data = conn.execute('SELECT * FROM tickets ORDER By id;').fetchall()
    for result in data:
        id, tribune_name_lama, supporter_name_lama, gender_lama, stadium_name_lama, ticket_price_lama, match_name_lama, date_info_lama = result

        with st.expander(f'a.n. {supporter_name_lama}'):
            tribune_name_baru = st.selectbox("tribune_name", list_tribune, list_tribune.index(tribune_name_lama))
            supporter_name_baru = st.text_input("supporter_name", supporter_name_lama)
            gender_baru = st.selectbox("gender", list_gender, list_gender.index(gender_lama))
            stadium_name_baru = st.selectbox("stadium_name", list_stadium, list_stadium.index(stadium_name_lama))
            ticket_price_baru = st.selectbox("ticket_price", list_price, list_price.index(ticket_price_lama))
            match_name_baru = st.selectbox("match_name", list_match, list_match.index(match_name_lama) if match_name_lama in list_match else 0)
            date_info_baru = st.date_input("date_info", date_info_lama)

            if st.button('UPDATE'):
                query_update = text('UPDATE tickets \
                                     SET tribune_name=:1, supporter_name=:2, gender=:3, stadium_name=:4, \
                                     ticket_price=:5, match_name=:6, date_info=:7 \
                                     WHERE id=:8;')
                conn.execute(query_update, {'1': tribune_name_baru, '2': supporter_name_baru, '3': gender_baru, '4': str(stadium_name_baru),
                                            '5': ticket_price_baru, '6': match_name_baru, '7': date_info_baru, '8': id})
                st.experimental_rerun()

            if st.button('DELETE'):
                query_delete = text('DELETE FROM tickets WHERE id=:1;')
                conn.execute(query_delete, {'1': id})
                st.experimental_rerun()
