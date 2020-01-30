
package acme.features.worker.answer;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.entities.answers.Answer;
import acme.framework.repositories.AbstractRepository;

@Repository
public interface WorkerAnswerRepository extends AbstractRepository {

	@Query("select a from Answer a where a.id=?1")
	Answer findOneAnswerById(int id);

}
