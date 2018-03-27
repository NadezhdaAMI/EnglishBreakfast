package app.dao;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Objects;

@Entity
@Table(name = "phrases", schema = "myengapp", catalog = "")
public class PhrasesEntity implements Serializable {
    private int idphrases;
    private String rus;
    private String eng;

    @Id
    @Column(name = "idphrases", nullable = false)
    public int getIdphrases() {
        return idphrases;
    }

    public void setIdphrases(int idphrases) {
        this.idphrases = idphrases;
    }

    @Basic
    @Column(name = "rus", nullable = false, length = 1024)
    public String getRus() {
        return rus;
    }

    public void setRus(String rus) {
        this.rus = rus;
    }

    @Basic
    @Column(name = "eng", nullable = false, length = 1024)
    public String getEng() {
        return eng;
    }

    public void setEng(String eng) {
        this.eng = eng;
    }

    @Override
    public String toString() {
        return "" + rus + '\'' +
                "" + eng + '\'';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        PhrasesEntity that = (PhrasesEntity) o;
        return idphrases == that.idphrases &&
                Objects.equals(rus, that.rus) &&
                Objects.equals(eng, that.eng);
    }

    @Override
    public int hashCode() {

        return Objects.hash(idphrases, rus, eng);
    }


}
