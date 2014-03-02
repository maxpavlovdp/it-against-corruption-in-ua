package it.against.corruption.in.ua

import org.springframework.dao.DataIntegrityViolationException

class CorruptionIncidentController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [corruptionIncidentInstanceList: CorruptionIncident.list(params), corruptionIncidentInstanceTotal: CorruptionIncident.count()]
    }

    def create() {
        [corruptionIncidentInstance: new CorruptionIncident(params)]
    }

    def save() {
        def corruptionIncidentInstance = new CorruptionIncident(params)
        if (!corruptionIncidentInstance.save(flush: true)) {
            render(view: "create", model: [corruptionIncidentInstance: corruptionIncidentInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'corruptionIncident.label', default: 'CorruptionIncident'), corruptionIncidentInstance.id])
        redirect(action: "show", id: corruptionIncidentInstance.id)
    }

    def show(Long id) {
        def corruptionIncidentInstance = CorruptionIncident.get(id)
        if (!corruptionIncidentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'corruptionIncident.label', default: 'CorruptionIncident'), id])
            redirect(action: "list")
            return
        }

        [corruptionIncidentInstance: corruptionIncidentInstance]
    }

    def edit(Long id) {
        def corruptionIncidentInstance = CorruptionIncident.get(id)
        if (!corruptionIncidentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'corruptionIncident.label', default: 'CorruptionIncident'), id])
            redirect(action: "list")
            return
        }

        [corruptionIncidentInstance: corruptionIncidentInstance]
    }

    def update(Long id, Long version) {
        def corruptionIncidentInstance = CorruptionIncident.get(id)
        if (!corruptionIncidentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'corruptionIncident.label', default: 'CorruptionIncident'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (corruptionIncidentInstance.version > version) {
                corruptionIncidentInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'corruptionIncident.label', default: 'CorruptionIncident')] as Object[],
                          "Another user has updated this CorruptionIncident while you were editing")
                render(view: "edit", model: [corruptionIncidentInstance: corruptionIncidentInstance])
                return
            }
        }

        corruptionIncidentInstance.properties = params

        if (!corruptionIncidentInstance.save(flush: true)) {
            render(view: "edit", model: [corruptionIncidentInstance: corruptionIncidentInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'corruptionIncident.label', default: 'CorruptionIncident'), corruptionIncidentInstance.id])
        redirect(action: "show", id: corruptionIncidentInstance.id)
    }

    def delete(Long id) {
        def corruptionIncidentInstance = CorruptionIncident.get(id)
        if (!corruptionIncidentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'corruptionIncident.label', default: 'CorruptionIncident'), id])
            redirect(action: "list")
            return
        }

        try {
            corruptionIncidentInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'corruptionIncident.label', default: 'CorruptionIncident'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'corruptionIncident.label', default: 'CorruptionIncident'), id])
            redirect(action: "show", id: id)
        }
    }
}
