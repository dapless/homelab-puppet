class hl_physical_host {
  include hl_physical_host::packages
  include hl_physical_host::scripts
  include hl_physical_host::configs
  include hl_physical_host::services
}
