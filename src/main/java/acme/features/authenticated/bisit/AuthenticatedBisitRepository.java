
package acme.features.authenticated.bisit;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.entities.bisits.Bisit;
import acme.framework.repositories.AbstractRepository;

@Repository
public interface AuthenticatedBisitRepository extends AbstractRepository {

	@Query("select b from Bisit b where b.id=?1")
	Bisit findOneBisitById(int id);

}
