use "time"
actor Main
  new create(env: Env) =>
    let time_to_run_in_minutes: U64 = 20
    let run_until_millis =  Time.millis() + (time_to_run_in_minutes * 60 * 1000)

    let initial_spawn: U64 = 10

    Created(run_until_millis, initial_spawn)

actor Created
  new create(ttl: U64, spawn: U64) =>
    if Time.millis() > ttl then
      // Only spawn new actors if we aren't past the time to live

    end

primitive MessageSendConfig
  fun min(): U64 =>
    0

  fun max(): U64 =>
    10
