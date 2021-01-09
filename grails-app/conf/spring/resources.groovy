import etsena.UserPasswordEncoderListener
// Place your Spring DSL code here
import etsena.CustomUserDetailsService
beans = {
    userPasswordEncoderListener(UserPasswordEncoderListener)
    userDetailsService(CustomUserDetailsService)

}
