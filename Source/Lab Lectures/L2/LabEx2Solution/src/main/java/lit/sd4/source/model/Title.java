package lit.sd4.source.model;

/**
 *
 * @author Alan.Ryan
 */
public class Title {
    private String ISBN;
    private String title;
    private int editionNumber;
    private int yearPublished;
    private int publisherID;
    private double price;

    public Title(String ISBN, String title, int editionNumber, int yearPublished, int publisherID, double price) {
        this.ISBN = ISBN;
        this.title = title;
        this.editionNumber = editionNumber;
        this.yearPublished = yearPublished;
        this.publisherID = publisherID;
        this.price = price;
    }

    /**
     * @return the ISBN
     */
    public String getISBN() {
        return ISBN;
    }

    /**
     * @param ISBN the ISBN to set
     */
    public void setISBN(String ISBN) {
        this.ISBN = ISBN;
    }

    /**
     * @return the title
     */
    public String getTitle() {
        return title;
    }

    /**
     * @param title the title to set
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * @return the editionNumber
     */
    public int getEditionNumber() {
        return editionNumber;
    }

    /**
     * @param editionNumber the editionNumber to set
     */
    public void setEditionNumber(int editionNumber) {
        this.editionNumber = editionNumber;
    }

    /**
     * @return the yearPublished
     */
    public int getYearPublished() {
        return yearPublished;
    }

    /**
     * @param yearPublished the yearPublished to set
     */
    public void setYearPublished(int yearPublished) {
        this.yearPublished = yearPublished;
    }

    /**
     * @return the publisherID
     */
    public int getPublisherID() {
        return publisherID;
    }

    /**
     * @param publisherID the publisherID to set
     */
    public void setPublisherID(int publisherID) {
        this.publisherID = publisherID;
    }

    /**
     * @return the price
     */
    public double getPrice() {
        return price;
    }

    /**
     * @param price the price to set
     */
    public void setPrice(double price) {
        this.price = price;
    }
     
}
