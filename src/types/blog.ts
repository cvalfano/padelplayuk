export interface BlogPost {
  id: string;
  title: string;
  date: string;
  label: string;
  content: string;
  image?: string;
  excerpt: string;
  readingTime: string;
}