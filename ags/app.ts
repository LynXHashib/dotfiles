#!/usr/bin/gjs -m
import { register } from "astal/gobject"
import { App, Astal } from "astal/gtk4"
import Template from "./Bar.blp"

const { TOP, LEFT, RIGHT } = Astal.WindowAnchor
const calendar = Widget.Calendar({
    showDayNames: true,
    showDetails: true,
    showHeading: true,
    showWeekNumbers: true,
    detail: (self, y, m, d) => {
        return `<span color="white">${y}. ${m}. ${d}.</span>`
    },
    onDaySelected: ({ date: [y, m, d] }) => {
        print(`${y}. ${m}. ${d}.`)
    },
})
@register({ GTypeName: "Bar", Template })
class Bar extends Astal.Window {
}

App.start({
    instanceName: "bar",
    main() {
        new Bar({
            application: App,
            anchor: TOP | LEFT | RIGHT,
            visible: true,
        })
        calendar
    }
    })