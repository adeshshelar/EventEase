package pojo;

public class Event {
	private int id;
	private String name;
	private String date;
	private String description;
	private String price;
	private String location;
	private String category;
	private String organizer;
	
	public Event() {
		
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public Event(int id, String name, String date, String description, String price, String location, String category,
			String organizer) {
		super();
		this.id = id;
		this.name = name;
		this.date = date;
		this.description = description;
		this.price = price;
		this.location = location;
		this.category = category;
		this.organizer = organizer;
	}
	
	@Override
	public String toString() {
		return "Event [id=" + id + ", name=" + name + ", date=" + date + ", description=" + description + ", price="
				+ price + ", location=" + location + ", category=" + category + ", organizer=" + organizer
				+ ", getId()=" + getId() + ", getName()=" + getName() + ", getDate()=" + getDate()
				+ ", getDescription()=" + getDescription() + ", getPrice()=" + getPrice() + ", getLocation()="
				+ getLocation() + ", getCategory()=" + getCategory() + ", getOrganizer()=" + getOrganizer()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}
	
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getOrganizer() {
		return organizer;
	}
	public void setOrganizer(String organizer) {
		this.organizer = organizer;
	}
}
