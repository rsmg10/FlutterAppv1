class SelectionMenu<T>{
 final String Title;
  final T Value;
SelectionMenu(this.Title, this.Value);

}

enum SortBy {
  none,
  date,
  alphabetically,
  asceding,
  descending
}