package it.against.corruption.in.ua



import org.junit.*
import grails.test.mixin.*

@TestFor(CorruptionIncidentController)
@Mock(CorruptionIncident)
class CorruptionIncidentControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/corruptionIncident/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.corruptionIncidentInstanceList.size() == 0
        assert model.corruptionIncidentInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.corruptionIncidentInstance != null
    }

    void testSave() {
        controller.save()

        assert model.corruptionIncidentInstance != null
        assert view == '/corruptionIncident/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/corruptionIncident/show/1'
        assert controller.flash.message != null
        assert CorruptionIncident.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/corruptionIncident/list'

        populateValidParams(params)
        def corruptionIncident = new CorruptionIncident(params)

        assert corruptionIncident.save() != null

        params.id = corruptionIncident.id

        def model = controller.show()

        assert model.corruptionIncidentInstance == corruptionIncident
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/corruptionIncident/list'

        populateValidParams(params)
        def corruptionIncident = new CorruptionIncident(params)

        assert corruptionIncident.save() != null

        params.id = corruptionIncident.id

        def model = controller.edit()

        assert model.corruptionIncidentInstance == corruptionIncident
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/corruptionIncident/list'

        response.reset()

        populateValidParams(params)
        def corruptionIncident = new CorruptionIncident(params)

        assert corruptionIncident.save() != null

        // test invalid parameters in update
        params.id = corruptionIncident.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/corruptionIncident/edit"
        assert model.corruptionIncidentInstance != null

        corruptionIncident.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/corruptionIncident/show/$corruptionIncident.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        corruptionIncident.clearErrors()

        populateValidParams(params)
        params.id = corruptionIncident.id
        params.version = -1
        controller.update()

        assert view == "/corruptionIncident/edit"
        assert model.corruptionIncidentInstance != null
        assert model.corruptionIncidentInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/corruptionIncident/list'

        response.reset()

        populateValidParams(params)
        def corruptionIncident = new CorruptionIncident(params)

        assert corruptionIncident.save() != null
        assert CorruptionIncident.count() == 1

        params.id = corruptionIncident.id

        controller.delete()

        assert CorruptionIncident.count() == 0
        assert CorruptionIncident.get(corruptionIncident.id) == null
        assert response.redirectedUrl == '/corruptionIncident/list'
    }
}
