using {com.logali as logali} from '../db/schema';

service CatalogService {
    entity Products as projection on logali.Products;
}
