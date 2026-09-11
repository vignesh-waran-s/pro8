#!/usr/bin/env bats


@test "firewall_services.sh exists" {

    [ -f firewall_services.sh ]

}


@test "firewall_services.sh executable" {

    [ -x firewall_services.sh ]

}


@test "Uses firewall list command" {

    run grep "firewall-cmd --list-services" firewall_services.sh

    [ "$status" -eq 0 ]

}


@test "Adds HTTP service" {

    run grep "firewall-cmd --add-service=http" firewall_services.sh

    [ "$status" -eq 0 ]

}


@test "Adds HTTPS service" {

    run grep "firewall-cmd --add-service=https" firewall_services.sh

    [ "$status" -eq 0 ]

}


@test "Removes HTTP service" {

    run grep "firewall-cmd --remove-service=http" firewall_services.sh

    [ "$status" -eq 0 ]

}


@test "Adds SSH permanent service" {

    run grep "firewall-cmd --add-service=ssh --permanent" firewall_services.sh

    [ "$status" -eq 0 ]

}


@test "Reloads firewall" {

    run grep "firewall-cmd --reload" firewall_services.sh

    [ "$status" -eq 0 ]

}
