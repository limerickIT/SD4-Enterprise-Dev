/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package src.com.db;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author alan.ryan
 */
@Entity
@Table(name = "passengers")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Passengers.findAll", query = "SELECT p FROM Passengers p")
    , @NamedQuery(name = "Passengers.findByCode", query = "SELECT p FROM Passengers p WHERE p.code = :code")
    , @NamedQuery(name = "Passengers.findByQ1", query = "SELECT p FROM Passengers p WHERE p.q1 = :q1")
    , @NamedQuery(name = "Passengers.findByQ2", query = "SELECT p FROM Passengers p WHERE p.q2 = :q2")
    , @NamedQuery(name = "Passengers.findByQ3", query = "SELECT p FROM Passengers p WHERE p.q3 = :q3")
    , @NamedQuery(name = "Passengers.findByQ4", query = "SELECT p FROM Passengers p WHERE p.q4 = :q4")})
public class Passengers implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "Code")
    private String code;
    @Basic(optional = false)
    @Lob
    @Column(name = "City")
    private String city;
    @Basic(optional = false)
    @Lob
    @Column(name = "Airport")
    private String airport;
    @Basic(optional = false)
    @Column(name = "Q1")
    private int q1;
    @Basic(optional = false)
    @Column(name = "Q2")
    private int q2;
    @Basic(optional = false)
    @Column(name = "Q3")
    private int q3;
    @Basic(optional = false)
    @Column(name = "Q4")
    private int q4;

    public Passengers() {
    }

    public Passengers(String code) {
        this.code = code;
    }

    public Passengers(String code, String city, String airport, int q1, int q2, int q3, int q4) {
        this.code = code;
        this.city = city;
        this.airport = airport;
        this.q1 = q1;
        this.q2 = q2;
        this.q3 = q3;
        this.q4 = q4;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getAirport() {
        return airport;
    }

    public void setAirport(String airport) {
        this.airport = airport;
    }

    public int getQ1() {
        return q1;
    }

    public void setQ1(int q1) {
        this.q1 = q1;
    }

    public int getQ2() {
        return q2;
    }

    public void setQ2(int q2) {
        this.q2 = q2;
    }

    public int getQ3() {
        return q3;
    }

    public void setQ3(int q3) {
        this.q3 = q3;
    }

    public int getQ4() {
        return q4;
    }

    public void setQ4(int q4) {
        this.q4 = q4;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (code != null ? code.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Passengers)) {
            return false;
        }
        Passengers other = (Passengers) object;
        if ((this.code == null && other.code != null) || (this.code != null && !this.code.equals(other.code))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "src.com.db.Passengers[ code=" + code + " ]";
    }
    
}
